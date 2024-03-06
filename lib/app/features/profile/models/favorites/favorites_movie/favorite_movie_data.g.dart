// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_movie_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteMovieDataImpl _$$FavoriteMovieDataImplFromJson(
        Map<String, dynamic> json) =>
    _$FavoriteMovieDataImpl(
      id: json['id'] as int?,
      posterPath: json['poster_path'] as String?,
      title: json['title'] as String?,
      releaseDate: json['release_date'] as String?,
    );

Map<String, dynamic> _$$FavoriteMovieDataImplToJson(
        _$FavoriteMovieDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster_path': instance.posterPath,
      'title': instance.title,
      'release_date': instance.releaseDate,
    };
