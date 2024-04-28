// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_series_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvSeriesDataImpl _$$TvSeriesDataImplFromJson(Map<String, dynamic> json) =>
    _$TvSeriesDataImpl(
      id: json['id'] as int?,
      tvSeriesTitle: json['name'] as String?,
      tvSeriesPosterPath: json['poster_path'] as String?,
      genres:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$TvSeriesDataImplToJson(_$TvSeriesDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.tvSeriesTitle,
      'poster_path': instance.tvSeriesPosterPath,
      'genre_ids': instance.genres,
      'vote_average': instance.voteAverage,
    };
