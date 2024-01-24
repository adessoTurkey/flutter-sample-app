import 'package:auto_route/auto_route.dart';
import 'package:flutter_movie_app/app/features/home/home_page.dart';
import 'package:flutter_movie_app/app/features/movies/movies_page.dart';
import 'package:flutter_movie_app/app/features/profile/profile_page.dart';
import 'package:flutter_movie_app/app/features/search/search_page.dart';
import 'package:flutter_movie_app/app/features/tv_series/tv_series_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true, children: [
          AutoRoute(page: MoviesRoute.page),
          AutoRoute(page: TvSeriesRoute.page),
          AutoRoute(page: SearchRoute.page),
          AutoRoute(page: ProfileRoute.page)
        ])
      ];
}
