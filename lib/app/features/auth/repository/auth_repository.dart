// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'package:flutter_movie_app/api_call/api_repositories/api_repositories.dart';
import 'package:flutter_movie_app/api_call/models/session_delete/session_delete_request_model.dart';
import 'package:flutter_movie_app/app/core/cache/auth_cache_manager.dart';
import '../../../core/enums/enums.dart';

class AuthenticationRepository {
  final AuthCacheManager authCacheManager;
  final RemoteDataSource remoteDataSource;
  AuthenticationRepository({
    required this.authCacheManager,
    required this.remoteDataSource,
  });
  final _controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<void> logIn(String? sessionId) async {
    await authCacheManager.updateSessionId(sessionId);
    await authCacheManager.updateLoggedIn(true);
    await Future.delayed(
      const Duration(milliseconds: 300),
      () => _controller.add(AuthenticationStatus.authenticated),
    );
  }

  Future<void> logOut() async {
    var sessionId = await authCacheManager.getSessionId();
    var data = await remoteDataSource.deleteSession(
      SessionDeleteRequestModel(
        sessionId: sessionId,
      ),
    );
    data.success == true ? await authCacheManager.signOut() : null;
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  Future<void> appStarter() async {
    try {
      if (await authCacheManager.isLoggedIn()) {
        _controller.add(AuthenticationStatus.authenticated);
      } else {
        _controller.add(AuthenticationStatus.unauthenticated);
      }
    } catch (e) {
      _controller.add(AuthenticationStatus.unknown);
    }
  }

  void dispose() => _controller.close();
}
