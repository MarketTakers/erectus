// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directus_preset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectusPreset _$DirectusPresetFromJson(Map<String, dynamic> json) =>
    DirectusPreset(
      id: (json['id'] as num?)?.toInt(),
      bookmark: json['bookmark'] as String?,
      user: json['user'],
      role: json['role'],
      collection: json['collection'] as String?,
      search: json['search'] as String?,
      filters: (json['filters'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      layout: json['layout'] as String?,
      layoutQuery: json['layout_query'] as Map<String, dynamic>?,
      layoutOptions: json['layout_options'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$DirectusPresetToJson(DirectusPreset instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'bookmark': ?instance.bookmark,
      'user': ?instance.user,
      'role': ?instance.role,
      'collection': ?instance.collection,
      'search': ?instance.search,
      'filters': ?instance.filters,
      'layout': ?instance.layout,
      'layout_query': ?instance.layoutQuery,
      'layout_options': ?instance.layoutOptions,
    };
