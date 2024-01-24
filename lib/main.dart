import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/core/config/app_router.dart';
import 'package:flutter_movie_app/app/core/initialization/initialization_adapter.dart';
import 'package:flutter_movie_app/app/core/logger/m_logger.dart';
import 'package:flutter_movie_app/app/features/home/home_page.dart';
import 'package:flutter_movie_app/di/dependency_injection.dart';
import 'package:flutter_movie_app/localization/bloc/localization_bloc.dart';

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
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router= AppRouter();
    return MaterialApp.router(
      routerConfig: router.config(),
      title: 'Flutter Demo',
      theme: ThemeData(
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
