import 'package:directus_core/src/modules/relations/directus_relation.dart';
import 'package:test/test.dart';

void main() {
  group('DirectusRelation', () {
    test('should create from minimal JSON', () {
      final relation = DirectusRelation.fromJson({'id': 1});
      expect(relation, isA<DirectusRelation>());
      expect(relation.id, 1);
      final relationMap = relation.toJson();
      expect(relationMap, isMap);
    });

    test('should create from real Directus API data', () {
      final json = {
        "collection": "directus_settings",
        "field": "public_registration_role",
        "related_collection": "directus_roles",
        "schema": {
          "constraint_name": "directus_settings_public_registration_role_foreign",
          "table": "directus_settings",
          "column": "public_registration_role",
          "foreign_key_schema": "public",
          "foreign_key_table": "directus_roles",
          "foreign_key_column": "id",
          "on_update": "NO ACTION",
          "on_delete": "SET NULL"
        },
        "meta": {
          "many_collection": "directus_settings",
          "many_field": "public_registration_role",
          "one_collection": "directus_roles",
          "one_field": null,
          "one_allowed_collections": null,
          "one_collection_field": null,
          "one_deselect_action": "nullify",
          "junction_field": null,
          "sort_field": null,
          "system": true
        }
      };

      final relation = DirectusRelation.fromJson(json);
      
      expect(relation.collection, 'directus_settings');
      expect(relation.field, 'public_registration_role');
      expect(relation.relatedCollection, 'directus_roles');
      expect(relation.schema, isA<DirectusRelationSchema>());
      expect(relation.schema?.table, 'directus_settings');
      expect(relation.schema?.column, 'public_registration_role');
      expect(relation.schema?.foreignKeySchema, 'public');
      expect(relation.schema?.foreignKeyTable, 'directus_roles');
      expect(relation.schema?.foreignKeyColumn, 'id');
      expect(relation.schema?.onUpdate, 'NO ACTION');
      expect(relation.schema?.onDelete, 'SET NULL');
      expect(relation.schema?.constraintName, 'directus_settings_public_registration_role_foreign');
      expect(relation.meta, isA<DirectusRelationMeta>());
      expect(relation.meta?.manyCollection, 'directus_settings');
      expect(relation.meta?.manyField, 'public_registration_role');
      expect(relation.meta?.oneCollection, 'directus_roles');
      expect(relation.meta?.oneField, null);
      expect(relation.meta?.oneAllowedCollections, null);
      expect(relation.meta?.oneCollectionField, null);
      expect(relation.meta?.oneDeselectAction, 'nullify');
      expect(relation.meta?.junctionField, null);
      expect(relation.meta?.sortField, null);
      expect(relation.meta?.system, true);
    });

    test('should create from API data with meta.id field', () {
      final json = {
        "collection": "Steam_Account",
        "field": "sda_file",
        "related_collection": "directus_files",
        "schema": {
          "constraint_name": "steam_account_sda_file_foreign",
          "table": "Steam_Account",
          "column": "sda_file",
          "foreign_key_schema": "public",
          "foreign_key_table": "directus_files",
          "foreign_key_column": "id",
          "on_update": "NO ACTION",
          "on_delete": "SET NULL"
        },
        "meta": {
          "id": 2,
          "many_collection": "Steam_Account",
          "many_field": "sda_file",
          "one_collection": "directus_files",
          "one_field": null,
          "one_collection_field": null,
          "one_allowed_collections": null,
          "junction_field": null,
          "sort_field": null,
          "one_deselect_action": "nullify"
        }
      };

      final relation = DirectusRelation.fromJson(json);
      
      expect(relation.collection, 'Steam_Account');
      expect(relation.field, 'sda_file');
      expect(relation.relatedCollection, 'directus_files');
      expect(relation.meta?.id, 2);
      expect(relation.meta?.manyCollection, 'Steam_Account');
      expect(relation.meta?.manyField, 'sda_file');
      expect(relation.meta?.oneCollection, 'directus_files');
      expect(relation.meta?.system, null);
    });

    test('should handle null schema', () {
      final json = {
        "collection": "directus_comments",
        "field": "collection",
        "related_collection": "directus_collections",
        "schema": null,
        "meta": {
          "many_collection": "directus_comments",
          "many_field": "collection",
          "one_collection": "directus_collections",
          "one_field": null,
          "one_allowed_collections": null,
          "one_collection_field": null,
          "one_deselect_action": "nullify",
          "junction_field": null,
          "sort_field": null,
          "system": true
        }
      };

      final relation = DirectusRelation.fromJson(json);
      
      expect(relation.collection, 'directus_comments');
      expect(relation.field, 'collection');
      expect(relation.relatedCollection, 'directus_collections');
      expect(relation.schema, null);
      expect(relation.meta, isA<DirectusRelationMeta>());
      expect(relation.meta?.system, true);
    });

    test('should serialize to JSON correctly', () {
      final relation = DirectusRelation(
        id: 1,
        collection: 'Steam_Account',
        field: 'sda_file',
        relatedCollection: 'directus_files',
        manyCollection: 'Steam_Account',
        manyField: 'sda_file',
        oneCollection: 'directus_files',
        oneField: null,
        sortField: 'sort',
        oneDeselectAction: 'nullify',
      );

      final json = relation.toJson();
      
      expect(json['id'], 1);
      expect(json['collection'], 'Steam_Account');
      expect(json['field'], 'sda_file');
      expect(json['related_collection'], 'directus_files');
      expect(json['many_collection'], 'Steam_Account');
      expect(json['many_field'], 'sda_file');
      expect(json['one_collection'], 'directus_files');
      expect(json['sort_field'], 'sort');
      expect(json['one_deselect_action'], 'nullify');
    });
  });

  group('DirectusRelationSchema', () {
    test('should create from JSON', () {
      final json = {
        'constraint_name': 'directus_settings_public_registration_role_foreign',
        'table': 'directus_settings',
        'column': 'public_registration_role',
        'foreign_key_schema': 'public',
        'foreign_key_table': 'directus_roles',
        'foreign_key_column': 'id',
        'on_update': 'NO ACTION',
        'on_delete': 'SET NULL'
      };

      final schema = DirectusRelationSchema.fromJson(json);
      
      expect(schema.table, 'directus_settings');
      expect(schema.column, 'public_registration_role');
      expect(schema.foreignKeySchema, 'public');
      expect(schema.foreignKeyTable, 'directus_roles');
      expect(schema.foreignKeyColumn, 'id');
      expect(schema.onUpdate, 'NO ACTION');
      expect(schema.onDelete, 'SET NULL');
      expect(schema.constraintName, 'directus_settings_public_registration_role_foreign');
    });

    test('should serialize to JSON correctly', () {
      final schema = DirectusRelationSchema(
        table: 'directus_settings',
        column: 'public_registration_role',
        foreignKeySchema: 'public',
        foreignKeyTable: 'directus_roles',
        foreignKeyColumn: 'id',
        onUpdate: 'NO ACTION',
        onDelete: 'SET NULL',
        constraintName: 'directus_settings_public_registration_role_foreign',
      );

      final json = schema.toJson();
      
      expect(json['table'], 'directus_settings');
      expect(json['column'], 'public_registration_role');
      expect(json['foreign_key_schema'], 'public');
      expect(json['foreign_key_table'], 'directus_roles');
      expect(json['foreign_key_column'], 'id');
      expect(json['on_update'], 'NO ACTION');
      expect(json['on_delete'], 'SET NULL');
      expect(json['constraint_name'], 'directus_settings_public_registration_role_foreign');
    });
  });

  group('DirectusRelationMeta', () {
    test('should create from JSON with id', () {
      final json = {
        'id': 2,
        'many_collection': 'Steam_Account',
        'many_field': 'sda_file',
        'one_collection': 'directus_files',
        'one_field': null,
        'one_collection_field': null,
        'one_allowed_collections': null,
        'junction_field': null,
        'sort_field': null,
        'one_deselect_action': 'nullify'
      };

      final meta = DirectusRelationMeta.fromJson(json);
      
      expect(meta.id, 2);
      expect(meta.manyCollection, 'Steam_Account');
      expect(meta.manyField, 'sda_file');
      expect(meta.oneCollection, 'directus_files');
      expect(meta.oneField, null);
      expect(meta.oneAllowedCollections, null);
      expect(meta.oneCollectionField, null);
      expect(meta.oneDeselectAction, 'nullify');
      expect(meta.junctionField, null);
      expect(meta.sortField, null);
      expect(meta.system, null);
    });

    test('should serialize to JSON correctly', () {
      final meta = DirectusRelationMeta(
        id: 2,
        manyCollection: 'Steam_Account',
        manyField: 'sda_file',
        oneCollection: 'directus_files',
        oneField: null,
        oneAllowedCollections: null,
        oneCollectionField: null,
        oneDeselectAction: 'nullify',
        junctionField: null,
        sortField: null,
        system: null,
      );

      final json = meta.toJson();
      
      expect(json['id'], 2);
      expect(json['many_collection'], 'Steam_Account');
      expect(json['many_field'], 'sda_file');
      expect(json['one_collection'], 'directus_files');
      expect(json['one_deselect_action'], 'nullify');
    });
  });
}
