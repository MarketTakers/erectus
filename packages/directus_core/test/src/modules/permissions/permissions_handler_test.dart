import 'package:directus_core/src/data_classes/data_classes.dart';
import 'package:directus_core/src/modules/items/items_handler.dart';
import 'package:directus_core/src/modules/permissions/permissions_handler.dart';
import 'package:directus_core/src/modules/permissions/user_permissions.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../../mock/mock_dio_response.dart';
import '../../mock/mocks.mocks.dart';

void main() {
  group('PermissionsHandler', () {
    late MockDio client;
    late PermissionsHandler permissions;
    late Map<String, dynamic> examplePermissions;

    setUp(() {
      client = MockDio();
      permissions = PermissionsHandler(client: client);
      examplePermissions = {
        'data': {
          'directus_users': {
            'create': {'access': 'full', 'fields': ['*']},
            'read': {'access': 'partial', 'fields': ['id', 'email']},
            'update': {'access': 'none', 'fields': []},
            'delete': {'access': 'full', 'fields': ['*']},
            'share': {'access': 'partial', 'fields': ['id']},
          },
          'articles': {
            'create': {'access': 'full', 'fields': ['*']},
            'read': {'access': 'full', 'fields': ['*']},
            'update': {'access': 'full', 'fields': ['*']},
            'delete': {'access': 'none', 'fields': []},
            'share': {'access': 'partial', 'fields': ['title', 'content']},
          }
        }
      };
    });

    test('that PermissionsHandler extends ItemsHandler.', () async {
      expect(permissions, isA<ItemsHandler>());
    });

    test('getCurrentUserPermissions works properly', () async {
      when(client.get(any)).thenAnswer(dioResponse(examplePermissions));

      final response = await permissions.getCurrentUserPermissions();

      expect(response, isA<DirectusResponse<UserPermissions>>());
      expect(response.data, isA<UserPermissions>());
      verify(client.get('permissions/me')).called(1);
    });

    test('UserPermissions data structure works correctly', () async {
      when(client.get(any)).thenAnswer(dioResponse(examplePermissions));

      final response = await permissions.getCurrentUserPermissions();
      final userPerms = response.data;

      expect(userPerms.collections, contains('directus_users'));
      expect(userPerms.collections, contains('articles'));

      final directusUsersPerms = userPerms.getCollectionPermissions('directus_users');
      expect(directusUsersPerms, isNotNull);
      expect(directusUsersPerms!.create!.access, PermissionAccess.full);
      expect(directusUsersPerms.read!.access, PermissionAccess.partial);
      expect(directusUsersPerms.update!.access, PermissionAccess.none);

      expect(userPerms.hasAccess('articles', PermissionAction.create), true);
      expect(userPerms.hasAccess('articles', PermissionAction.delete), false);
      expect(userPerms.hasAccess('directus_users', PermissionAction.create, PermissionAccess.full), true);
      expect(userPerms.hasAccess('directus_users', PermissionAction.read, PermissionAccess.full), false);
      expect(userPerms.hasAccess('directus_users', PermissionAction.read, PermissionAccess.partial), true);
    });
  });
}
