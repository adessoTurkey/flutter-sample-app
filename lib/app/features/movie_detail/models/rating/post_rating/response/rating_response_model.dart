// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/enums/enums.dart';
part 'rating_response_model.freezed.dart';
part 'rating_response_model.g.dart';

@freezed
class RatingResponseModel with _$RatingResponseModel {
  const factory RatingResponseModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(
      name: "status_code",
      disallowNullValue: true,
      required: true,
      unknownEnumValue: JsonKey.nullForUndefinedEnumValue,
    )
    PostRatingStatusCodeEnum? statusCode,
    @JsonKey(name: "status_message") String? statusMessage,
  }) = _RatingResponseModel;
  factory RatingResponseModel.fromJson(Map<String, Object?> json) =>
      _$RatingResponseModelFromJson(json);
}
