import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_credentials_request_model.freezed.dart';
part 'login_credentials_request_model.g.dart';

@freezed
class LoginCredentialsRequestModel with _$LoginCredentialsRequestModel {
  const factory LoginCredentialsRequestModel(
          {required String username,
          required String password,
          @JsonKey(name: 'request_token') required String requestToken}) =
      _LoginCredentialsRequestModel;

  factory LoginCredentialsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginCredentialsRequestModelFromJson(json);
}
