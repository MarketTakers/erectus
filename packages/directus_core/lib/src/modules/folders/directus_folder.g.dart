// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directus_folder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectusFolder _$DirectusFolderFromJson(Map<String, dynamic> json) =>
    DirectusFolder(
      id: json['id'] as String?,
      name: json['name'] as String?,
      parent: json['parent'],
    );

Map<String, dynamic> _$DirectusFolderToJson(DirectusFolder instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'parent': ?instance.parent,
    };
