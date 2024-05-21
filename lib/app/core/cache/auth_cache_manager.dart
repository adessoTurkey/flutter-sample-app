import 'package:flutter_movie_app/app/core/enums/enums.dart';
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

  Future<String?> getSessionId() async {
    return await CacheManager.getString(AuthEnums.sessionId.path);
  }

  Future<void> updateSessionId(String? sessionId) async {
    if (sessionId != null) {
      await CacheManager.setString(AuthEnums.sessionId.path, sessionId);
    }

     else if (await CacheManager.containsKey(AuthEnums.sessionId.path)) {
        await CacheManager.remove(AuthEnums.sessionId.path);
      }
  }
}
