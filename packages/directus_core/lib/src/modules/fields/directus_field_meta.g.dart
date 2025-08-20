// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directus_field_meta.dart';

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
