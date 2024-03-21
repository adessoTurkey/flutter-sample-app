// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_data.freezed.dart';
part 'movie_data.g.dart';

@freezed
class MovieData with _$MovieData {
  factory MovieData({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") String? movieTitle,
    @JsonKey(name: "poster_path") String? moviePosterPath,
    @JsonKey(name: "genre_ids") List<int>? genres,
    @JsonKey(name: "release_date") String? releaseDate,
    @JsonKey(name: "vote_average") double? voteAvarage,
  }) = _MovieData;

  factory MovieData.fromJson(Map<String, Object?> json) =>
      _$MovieDataFromJson(json);
}
