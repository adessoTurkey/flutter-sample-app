// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'rating_request_model.freezed.dart';
part 'rating_request_model.g.dart';

@freezed
class RatingRequestModel with _$RatingRequestModel {
  const factory RatingRequestModel({
    @JsonKey(name: "value", includeToJson: true) int? value,
  }) = _RatingRequestModel;
  factory RatingRequestModel.fromJson(Map<String, Object?> json) =>
      _$RatingRequestModelFromJson(json);
}
