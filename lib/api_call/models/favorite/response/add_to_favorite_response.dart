// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_to_favorite_response.freezed.dart';
part 'add_to_favorite_response.g.dart';

@freezed
class AddToFavoriteResponse with _$AddToFavoriteResponse {
  const factory AddToFavoriteResponse({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "status_code") int? statusCode,
    @JsonKey(name: "status_message") String? statusMessage,
  }) = _AddToFavoriteResponse;
  factory AddToFavoriteResponse.fromJson(Map<String, Object?> json) =>
      _$AddToFavoriteResponseFromJson(json);
}
