import 'package:json_annotation/json_annotation.dart';

part 'directus_field_meta.g.dart';

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

  factory DirectusFieldMeta.fromJson(Map<String, dynamic> json) =>
      _$DirectusFieldMetaFromJson(json);

  Map<String, dynamic> toJson() => _$DirectusFieldMetaToJson(this);
}
