// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_tv_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteTvDataImpl _$$FavoriteTvDataImplFromJson(Map<String, dynamic> json) =>
    _$FavoriteTvDataImpl(
      id: json['id'] as int?,
      originalName: json['original_name'] as String?,
      posterPath: json['poster_path'] as String?,
      firstAirDate: json['first_air_date'] as String?,
    );

Map<String, dynamic> _$$FavoriteTvDataImplToJson(
        _$FavoriteTvDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_name': instance.originalName,
      'poster_path': instance.posterPath,
      'first_air_date': instance.firstAirDate,
    };
