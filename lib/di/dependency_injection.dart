import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/api_call/api_repositories/api_repositories.dart';
import 'package:flutter_movie_app/api_call/network/network.dart';
import 'package:flutter_movie_app/app/core/themes/themes.dart';
import 'package:flutter_movie_app/localization/localization_helper.dart';
import 'package:flutter_movie_app/responsive/configuration/configuration.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../app/core/config/app_router.dart';
import '../app/core/constants/env_constants.dart';
import '../app/core/initialization/initialization_adapter.dart';

final getIt = GetIt.instance;

class DependencyInjection implements InitializationAdapter {
  const DependencyInjection._();

  static const shared = DependencyInjection._();

  @override
  void initialize() {
    // Initialize injections during app initialization
    _configureInjection();

    // Configure specific injections for BLoCs
    _configureBlocInjection();
  }
}

// Used for BLoC injections
void _configureBlocInjection() {
  // Specific configurations for BLoC injections can be added here
}

// Used for class injections
void _configureInjection() {
  final talker = TalkerFlutter.init(
    settings: TalkerSettings(enabled: !kReleaseMode),
  );

  final networkService =
      NetworkService(baseUrl: dotenv.get(EnvConstants.baseUrl))
        ..addBasicAuth(dotenv.get(EnvConstants.accessToken));

  // Register singleton instances using GetIt
  getIt
    ..registerLazySingleton<LocalizationHelper>(
      LocalizationHelper.new,
    )
    ..registerSingleton<RemoteDataSource>(
        RemoteDataSourceImpl(networkService: networkService))
    ..registerSingleton<LocalDataSource>(LocalDataSourceImpl())
    ..registerSingleton<AppRouter>(AppRouter())
    ..registerSingleton<LightTheme>(LightTheme())
    ..registerSingleton<DarkTheme>(DarkTheme())
    ..registerSingleton<ErrorParser>(ErrorParser())
    ..registerSingleton<LargeConfiguration>(LargeConfiguration())
    ..registerSingleton<MediumConfiguration>(MediumConfiguration())
    ..registerSingleton<SmallConfiguration>(SmallConfiguration())
    ..registerSingleton<ResponsiveConfigurationFactory>(
        ResponsiveConfigurationFactory())
    ..registerLazySingleton<Talker>(() => talker);
}
