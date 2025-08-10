// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directus_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectusFile _$DirectusFileFromJson(Map<String, dynamic> json) => DirectusFile(
  id: json['id'] as String?,
  storage: json['storage'] as String?,
  filenameDisk: json['filename_disk'] as String?,
  filenameDownload: json['filename_download'] as String?,
  title: json['title'] as String?,
  type: json['type'] as String?,
  folder: json['folder'],
  uploadedBy: json['uploaded_by'],
  uploadedOn: json['uploaded_on'] == null
      ? null
      : DateTime.parse(json['uploaded_on'] as String),
  modifiedBy: json['modified_by'],
  modifiedOn: json['modified_on'] == null
      ? null
      : DateTime.parse(json['modified_on'] as String),
  charset: json['charset'] as String?,
  filesize: json['filesize'],
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  duration: (json['duration'] as num?)?.toInt(),
  embed: json['embed'] as String?,
  description: json['description'] as String?,
  location: json['location'] as String?,
  tags: json['tags'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$DirectusFileToJson(DirectusFile instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'storage': ?instance.storage,
      'filename_disk': ?instance.filenameDisk,
      'filename_download': ?instance.filenameDownload,
      'title': ?instance.title,
      'type': ?instance.type,
      'folder': ?instance.folder,
      'uploaded_by': ?instance.uploadedBy,
      'uploaded_on': ?instance.uploadedOn?.toIso8601String(),
      'modified_by': ?instance.modifiedBy,
      'modified_on': ?instance.modifiedOn?.toIso8601String(),
      'charset': ?instance.charset,
      'width': ?instance.width,
      'height': ?instance.height,
      'duration': ?instance.duration,
      'embed': ?instance.embed,
      'description': ?instance.description,
      'location': ?instance.location,
      'tags': ?instance.tags,
      'metadata': ?instance.metadata,
      'filesize': ?instance.filesize,
    };
