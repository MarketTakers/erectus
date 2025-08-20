// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directus_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
      'meta': instance.meta.toJson(),
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
