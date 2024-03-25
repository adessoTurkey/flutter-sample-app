// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'rating_response_model.freezed.dart';
part 'rating_response_model.g.dart';

@freezed
class RatingResponseModel with _$RatingResponseModel {
  const factory RatingResponseModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "status_code") int? statusCode,
    @JsonKey(name: "status_message") String? statusMessage,
  }) = _RatingResponseModel;
  factory RatingResponseModel.fromJson(Map<String, Object?> json) =>
      _$RatingResponseModelFromJson(json);
}
