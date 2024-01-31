import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/core/config/app_router.dart';
import 'package:flutter_movie_app/app/core/initialization/initialization_adapter.dart';
import 'package:flutter_movie_app/app/core/logger/m_logger.dart';
import 'package:flutter_movie_app/app/core/themes/bloc/theme_bloc.dart';
import 'package:flutter_movie_app/app/core/themes/theme_enum.dart';
import 'package:flutter_movie_app/di/dependency_injection.dart';
import 'package:flutter_movie_app/localization/bloc/localization_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/localization/localization_delegate.dart';
import 'package:flutter_movie_app/responsive/responsive.dart';

void main() {
  final features = <InitializationAdapter>[
    DependencyInjection.shared,
    // Add other features if needed
  ];

  for (final feature in features) {
    feature.initialize();
    MLogger.log.debug('${feature.runtimeType} initialized');
  }

  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (_) => LocalizationsBloc()),
    BlocProvider(
        create: (_) => ThemeBloc()
          ..add(const ChangeThemeEvent(themeType: ThemeEnum.light)),lazy:false)
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var responSiveType = context.responsiveType();
    final router = AppRouter();
    return BlocProvider(
      create: (_) => ResponsiveConfigurationBloc()
        ..add(ChangeConfigurationEvent(responsiveType: responSiveType)),
      child: BlocBuilder<ThemeBloc, ThemeState>(builder: (_, state) {
        if (state is GetThemeState) {
          return MaterialApp.router(
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            routerConfig: router.config(),
            title: 'Flutter Demo',
            theme: state.theme.themeData,
          );
        }

        return Container();
      }),
    );
  }
}
