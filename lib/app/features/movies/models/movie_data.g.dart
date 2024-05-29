// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDataImpl _$$MovieDataImplFromJson(Map<String, dynamic> json) =>
    _$MovieDataImpl(
      id: json['id'] as int?,
      movieTitle: json['title'] as String?,
      moviePosterPath: json['poster_path'] as String?,
      genres:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      releaseDate: json['release_date'] as String?,
      voteAvarage: (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MovieDataImplToJson(_$MovieDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.movieTitle,
      'poster_path': instance.moviePosterPath,
      'genre_ids': instance.genres,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAvarage,
    };
