// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directus_relation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectusRelation _$DirectusRelationFromJson(Map<String, dynamic> json) =>
    DirectusRelation(
      id: (json['id'] as num?)?.toInt(),
      collection: json['collection'] as String?,
      field: json['field'] as String?,
      relatedCollection: json['related_collection'] as String?,
      manyCollection: json['many_collection'] as String?,
      manyField: json['many_field'] as String?,
      oneCollection: json['one_collection'] as String?,
      oneField: json['one_field'] as String?,
      oneCollectionField: json['one_collection_field'] as String?,
      oneAllowedCollections: (json['one_allowed_collections'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      junctionField: json['junction_field'] as String?,
      sortField: json['sort_field'] as String?,
      oneDeselectAction: json['one_deselect_action'] as String?,
      schema: json['schema'] == null
          ? null
          : DirectusRelationSchema.fromJson(
              json['schema'] as Map<String, dynamic>,
            ),
      meta: json['meta'] == null
          ? null
          : DirectusRelationMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DirectusRelationToJson(DirectusRelation instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'collection': ?instance.collection,
      'field': ?instance.field,
      'related_collection': ?instance.relatedCollection,
      'many_collection': ?instance.manyCollection,
      'many_field': ?instance.manyField,
      'one_collection': ?instance.oneCollection,
      'one_field': ?instance.oneField,
      'one_collection_field': ?instance.oneCollectionField,
      'one_allowed_collections': ?instance.oneAllowedCollections,
      'junction_field': ?instance.junctionField,
      'sort_field': ?instance.sortField,
      'one_deselect_action': ?instance.oneDeselectAction,
      'schema': ?instance.schema,
      'meta': ?instance.meta,
    };

DirectusRelationSchema _$DirectusRelationSchemaFromJson(
  Map<String, dynamic> json,
) => DirectusRelationSchema(
  table: json['table'] as String?,
  column: json['column'] as String?,
  foreignKeySchema: json['foreign_key_schema'] as String?,
  foreignKeyTable: json['foreign_key_table'] as String?,
  foreignKeyColumn: json['foreign_key_column'] as String?,
  onUpdate: json['on_update'] as String?,
  onDelete: json['on_delete'] as String?,
  constraintName: json['constraint_name'] as String?,
);

Map<String, dynamic> _$DirectusRelationSchemaToJson(
  DirectusRelationSchema instance,
) => <String, dynamic>{
  'table': ?instance.table,
  'column': ?instance.column,
  'foreign_key_schema': ?instance.foreignKeySchema,
  'foreign_key_table': ?instance.foreignKeyTable,
  'foreign_key_column': ?instance.foreignKeyColumn,
  'on_update': ?instance.onUpdate,
  'on_delete': ?instance.onDelete,
  'constraint_name': ?instance.constraintName,
};

DirectusRelationMeta _$DirectusRelationMetaFromJson(
  Map<String, dynamic> json,
) => DirectusRelationMeta(
  id: (json['id'] as num?)?.toInt(),
  manyCollection: json['many_collection'] as String?,
  manyField: json['many_field'] as String?,
  oneCollection: json['one_collection'] as String?,
  oneField: json['one_field'] as String?,
  oneAllowedCollections: (json['one_allowed_collections'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  oneCollectionField: json['one_collection_field'] as String?,
  oneDeselectAction: json['one_deselect_action'] as String?,
  junctionField: json['junction_field'] as String?,
  sortField: json['sort_field'] as String?,
  system: json['system'] as bool?,
);

Map<String, dynamic> _$DirectusRelationMetaToJson(
  DirectusRelationMeta instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'many_collection': ?instance.manyCollection,
  'many_field': ?instance.manyField,
  'one_collection': ?instance.oneCollection,
  'one_field': ?instance.oneField,
  'one_allowed_collections': ?instance.oneAllowedCollections,
  'one_collection_field': ?instance.oneCollectionField,
  'one_deselect_action': ?instance.oneDeselectAction,
  'junction_field': ?instance.junctionField,
  'sort_field': ?instance.sortField,
  'system': ?instance.system,
};
