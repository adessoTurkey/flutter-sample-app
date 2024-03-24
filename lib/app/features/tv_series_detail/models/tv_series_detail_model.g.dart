// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_series_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvSeriesDetailModelImpl _$$TvSeriesDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TvSeriesDetailModelImpl(
      id: json['id'] as int?,
      episodeRunTime: (json['episode_run_time'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      firstAirDate: json['first_air_date'] as String?,
      lastAirDate: json['last_air_date'] as String?,
      numberOfSeasons: json['number_of_seasons'] as int?,
      name: json['name'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      overview: json['overview'] as String?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      creators: (json['created_by'] as List<dynamic>?)
          ?.map((e) => TvSeriesCreatorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TvSeriesDetailModelImplToJson(
        _$TvSeriesDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'episode_run_time': instance.episodeRunTime,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'first_air_date': instance.firstAirDate,
      'last_air_date': instance.lastAirDate,
      'number_of_seasons': instance.numberOfSeasons,
      'name': instance.name,
      'vote_average': instance.voteAverage,
      'overview': instance.overview,
      'genres': instance.genres,
      'created_by': instance.creators,
    };
