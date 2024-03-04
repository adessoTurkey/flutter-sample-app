// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
part 'favorite_tv_data.freezed.dart';
part 'favorite_tv_data.g.dart';

@freezed
class FavoriteTvData with _$FavoriteTvData {
  const factory FavoriteTvData({
    int? id,
    @JsonKey(name: "original_name") String? originalName,
    @JsonKey(name: "poster_path") String? posterPath,
    @JsonKey(name: "first_air_date") String? firstAirDate,
  }) = _FavoriteTvData;
  factory FavoriteTvData.fromJson(Map<String, Object?> json) =>
      _$FavoriteTvDataFromJson(json);
}
