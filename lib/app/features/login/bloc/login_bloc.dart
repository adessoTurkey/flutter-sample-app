import 'package:bloc/bloc.dart';
import 'package:flutter_movie_app/api_call/api_repositories/api_repositories.dart';
import 'package:flutter_movie_app/api_call/models/login_credentials_request_model.dart';
import 'package:flutter_movie_app/api_call/models/models.dart';
import 'package:flutter_movie_app/api_call/models/session_request_model.dart';
import 'package:flutter_movie_app/app/features/login/bloc/login_state.dart';
import 'package:formz/formz.dart';
import '../models/models.dart';
import 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final RemoteDataSource remoteDataSource;
  LoginBloc(
      this.remoteDataSource) : super(const LoginState()) {
    on<LoginUsernameChanged>(_onUsernameChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onSubmitted);
    on<LoginPasswordToggleVisibility>(_onLoginPasswordToggleVisibility);
  }

  void _onUsernameChanged(
      LoginUsernameChanged event,
      Emitter<LoginState> emit,
      ) {
    final username = Username.dirty(event.username);
    emit(
      state.copyWith(
        username: username,
        isValid: Formz.validate([state.password, username]),
      ),
    );
  }

  void _onPasswordChanged(
      LoginPasswordChanged event,
      Emitter<LoginState> emit,
      ) {
    final password = Password.dirty(event.password);
    emit(
      state.copyWith(
        password: password,
        isValid: Formz.validate([password, state.username]),
      ),
    );
  }

  Future<void> _onSubmitted(
      LoginSubmitted event,
      Emitter<LoginState> emit,
      ) async {
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

        await remoteDataSource.openSession(
            SessionRequestModel(
                requestToken: validatedTokenResponse.requestToken.toString()));
        emit(state.copyWith(status: FormzSubmissionStatus.success));
      } catch (_) {
        emit(state.copyWith(status: FormzSubmissionStatus.failure));
        Future.delayed(const Duration(microseconds: 100));
        emit(state.copyWith(status: FormzSubmissionStatus.initial));
      }
    }
  }

  void _onLoginPasswordToggleVisibility(
      LoginPasswordToggleVisibility event,
      Emitter<LoginState> emit,
      ) {
    emit(state.copyWith(passwordVisible: !state.passwordVisible),
    );
  }
}
