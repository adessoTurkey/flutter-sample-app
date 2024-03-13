import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/api_call/api_repositories/api_repositories.dart';
import 'package:flutter_movie_app/api_call/api_repositories/remote_data_source.dart';
import 'package:flutter_movie_app/api_call/network/network.dart';
import 'package:flutter_movie_app/app/core/config/app_router.dart';
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/core/initialization/initialization_adapter.dart';
import 'package:flutter_movie_app/app/core/logger/m_logger.dart';
import 'package:flutter_movie_app/app/core/themes/bloc/theme_bloc.dart';
import 'package:flutter_movie_app/app/core/themes/theme_enum.dart';
import 'package:flutter_movie_app/app/features/login/bloc/login_bloc.dart';
import 'package:flutter_movie_app/app/features/movies/bloc/movies_bloc.dart';
import 'package:flutter_movie_app/app/features/profile/bloc/profile_bloc.dart';
import 'package:flutter_movie_app/di/dependency_injection.dart';
import 'package:flutter_movie_app/localization/bloc/localization_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_movie_app/responsive/responsive.dart';

import 'app/core/constants/constants.dart';

void main() async {
  await dotenv.load(fileName: ".env");

  final features = <InitializationAdapter>[
    DependencyInjection.shared,
    // Add other features if needed
  ];

  for (final feature in features) {
    feature.initialize();
    MLogger.log.debug('${feature.runtimeType} initialized');
  }

  NetworkService networkService =
      NetworkService(baseUrl: dotenv.get(EnvConstants.baseUrl))
        ..addBasicAuth(dotenv.get(EnvConstants.accessToken));

  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (_) => LocalizationsBloc()),
    BlocProvider(create: (_) => ProfileBloc(getIt<RemoteDataSource>())..add(const ProfileFetchingEvent())),
    BlocProvider(
        create: (_) => ThemeBloc()
          ..add(const ChangeThemeEvent(themeType: ThemeEnum.light)),
        lazy: false),
    BlocProvider(
        create: (_) => MoviesBloc(getIt<RemoteDataSource>())
          ..add(
              const MoviesFetching(categoryType: MovieCategoriesEnum.popular))),
    BlocProvider(
        create: (_) => LoginBloc(getIt<RemoteDataSource>()))
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
