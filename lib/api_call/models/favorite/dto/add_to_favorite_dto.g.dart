// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_favorite_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddToFavoriteDtoImpl _$$AddToFavoriteDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AddToFavoriteDtoImpl(
      mediaType: json['media_type'] as String?,
      favoriteId: json['media_id'] as int?,
      favorite: json['favorite'] as bool?,
    );

Map<String, dynamic> _$$AddToFavoriteDtoImplToJson(
        _$AddToFavoriteDtoImpl instance) =>
    <String, dynamic>{
      'media_type': instance.mediaType,
      'media_id': instance.favoriteId,
      'favorite': instance.favorite,
    };
