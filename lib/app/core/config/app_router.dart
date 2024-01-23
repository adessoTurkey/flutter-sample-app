
import 'package:auto_route/auto_route.dart';
import 'package:flutter_movie_app/app/features/home/home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()   
class AppRouter extends _$AppRouter{
  @override
  List<AutoRoute> get routes => [
      AutoRoute(page: HomeRoute.page,initial: true)
  ];

  }