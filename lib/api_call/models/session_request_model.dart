import 'package:freezed_annotation/freezed_annotation.dart';
part 'session_request_model.freezed.dart';
part 'session_request_model.g.dart';

@freezed
class SessionRequestModel with _$SessionRequestModel {
  const factory SessionRequestModel(
          {@JsonKey(name: "request_token") required String requestToken}) =
      _SessionRequestModel;
  factory SessionRequestModel.fromJson(Map<String, Object?> json) =>
      _$SessionRequestModelFromJson(json);
}
