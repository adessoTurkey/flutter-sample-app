
import 'package:flutter_movie_app/app/core/constants/local_data_source_constants.dart';
import 'package:hive/hive.dart';

abstract class LocalDataSource{
  Future<void> saveSessionId(String sessionId);
  Future<String> getSessionId();
}

final class LocalDataSourceImpl extends LocalDataSource{

  @override
  Future<void> saveSessionId(String sessionId) async {
    final authenticationBox = await Hive.openBox(LocalDataSourceConstants.authenticationBox);
    return await authenticationBox.put(LocalDataSourceConstants.sessionIdKey, sessionId);
  }

  @override
  Future<String> getSessionId() async {
    final authenticationBox = Hive.box(LocalDataSourceConstants.authenticationBox);
    return await authenticationBox.get(LocalDataSourceConstants.sessionIdKey);
  }
}