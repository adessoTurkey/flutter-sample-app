import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/api_call/network/network.dart';
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import '../constants/constants.dart';
import 'cache_manager.dart';

class AuthCacheManager {
  Future<bool> isLoggedIn() async {
    return (await CacheManager.getBool(AuthEnums.login.path)) ?? false;
  }

  Future<void> signOut() async {
    await CacheManager.clearAll();
  }

  Future<void> updateLoggedIn(bool isLoggedIn) async {
    await CacheManager.setBool(AuthEnums.login.path, isLoggedIn);
  }

  Future<void> updateToken(String? token) async {
    if (token != null) {
      await CacheManager.setString(AuthEnums.token.path, token);
      // NetworkService(baseUrl: dotenv.get(EnvConstants.baseUrl))
      //     .addBasicAuth(token);
      // DioManager.instance.dio.options
      //     .headers[(MapEntry('Authorization', 'token $token'))];

      /// Actually, we will not need it for this application.
      /// But I've included it here for instructive purposes.
    } else {
      if (await CacheManager.containsKey(AuthEnums.token.path)) {
        await CacheManager.remove(AuthEnums.token.path);
        // DioManager.instance.dio.options.headers.clear();
      }
    }
  }

  Future<void> updateTokenFromStorage() async {
    if (await CacheManager.containsKey(AuthEnums.token.path)) {
      final token = await CacheManager.getString(AuthEnums.token.path);
      if (token != null) {
        // NetworkService(baseUrl: dotenv.get(EnvConstants.baseUrl))
        //     .addBasicAuth(token);
        // DioManager.instance.dio.options
        //     .headers[(MapEntry('Authorization', 'token $token'))];

        /// Actually, we will not need it for this application.
        /// But I've included it here for instructive purposes.
      }
    }
  }
}
