import 'package:freezed_annotation/freezed_annotation.dart';
part 'session_response_model.freezed.dart';
part 'session_response_model.g.dart';

@freezed
class SessionResponseModel with _$SessionResponseModel {
  const factory SessionResponseModel(
      {required bool? success,
      @JsonKey(name: 'session_id') String? sessionId}) = _SessionResponseModel;
  factory SessionResponseModel.fromJson(Map<String, Object?> json) =>
      _$SessionResponseModelFromJson(json);
}
