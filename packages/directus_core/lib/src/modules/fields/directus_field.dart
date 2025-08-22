import 'package:directus_core/src/modules/fields/directus_field_meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'directus_field.g.dart';

@JsonEnum()
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

@JsonSerializable(
  fieldRename: FieldRename.snake,
  includeIfNull: false,
  explicitToJson: true,
)
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
