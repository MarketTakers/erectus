import 'package:json_annotation/json_annotation.dart';

part 'directus_relation.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class DirectusRelation {
  int? id;
  String? collection;
  String? field;
  String? relatedCollection;
  String? manyCollection;
  String? manyField;
  String? oneCollection;
  String? oneField;
  String? oneCollectionField;
  List<String>? oneAllowedCollections;
  String? junctionField;
  String? sortField;
  String? oneDeselectAction;
  DirectusRelationSchema? schema;
  DirectusRelationMeta? meta;

  DirectusRelation({
    this.id,
    this.collection,
    this.field,
    this.relatedCollection,
    this.manyCollection,
    this.manyField,
    this.oneCollection,
    this.oneField,
    this.oneCollectionField,
    this.oneAllowedCollections,
    this.junctionField,
    this.sortField,
    this.oneDeselectAction,
    this.schema,
    this.meta,
  });

  /// Used for code generation
  factory DirectusRelation.fromJson(Map<String, Object?> json) =>
      _$DirectusRelationFromJson(json);

  /// Used for code generation
  Map<String, Object?> toJson() => _$DirectusRelationToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class DirectusRelationSchema {
  String? table;
  String? column;
  String? foreignKeySchema;
  String? foreignKeyTable;
  String? foreignKeyColumn;
  String? onUpdate;
  String? onDelete;
  String? constraintName;

  DirectusRelationSchema({
    this.table,
    this.column,
    this.foreignKeySchema,
    this.foreignKeyTable,
    this.foreignKeyColumn,
    this.onUpdate,
    this.onDelete,
    this.constraintName,
  });

  factory DirectusRelationSchema.fromJson(Map<String, Object?> json) =>
      _$DirectusRelationSchemaFromJson(json);

  Map<String, Object?> toJson() => _$DirectusRelationSchemaToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class DirectusRelationMeta {
  int? id;
  String? manyCollection;
  String? manyField;
  String? oneCollection;
  String? oneField;
  List<String>? oneAllowedCollections;
  String? oneCollectionField;
  String? oneDeselectAction;
  String? junctionField;
  String? sortField;
  bool? system;

  DirectusRelationMeta({
    this.id,
    this.manyCollection,
    this.manyField,
    this.oneCollection,
    this.oneField,
    this.oneAllowedCollections,
    this.oneCollectionField,
    this.oneDeselectAction,
    this.junctionField,
    this.sortField,
    this.system,
  });

  factory DirectusRelationMeta.fromJson(Map<String, Object?> json) =>
      _$DirectusRelationMetaFromJson(json);

  Map<String, Object?> toJson() => _$DirectusRelationMetaToJson(this);
}
