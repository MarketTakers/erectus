// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directus_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectusFieldMeta _$DirectusFieldMetaFromJson(Map<String, dynamic> json) =>
    DirectusFieldMeta(
      id: (json['id'] as num).toInt(),
      required: json['required'] as bool,
      collection: json['collection'] as String,
      special: json['special'] as String?,
      interface: json['interface'] as String?,
      options: json['options'] as Map<String, dynamic>?,
      display: json['display'] as String?,
      displayOptions: json['display_options'] as Map<String, dynamic>?,
      readonly: json['readonly'] as bool?,
      hidden: json['hidden'] as bool?,
      sort: (json['sort'] as num?)?.toInt(),
      width: json['width'] as String?,
      group: (json['group'] as num?)?.toInt(),
      translations: (json['translations'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$DirectusFieldMetaToJson(DirectusFieldMeta instance) =>
    <String, dynamic>{
      'id': instance.id,
      'required': instance.required,
      'collection': instance.collection,
      'special': ?instance.special,
      'interface': ?instance.interface,
      'options': ?instance.options,
      'display': ?instance.display,
      'display_options': ?instance.displayOptions,
      'readonly': ?instance.readonly,
      'hidden': ?instance.hidden,
      'sort': ?instance.sort,
      'width': ?instance.width,
      'group': ?instance.group,
      'translations': ?instance.translations,
      'note': ?instance.note,
    };

DirectusField _$DirectusFieldFromJson(Map<String, dynamic> json) =>
    DirectusField(
      field: json['field'] as String,
      type: $enumDecode(_$DirectusFieldTypeEnumMap, json['type']),
      collection: json['collection'] as String,
      meta: DirectusFieldMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DirectusFieldToJson(DirectusField instance) =>
    <String, dynamic>{
      'field': instance.field,
      'collection': instance.collection,
      'type': _$DirectusFieldTypeEnumMap[instance.type]!,
      'meta': instance.meta,
    };

const _$DirectusFieldTypeEnumMap = {
  DirectusFieldType.string: 'string',
  DirectusFieldType.text: 'text',
  DirectusFieldType.integer: 'integer',
  DirectusFieldType.bigInteger: 'big_integer',
  DirectusFieldType.float: 'float',
  DirectusFieldType.decimal: 'decimal',
  DirectusFieldType.boolean: 'boolean',
  DirectusFieldType.date: 'date',
  DirectusFieldType.time: 'time',
  DirectusFieldType.dateTime: 'date_time',
  DirectusFieldType.timestamp: 'timestamp',
  DirectusFieldType.json: 'json',
  DirectusFieldType.csv: 'csv',
  DirectusFieldType.uuid: 'uuid',
  DirectusFieldType.hash: 'hash',
  DirectusFieldType.binary: 'binary',
  DirectusFieldType.geometry: 'geometry',
  DirectusFieldType.geometryPoint: 'geometry_point',
  DirectusFieldType.geometryLineString: 'geometry_line_string',
  DirectusFieldType.geometryPolygon: 'geometry_polygon',
  DirectusFieldType.geometryMultiPoint: 'geometry_multi_point',
  DirectusFieldType.geometryMultiLineString: 'geometry_multi_line_string',
  DirectusFieldType.geometryMultiPolygon: 'geometry_multi_polygon',
  DirectusFieldType.alias: 'alias',
  DirectusFieldType.unknown: 'unknown',
};
