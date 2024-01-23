import 'package:flutter_movie_app/di/dependency_injection.dart';
import 'package:talker_flutter/talker_flutter.dart';

 final  class MLogger {
  final Talker talker = getIt<Talker>();

  static final log= MLogger();

  void debug(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    talker.logTyped(TalkerLog(message.toString()), logLevel: LogLevel.debug);
  }

  void error(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    talker.logTyped(
      TalkerLog(
        message.toString(),
        stackTrace: stackTrace,
      ),
      logLevel: LogLevel.error,
    );
  }

  void info(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    talker.logTyped(
      TalkerLog(message.toString()),
      logLevel: LogLevel.info,
    );
  }

  void verbose(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    talker.logTyped(
      TalkerLog(message.toString()),
      logLevel: LogLevel.verbose,
    );
  }
}
