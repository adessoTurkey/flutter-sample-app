import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/features/home/home_page.dart';
import 'package:flutter_movie_app/app/features/login/login.dart';
import 'package:flutter_movie_app/app/features/movies/movies_page.dart';
import 'package:flutter_movie_app/app/features/movie_detail/movie_detail.dart';
import 'package:flutter_movie_app/app/features/movies/movies.dart';
import 'package:flutter_movie_app/app/features/profile/profile_page.dart';
import 'package:flutter_movie_app/app/features/search/search_page.dart';
import 'package:flutter_movie_app/app/features/splash/splash_page.dart';
import 'package:flutter_movie_app/app/features/tv_series/tv_series_page.dart';
import 'package:flutter_movie_app/app/features/tv_series_detail/tv_series_detail.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true, keepHistory: false),
        AutoRoute(page: LoginRoute.page, keepHistory: false),
        AutoRoute(page: HomeRoute.page, children: [
          AutoRoute(page: MoviesRoute.page),
          AutoRoute(page: TvSeriesRoute.page),
          AutoRoute(page: SearchRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),
        AutoRoute(page: MovieDetailRoute.page),
        AutoRoute(page: TvSeriesDetailRoute.page),
      ];
}
