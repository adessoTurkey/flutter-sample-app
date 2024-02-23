// ignore_for_file: invalid_annotation_target

import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cast_results.freezed.dart';
part 'cast_results.g.dart';

@freezed
class CastResults with _$CastResults {
  const factory CastResults({
    int? id,
    @JsonKey(name: "profile_path") String? profilePath,
    @JsonKey(name: "original_name") String? originalName,
    @JsonKey(
      name: "known_for_department",
      disallowNullValue: true,
      required: true,
      unknownEnumValue: JsonKey.nullForUndefinedEnumValue,
    )
    KnownForDepartmentEnum? knownForDepartment,
    @JsonKey(name: "cast_id") int? castId,
    @JsonKey(name: "department") String? department,
    @JsonKey(name: "character") String? character,
    @JsonKey(name: "job") String? job,
    int? order,
  }) = _CastResults;
  factory CastResults.fromJson(Map<String, Object?> json) =>
      _$CastResultsFromJson(json);
}
