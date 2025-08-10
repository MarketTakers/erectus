// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_asset_preset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StorageAssetPreset _$StorageAssetPresetFromJson(Map<String, dynamic> json) =>
    StorageAssetPreset(
      fit: json['fit'] as String,
      key: json['key'] as String,
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      quality: (json['quality'] as num).toInt(),
      withoutEnlargement: json['without_enlargement'] as bool,
    );

Map<String, dynamic> _$StorageAssetPresetToJson(StorageAssetPreset instance) =>
    <String, dynamic>{
      'key': instance.key,
      'fit': instance.fit,
      'width': instance.width,
      'height': instance.height,
      'quality': instance.quality,
      'without_enlargement': instance.withoutEnlargement,
    };
