import 'package:flutter_movie_app/app/features/movie_detail/models/genre/genre_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'creator/tv_series_creator_model.dart';
part 'tv_series_detail_model.freezed.dart';
part 'tv_series_detail_model.g.dart';

@freezed
class TvSeriesDetailModel with _$TvSeriesDetailModel {
  const factory TvSeriesDetailModel(
          {
            @JsonKey(name: "id") int? id,
            @JsonKey(name: "episode_run_time") List<int>? episodeRunTime,
            @JsonKey(name: "backdrop_path") String? backdropPath,
          @JsonKey(name: "poster_path") String? posterPath,
          @JsonKey(name: "first_air_date") String? firstAirDate,
          @JsonKey(name: "last_air_date") String? lastAirDate,
          @JsonKey(name: "number_of_seasons") int? numberOfSeasons,
          @JsonKey(name: "name") String? name,
          @JsonKey(name: "vote_average") double? voteAverage,
          @JsonKey(name: "overview") String? overview,
          @JsonKey(name: "genres") List<GenreModel>? genres,
          @JsonKey(name: "created_by") List<TvSeriesCreatorModel>? creators}) =
      _TvSeriesDetailModel;

  factory TvSeriesDetailModel.fromJson(Map<String, Object?> json) =>
      _$TvSeriesDetailModelFromJson(json);
}
