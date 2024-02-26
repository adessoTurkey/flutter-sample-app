import 'package:bloc/bloc.dart';
import 'package:flutter_movie_app/api_call/api_repositories/api_repositories.dart';
import 'package:flutter_movie_app/api_call/models/models.dart';
import 'package:flutter_movie_app/api_call/models/session_request_model.dart';
import 'package:flutter_movie_app/api_call/models/session_response_model.dart';
import 'package:flutter_movie_app/app/features/login/bloc/login_event.dart';
import 'package:flutter_movie_app/app/features/login/bloc/login_state.dart';
import 'package:flutter_movie_app/app/features/movies/models/movie_models.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;
  LoginBloc(
      this.remoteDataSource,
      this.localDataSource) : super(LoginInitial()) {
    on<SigningIn>(_signInWithCredentials);
  }

  late List<MovieData> list;

  Future<void> _signInWithCredentials(
      SigningIn event, Emitter<LoginState> emit) async {
    try {
      emit(LoginLoading());

      RequestTokenModel requestTokenResponse =
          await remoteDataSource.getRequestToken();

      RequestTokenModel validatedTokenResponse = await remoteDataSource
          .loginWithCredentials(event.loginCredentialsRequest
              .copyWith(requestToken: requestTokenResponse.requestToken));

      SessionResponseModel sessionResponse = await remoteDataSource.openSession(
          SessionRequestModel(
              requestToken: validatedTokenResponse.requestToken));

      if(sessionResponse.success && sessionResponse.sessionId.isNotEmpty){
        localDataSource.saveSessionId(sessionResponse.sessionId);
      }

      emit(LoginSuccess(sessionResponse: sessionResponse));
    } catch (e) {
      emit(LoginError(errorMessage: e.toString()));
    }
  }
}
