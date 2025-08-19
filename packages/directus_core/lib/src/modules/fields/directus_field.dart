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
class DirectusField {
  int id;
  DirectusFieldType type;

  bool required;

  String? collection;
  String? field;
  String? special;
  String? interface;
  Map<String, Object?>? options;
  String? display;
  Map<String, Object?>? displayOptions;
  bool? lock;
  bool? readonly;
  bool? hidden;
  int? sort;
  String? width;
  int? group;
  List<Map<String, Object?>>? translations;
  String? note;

  DirectusField(
  
    {
    required this.id,
    required this.type,
    required this.required,
    this.collection,
    this.field,
    this.special,
    this.interface,
    this.options,
    this.display,
    this.displayOptions,
    this.lock,
    this.readonly,
    this.hidden,
    this.sort,
    this.width,
    this.group,
    this.translations,
    this.note,
  });

  /// Used for code generation
  factory DirectusField.fromJson(Map<String, Object?> json) =>
      _$DirectusFieldFromJson(json);

  /// Used for code generation
  Map<String, Object?> toJson() => _$DirectusFieldToJson(this);
}
