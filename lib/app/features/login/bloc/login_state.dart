import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/api_call/models/session_response_model.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object?> get props => [];
}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {
  const LoginSuccess({required this.sessionResponse});

  final SessionResponseModel sessionResponse;

  @override
  List<Object?> get props => [sessionResponse];
}


final class LoginError extends LoginState {
  const LoginError({required this.errorMessage});

  final String? errorMessage;

  @override
  List<Object?> get props => [errorMessage];
}
