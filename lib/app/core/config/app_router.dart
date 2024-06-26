import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/features/home/home_page.dart';
import 'package:flutter_movie_app/app/features/login/login.dart';
import 'package:flutter_movie_app/app/features/movie_detail/movie_detail.dart';
import 'package:flutter_movie_app/app/features/movies/movies.dart';
import 'package:flutter_movie_app/app/features/movies/view/movies_page.dart';
import 'package:flutter_movie_app/app/features/profile/views/profile_page.dart';
import 'package:flutter_movie_app/app/features/search/views/search_page.dart';
import 'package:flutter_movie_app/app/features/splash/splash_page.dart';
import 'package:flutter_movie_app/app/features/tv_series/view/tv_series_page.dart';
import 'package:flutter_movie_app/app/features/tv_series_detail/tv_series_detail.dart';

import '../../features/actor/view/actor_detail_page.dart';
import '../../features/cinema_map/cinema_map.dart';
import '../../features/tv_series_detail/view/tv_series_detail_page.dart';

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
        AutoRoute(page: WebViewRoute.page),
        AutoRoute(page: TvSeriesDetailRoute.page),
        AutoRoute(page: CinemaMapRoute.page),
        AutoRoute(page: ActorDetailRoute.page),
      ];
}
