// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDetailModelImpl _$$MovieDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieDetailModelImpl(
      id: json['id'] as int?,
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      imdbId: json['imdb_id'] as String?,
      releaseDate: json['release_date'] as String?,
      runtime: json['runtime'] as int?,
      title: json['title'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      overivew: json['overview'] as String?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MovieDetailModelImplToJson(
        _$MovieDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'imdb_id': instance.imdbId,
      'release_date': instance.releaseDate,
      'runtime': instance.runtime,
      'title': instance.title,
      'vote_average': instance.voteAverage,
      'overview': instance.overivew,
      'genres': instance.genres,
    };
