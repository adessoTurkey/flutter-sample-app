// ignore_for_file: invalid_annotation_target

import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crew_results.freezed.dart';
part 'crew_results.g.dart';

@freezed
class CrewResults with _$CrewResults {
  const factory CrewResults({
    bool? adult,
    int? gender,
    int? id,
    @JsonKey(
      name: "known_for_department",
      disallowNullValue: true,
      required: true,
      unknownEnumValue: JsonKey.nullForUndefinedEnumValue,
    )
    KnownForDepartmentEnum? knownForDepartment,
    String? name,
    @JsonKey(name: "original_name") String? originalName,
    double? popularity,
    @JsonKey(name: "profile_path") String? profilePath,
    @JsonKey(name: "credit_id") String? creditId,
    String? department,
    @JsonKey(
      name: "job",
      disallowNullValue: true,
      required: true,
      unknownEnumValue: JsonKey.nullForUndefinedEnumValue,
    )
    CastJobEnum? job,
  }) = _CrewResults;
  factory CrewResults.fromJson(Map<String, Object?> json) =>
      _$CrewResultsFromJson(json);
}
