// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'session_delete_response_model.freezed.dart';
part 'session_delete_response_model.g.dart';

@freezed
class SessionDeleteResponseModel with _$SessionDeleteResponseModel {
  const factory SessionDeleteResponseModel(
    {
      @JsonKey(name: "success") bool? success
    }
  ) = _SessionDeleteResponseModel;
  factory SessionDeleteResponseModel.fromJson(Map<String, Object?> json) =>
      _$SessionDeleteResponseModelFromJson(json);
}
