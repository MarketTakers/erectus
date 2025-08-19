import 'package:json_annotation/json_annotation.dart';

part 'directus_field.g.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum DirectusFieldType {
  // Basic Data Types
  string,
  text,
  integer,
  bigInteger,
  float,
  decimal,
  boolean,

  // Date & Time Types
  date,
  time,
  dateTime,
  timestamp,

  // Special Data Types
  json,
  csv,
  uuid,
  hash,
  binary,

  // Geospatial Types
  geometry,
  geometryPoint,
  geometryLineString,
  geometryPolygon,
  geometryMultiPoint,
  geometryMultiLineString,
  geometryMultiPolygon,

  // System/Virtual Types
  alias,
  unknown,
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class DirectusFieldMeta {
  int id;
  bool required;
  String collection;

  String? special;
  String? interface;
  Map<String, Object?>? options;
  String? display;
  Map<String, Object?>? displayOptions;
  bool? readonly;
  bool? hidden;
  int? sort;
  String? width;
  int? group;
  List<Map<String, Object?>>? translations;
  String? note;

  DirectusFieldMeta({
    required this.id,
    required this.required,
    required this.collection,
    this.special,
    this.interface,
    this.options,
    this.display,
    this.displayOptions,
    this.readonly,
    this.hidden,
    this.sort,
    this.width,
    this.group,
    this.translations,
    this.note,
  });

factory DirectusFieldMeta.fromJson(Map<String, Object?> json) =>
      _$DirectusFieldMetaFromJson(json);

  Map<String, Object?> toJson() => _$DirectusFieldMetaToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class DirectusField {
  String field;
  String collection;
  DirectusFieldType type;

  DirectusFieldMeta meta;

  DirectusField({
    required this.field,
    required this.type,
    required this.collection,
    required this.meta,
  });

  factory DirectusField.fromJson(Map<String, Object?> json) =>
      _$DirectusFieldFromJson(json);

  Map<String, Object?> toJson() => _$DirectusFieldToJson(this);
}
