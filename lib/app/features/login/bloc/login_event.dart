import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/api_call/models/login_credentials_request_model.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

final class SigningIn extends LoginEvent {
  final LoginCredentialsRequestModel loginCredentialsRequest;
  const SigningIn({required this.loginCredentialsRequest});

  @override
  List<Object> get props => [loginCredentialsRequest];
}
