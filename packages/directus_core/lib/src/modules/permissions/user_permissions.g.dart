// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_permissions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActionPermission _$ActionPermissionFromJson(Map<String, dynamic> json) =>
    ActionPermission(
      access: $enumDecode(_$PermissionAccessEnumMap, json['access']),
      fields: (json['fields'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ActionPermissionToJson(ActionPermission instance) =>
    <String, dynamic>{
      'access': _$PermissionAccessEnumMap[instance.access]!,
      'fields': instance.fields,
    };

const _$PermissionAccessEnumMap = {
  PermissionAccess.none: 'none',
  PermissionAccess.partial: 'partial',
  PermissionAccess.full: 'full',
};

CollectionPermissions _$CollectionPermissionsFromJson(
  Map<String, dynamic> json,
) => CollectionPermissions(
  create: json['create'] == null
      ? null
      : ActionPermission.fromJson(json['create'] as Map<String, dynamic>),
  read: json['read'] == null
      ? null
      : ActionPermission.fromJson(json['read'] as Map<String, dynamic>),
  update: json['update'] == null
      ? null
      : ActionPermission.fromJson(json['update'] as Map<String, dynamic>),
  delete: json['delete'] == null
      ? null
      : ActionPermission.fromJson(json['delete'] as Map<String, dynamic>),
  share: json['share'] == null
      ? null
      : ActionPermission.fromJson(json['share'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CollectionPermissionsToJson(
  CollectionPermissions instance,
) => <String, dynamic>{
  'create': ?instance.create,
  'read': ?instance.read,
  'update': ?instance.update,
  'delete': ?instance.delete,
  'share': ?instance.share,
};

UserPermissions _$UserPermissionsFromJson(Map<String, dynamic> json) =>
    UserPermissions(
      data: (json['data'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          k,
          CollectionPermissions.fromJson(e as Map<String, dynamic>),
        ),
      ),
    );

Map<String, dynamic> _$UserPermissionsToJson(UserPermissions instance) =>
    <String, dynamic>{'data': instance.data};
