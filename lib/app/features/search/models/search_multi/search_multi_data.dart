// ignore_for_file: invalid_annotation_target

import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_multi_data.freezed.dart';
part 'search_multi_data.g.dart';

@freezed
class SearchMultiData with _$SearchMultiData {
  const factory SearchMultiData({
    @JsonKey(name: "poster_path") String? posterPath,
    int? id,
    @JsonKey(name: "original_title") String? originalTitle,
    @JsonKey(
      name: "media_type",
      disallowNullValue: true,
      required: true,
      unknownEnumValue: JsonKey.nullForUndefinedEnumValue,
    )
    MediaTypeEnum? mediaType,
    @JsonKey(name: "release_date") String? releaseDate,
    @JsonKey(name: "original_name") String? originalName,
    @JsonKey(name: "first_air_date") String? firstAirDate,
    @JsonKey(name: "known_for_department") String? knownForDepartment,
    @JsonKey(name: "profile_path") dynamic profilePath,
  }) = _SearchMultiData;
  factory SearchMultiData.fromJson(Map<String, Object?> json) =>
      _$SearchMultiDataFromJson(json);
}
