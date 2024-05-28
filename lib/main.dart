import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'api_call/api_call.dart';
import 'app/app.dart';
import 'di/dependency_injection.dart';
import 'localization/localization.dart';
import 'responsive/responsive.dart';

void main() async {
  await dotenv.load(fileName: ".env");

  final features = <InitializationAdapter>[
    DependencyInjection.shared,
  ];

  for (final feature in features) {
    feature.initialize();
    MLogger.log.debug('${feature.runtimeType} initialized');
  }

  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (_) => LocalizationsBloc()),
    BlocProvider(
        create: (_) => ProfileBloc(getIt<RemoteDataSource>())
          ..add(const ProfileFetchingEvent())),
    BlocProvider(
        create: (_) => ThemeBloc()
          ..add(const ChangeThemeEvent(themeType: ThemeEnum.light)),
        lazy: false),
    //TODO: Should fetch the films after login?.
    BlocProvider(
        create: (_) => MoviesBloc(getIt<RemoteDataSource>())
          ..add(const MoviesFetching(
              categoryType: MovieCategoriesEnum.topRated))),
    BlocProvider(
        create: (_) => TvSeriesBloc(getIt<RemoteDataSource>())
          ..add(
              const TvSeriesFetching(categoryType: TvSeriesCategory.topRated))),
    BlocProvider(
      create: (_) => AuthenticationBloc(
        getIt<AuthenticationRepository>(),
      )..add(AppStarted()),
    ),
    BlocProvider(
        create: (_) =>
            GenreBloc(getIt<RemoteDataSource>())..add(GenreFetching())),
    BlocProvider(
        create: (_) => LoginBloc(
            getIt<RemoteDataSource>(), getIt<AuthenticationRepository>())),
    BlocProvider(
        create: (context) => TvSeriesDetailBloc(
            remoteDataSource: getIt<RemoteDataSource>(),
            profileBloc: context.read<ProfileBloc>())),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var responsiveType = context.responsiveType();
    final router = AppRouter();
    return BlocProvider(
      create: (_) => ResponsiveConfigurationBloc()
        ..add(ChangeConfigurationEvent(responsiveType: responsiveType)),
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
