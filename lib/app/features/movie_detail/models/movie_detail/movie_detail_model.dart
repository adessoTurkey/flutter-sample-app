// ignore_for_file: invalid_annotation_target

import 'package:flutter_movie_app/app/features/movie_detail/models/genre/genre_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_detail_model.freezed.dart';
part 'movie_detail_model.g.dart';

@freezed
class MovieDetailModel with _$MovieDetailModel {
  const factory MovieDetailModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "backdrop_path") String? backdropPath,
    @JsonKey(name: "poster_path") String? posterPath,
    @JsonKey(name: "imdb_id") String? imdbId,
    @JsonKey(name: "release_date") String? releaseDate,
    @JsonKey(name: "runtime") int? runtime,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "vote_average") double? voteAverage,
    @JsonKey(name: "overview") String? overivew,
    @JsonKey(name: "genres") List<GenreModel>? genres,
  }) = _MovieDetailModel;
  factory MovieDetailModel.fromJson(Map<String, Object?> json) =>
      _$MovieDetailModelFromJson(json);
}
