// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
part 'favorite_movie_data.freezed.dart';
part 'favorite_movie_data.g.dart';

@freezed
class FavoriteMovieData with _$FavoriteMovieData {
  const factory FavoriteMovieData({
    @JsonKey(name: "poster_path") String? posterPath,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "release_date") String? releaseDate,
  }) = _FavoriteMovieData;
  factory FavoriteMovieData.fromJson(Map<String, Object?> json) =>
      _$FavoriteMovieDataFromJson(json);
}
