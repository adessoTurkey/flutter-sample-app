import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import '../models/models.dart';

final class LoginState extends Equatable {
  const LoginState({
    this.status = FormzSubmissionStatus.initial,
    this.username = const Username.pure(),
    this.password = const Password.pure(),
    this.isValid = false,
    this.passwordVisible = false,
  });

  final FormzSubmissionStatus status;
  final Username username;
  final Password password;
  final bool isValid;
  final bool passwordVisible;

  LoginState copyWith({
    FormzSubmissionStatus? status,
    Username? username,
    Password? password,
    bool? isValid,
    bool? passwordVisible,
  }) {
    return LoginState(
      status: status ?? this.status,
      username: username ?? this.username,
      password: password ?? this.password,
      isValid: isValid ?? this.isValid,
      passwordVisible: passwordVisible ?? this.passwordVisible,
    );
  }

  @override
  List<Object> get props => [status, username, password, passwordVisible];
}