import 'package:dio/dio.dart';
import 'package:directus_core/src/data_classes/data_classes.dart';
import 'package:directus_core/src/modules/items/items_handler.dart';
import 'package:directus_core/src/modules/permissions/premission_converter.dart';

import 'directus_permission.dart';
import 'user_permissions.dart';
import 'user_permissions_converter.dart';

class PermissionsHandler extends ItemsHandler<DirectusPermission> {
  PermissionsHandler({required Dio client})
      : super(
          'directus_permissions',
          client: client,
          converter: PermissionConverter(),
        );

  /// Get current user's permissions across all collections
  ///
  /// Returns a comprehensive overview of the authenticated user's access rights
  /// across all collections in the Directus instance, including access levels
  /// (none, partial, full) and available fields for each action (create, read, update, delete, share).
  Future<DirectusResponse<UserPermissions>> getCurrentUserPermissions() async {
    return DirectusResponse.fromRequest<UserPermissions>(
      () => client.get('permissions/me'),
      converter: UserPermissionsConverter(),
    );
  }
}
