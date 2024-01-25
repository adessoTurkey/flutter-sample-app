import 'package:flutter/foundation.dart';
import 'package:flutter_movie_app/app/core/themes/themes.dart';
import 'package:flutter_movie_app/localization/localization_helper.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../app/core/config/app_router.dart';
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


  // Register singleton instances using GetIt
  getIt
    ..registerLazySingleton<LocalizationHelper>(
      LocalizationHelper.new,
    )
    ..registerSingleton<AppRouter>(AppRouter())
    ..registerSingleton<LightTheme>(LightTheme())
    ..registerSingleton<DarkTheme>(DarkTheme())
    ..registerSingleton<ThemeFactory>(ThemeFactory())
    ..registerLazySingleton<Talker>(() => talker);
}
