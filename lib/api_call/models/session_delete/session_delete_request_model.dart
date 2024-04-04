// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'session_delete_request_model.freezed.dart';
part 'session_delete_request_model.g.dart';

@freezed
class SessionDeleteRequestModel with _$SessionDeleteRequestModel {
  const factory SessionDeleteRequestModel(
    {
      @JsonKey(name: "session_id") String? sessionId
    }
  ) = _SessionDeleteRequestModel;
  factory SessionDeleteRequestModel.fromJson(Map<String, Object?> json) =>
      _$SessionDeleteRequestModelFromJson(json);
}
