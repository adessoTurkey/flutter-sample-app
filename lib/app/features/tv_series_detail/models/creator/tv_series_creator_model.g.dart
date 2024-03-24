// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_series_creator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvSeriesCreatorModelImpl _$$TvSeriesCreatorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TvSeriesCreatorModelImpl(
      id: json['id'] as int?,
      creditId: json['credit_id'] as String?,
      name: json['name'] as String?,
      profilePath: json['profile_path'] as String?,
    );

Map<String, dynamic> _$$TvSeriesCreatorModelImplToJson(
        _$TvSeriesCreatorModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'credit_id': instance.creditId,
      'name': instance.name,
      'profile_path': instance.profilePath,
    };
