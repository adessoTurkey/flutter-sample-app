part of 'authentication_bloc.dart';

final class AuthenticationState extends Equatable {
  final AuthenticationStatus status;
  final String? error;

  const AuthenticationState(this.status, this.error);

  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.error,
  });

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated()
      : this._(
          status: AuthenticationStatus.authenticated,
        );
  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  @override
  List<Object?> get props => [status, error];
}
