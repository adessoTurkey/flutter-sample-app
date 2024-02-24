import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_credentials_request_model.freezed.dart';
part 'login_credentials_request_model.g.dart';

@freezed
class LoginCredentialsRequestModel with _$LoginCredentialsRequestModel {
  const factory LoginCredentialsRequestModel() = _LoginCredentialsRequestModel;
  factory LoginCredentialsRequestModel.fromJson(Map<String, Object?> json) =>
      _$LoginCredentialsRequestModelFromJson(json);
}
