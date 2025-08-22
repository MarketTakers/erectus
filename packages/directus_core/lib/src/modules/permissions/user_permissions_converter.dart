import 'package:directus_core/src/modules/items/items_converter.dart';
import 'user_permissions.dart';

class UserPermissionsConverter extends ItemsConverter<UserPermissions> {
  @override
  UserPermissions fromJson(Map<String, dynamic> json) {
    // The DirectusResponse.fromRequest already extracts the 'data' field,
    // so we need to wrap it back for our UserPermissions structure
    return UserPermissions.fromJson({'data': json});
  }

  @override
  Map<String, dynamic> toJson(UserPermissions item) {
    final json = item.toJson();
    // Return just the data part, not the wrapper
    return json['data'] as Map<String, dynamic>;
  }
}