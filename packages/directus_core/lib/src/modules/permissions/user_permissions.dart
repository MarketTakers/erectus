import 'package:json_annotation/json_annotation.dart';

part 'user_permissions.g.dart';

/// Enum for permission access levels
enum PermissionAccess {
  @JsonValue('none')
  none,
  @JsonValue('partial')
  partial,
  @JsonValue('full')
  full,
}

/// Enum for permission actions
enum PermissionAction {
  @JsonValue('create')
  create,
  @JsonValue('read')
  read,
  @JsonValue('update')
  update,
  @JsonValue('delete')
  delete,
  @JsonValue('share')
  share,
}

/// Represents a specific permission for an action
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class ActionPermission {
  final PermissionAccess access;
  final List<String> fields;

  ActionPermission({
    required this.access,
    required this.fields,
  });

  factory ActionPermission.fromJson(Map<String, dynamic> json) =>
      _$ActionPermissionFromJson(json);

  Map<String, dynamic> toJson() => _$ActionPermissionToJson(this);
}

/// Represents permissions for a collection
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class CollectionPermissions {
  final ActionPermission? create;
  final ActionPermission? read;
  final ActionPermission? update;
  final ActionPermission? delete;
  final ActionPermission? share;

  CollectionPermissions({
    this.create,
    this.read,
    this.update,
    this.delete,
    this.share,
  });

  factory CollectionPermissions.fromJson(Map<String, dynamic> json) =>
      _$CollectionPermissionsFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionPermissionsToJson(this);

  /// Get permission for a specific action
  ActionPermission? getPermissionForAction(PermissionAction action) {
    switch (action) {
      case PermissionAction.create:
        return create;
      case PermissionAction.read:
        return read;
      case PermissionAction.update:
        return update;
      case PermissionAction.delete:
        return delete;
      case PermissionAction.share:
        return share;
    }
  }
}

/// Represents the complete user permissions response
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class UserPermissions {
  final Map<String, CollectionPermissions> data;

  UserPermissions({required this.data});

  factory UserPermissions.fromJson(Map<String, dynamic> json) =>
      _$UserPermissionsFromJson(json);

  Map<String, dynamic> toJson() => _$UserPermissionsToJson(this);

  /// Get permissions for a specific collection
  CollectionPermissions? getCollectionPermissions(String collection) {
    return data[collection];
  }

  /// Get all collections this user has any permissions for
  List<String> get collections => data.keys.toList();

  /// Check if user has specific access to a collection and action
  bool hasAccess(String collection, PermissionAction action, [PermissionAccess? requiredAccess]) {
    final collectionPerms = getCollectionPermissions(collection);
    if (collectionPerms == null) return false;

    final actionPerm = collectionPerms.getPermissionForAction(action);
    if (actionPerm == null) return false;

    if (requiredAccess == null) {
      return actionPerm.access != PermissionAccess.none;
    }

    switch (requiredAccess) {
      case PermissionAccess.none:
        return true;
      case PermissionAccess.partial:
        return actionPerm.access == PermissionAccess.partial || 
               actionPerm.access == PermissionAccess.full;
      case PermissionAccess.full:
        return actionPerm.access == PermissionAccess.full;
    }
  }
}