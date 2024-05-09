// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'rated_list_response.freezed.dart';
part 'rated_list_response.g.dart';

@freezed
class RatedListResponse with _$RatedListResponse {
  const factory RatedListResponse({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "rating") double? rating,
  }) = _RatedListResponse;
  factory RatedListResponse.fromJson(Map<String, Object?> json) =>
      _$RatedListResponseFromJson(json);
}
