// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
part 'favorite_tv_data.freezed.dart';
part 'favorite_tv_data.g.dart';

@freezed
class FavoriteTvData with _$FavoriteTvData {
  const factory FavoriteTvData({
    @JsonKey(name: "original_name") String? originalName,
    @JsonKey(name: "poster_path") String? posterPath,
    @JsonKey(name: "first_air_date") String? first_air_date,
  }) = _FavoriteTvData;
  factory FavoriteTvData.fromJson(Map<String, Object?> json) =>
      _$FavoriteTvDataFromJson(json);
}
