// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directus_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectusField _$DirectusFieldFromJson(Map<String, dynamic> json) =>
    DirectusField(
      id: (json['id'] as num).toInt(),
      type: $enumDecode(_$DirectusFieldTypeEnumMap, json['type']),
      required: json['required'] as bool,
      collection: json['collection'] as String?,
      field: json['field'] as String?,
      special: json['special'] as String?,
      interface: json['interface'] as String?,
      options: json['options'] as Map<String, dynamic>?,
      display: json['display'] as String?,
      displayOptions: json['display_options'] as Map<String, dynamic>?,
      lock: json['lock'] as bool?,
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

Map<String, dynamic> _$DirectusFieldToJson(DirectusField instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$DirectusFieldTypeEnumMap[instance.type]!,
      'required': instance.required,
      'collection': ?instance.collection,
      'field': ?instance.field,
      'special': ?instance.special,
      'interface': ?instance.interface,
      'options': ?instance.options,
      'display': ?instance.display,
      'display_options': ?instance.displayOptions,
      'lock': ?instance.lock,
      'readonly': ?instance.readonly,
      'hidden': ?instance.hidden,
      'sort': ?instance.sort,
      'width': ?instance.width,
      'group': ?instance.group,
      'translations': ?instance.translations,
      'note': ?instance.note,
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
