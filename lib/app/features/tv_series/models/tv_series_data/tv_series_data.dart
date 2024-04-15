import 'package:freezed_annotation/freezed_annotation.dart';
part 'tv_series_data.freezed.dart';
part 'tv_series_data.g.dart';

@freezed
class TvSeriesData with _$TvSeriesData {
  const factory TvSeriesData({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? tvSeriesTitle,
    @JsonKey(name: "poster_path") String? tvSeriesPosterPath,
    @JsonKey(name: "genre_ids") List<int>? genres,
    @JsonKey(name: "vote_average") double? voteAverage,
  }) = _TvSeriesData;
  factory TvSeriesData.fromJson(Map<String, Object?> json) =>
      _$TvSeriesDataFromJson(json);
}
