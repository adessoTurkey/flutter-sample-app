import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/api_call/api_repositories/api_repositories.dart';
import 'package:flutter_movie_app/api_call/models/models.dart';
import 'package:formz/formz.dart';

import '../../../core/core.dart';
import '../models/models.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final RemoteDataSource remoteDataSource;
  final AuthenticationRepository authenticationRepository;

  LoginBloc(this.remoteDataSource, this.authenticationRepository)
      : super(const LoginState()) {
    on<LoginUsernameChanged>(_onUsernameChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onSubmitted);
    on<LoginPasswordToggleVisibility>(_onLoginPasswordToggleVisibility);
  }

  void _onUsernameChanged(LoginUsernameChanged event,
      Emitter<LoginState> emit,) {
    final username = Username.dirty(event.username);
    emit(
      state.copyWith(
        username: username,
        isValid: Formz.validate([state.password, username]),
      ),
    );
  }

  void _onPasswordChanged(LoginPasswordChanged event,
      Emitter<LoginState> emit,) {
    final password = Password.dirty(event.password);
    emit(
      state.copyWith(
        password: password,
        isValid: Formz.validate([password, state.username]),
      ),
    );
  }

  Future<void> _onSubmitted(LoginSubmitted event,
      Emitter<LoginState> emit,    ) async {
    if (state.isValid) {
      emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
      try {
        RequestTokenModel requestTokenResponse =
        await remoteDataSource.getRequestToken();

        RequestTokenModel validatedTokenResponse = await remoteDataSource
            .loginWithCredentials(LoginCredentialsRequestModel(
            username: state.username.value,
            password: state.password.value,
            requestToken: requestTokenResponse.requestToken.toString()));

        SessionResponseModel sessionResponse =
        await remoteDataSource.openSession(SessionRequestModel(
            requestToken: validatedTokenResponse.requestToken.toString()));

        if(sessionResponse.success!=null && sessionResponse.success!){
          authenticationRepository.logIn(sessionResponse.sessionId);
          emit(state.copyWith(status: FormzSubmissionStatus.success));
          Future.delayed(const Duration(microseconds: 300));
          emit(state.copyWith(status: FormzSubmissionStatus.initial));
        }
        else{
          throw "Login Failure";
        }
      } catch (_) {
        emit(state.copyWith(status: FormzSubmissionStatus.failure));
        Future.delayed(const Duration(microseconds: 100));
        emit(state.copyWith(status: FormzSubmissionStatus.initial));
      }
    }
  }

  void _onLoginPasswordToggleVisibility(LoginPasswordToggleVisibility event,
      Emitter<LoginState> emit,) {
    emit(
      state.copyWith(passwordVisible: !state.passwordVisible),
    );
  }
}
