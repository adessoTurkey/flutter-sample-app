// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ActorDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ActorDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ActorDetailPage(
          actorId: args.actorId,
          key: args.key,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    MovieDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MovieDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MovieDetailPage(
          movieId: args.movieId,
          key: args.key,
        ),
      );
    },
    MoviesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MoviesPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    TvSeriesDetailRoute.name: (routeData) {
      final args = routeData.argsAs<TvSeriesDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TvSeriesDetailPage(
          key: args.key,
          tvSeriesId: args.tvSeriesId,
        ),
      );
    },
    TvSeriesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TvSeriesPage(),
      );
    },
    WebViewRoute.name: (routeData) {
      final args = routeData.argsAs<WebViewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WebViewPage(
          url: args.url,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [ActorDetailPage]
class ActorDetailRoute extends PageRouteInfo<ActorDetailRouteArgs> {
  ActorDetailRoute({
    required int actorId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ActorDetailRoute.name,
          args: ActorDetailRouteArgs(
            actorId: actorId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ActorDetailRoute';

  static const PageInfo<ActorDetailRouteArgs> page =
      PageInfo<ActorDetailRouteArgs>(name);
}

class ActorDetailRouteArgs {
  const ActorDetailRouteArgs({
    required this.actorId,
    this.key,
  });

  final int actorId;

  final Key? key;

  @override
  String toString() {
    return 'ActorDetailRouteArgs{actorId: $actorId, key: $key}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MovieDetailPage]
class MovieDetailRoute extends PageRouteInfo<MovieDetailRouteArgs> {
  MovieDetailRoute({
    required int movieId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MovieDetailRoute.name,
          args: MovieDetailRouteArgs(
            movieId: movieId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieDetailRoute';

  static const PageInfo<MovieDetailRouteArgs> page =
      PageInfo<MovieDetailRouteArgs>(name);
}

class MovieDetailRouteArgs {
  const MovieDetailRouteArgs({
    required this.movieId,
    this.key,
  });

  final int movieId;

  final Key? key;

  @override
  String toString() {
    return 'MovieDetailRouteArgs{movieId: $movieId, key: $key}';
  }
}

/// generated route for
/// [MoviesPage]
class MoviesRoute extends PageRouteInfo<void> {
  const MoviesRoute({List<PageRouteInfo>? children})
      : super(
          MoviesRoute.name,
          initialChildren: children,
        );

  static const String name = 'MoviesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TvSeriesDetailPage]
class TvSeriesDetailRoute extends PageRouteInfo<TvSeriesDetailRouteArgs> {
  TvSeriesDetailRoute({
    Key? key,
    required int tvSeriesId,
    List<PageRouteInfo>? children,
  }) : super(
          TvSeriesDetailRoute.name,
          args: TvSeriesDetailRouteArgs(
            key: key,
            tvSeriesId: tvSeriesId,
          ),
          initialChildren: children,
        );

  static const String name = 'TvSeriesDetailRoute';

  static const PageInfo<TvSeriesDetailRouteArgs> page =
      PageInfo<TvSeriesDetailRouteArgs>(name);
}

class TvSeriesDetailRouteArgs {
  const TvSeriesDetailRouteArgs({
    this.key,
    required this.tvSeriesId,
  });

  final Key? key;

  final int tvSeriesId;

  @override
  String toString() {
    return 'TvSeriesDetailRouteArgs{key: $key, tvSeriesId: $tvSeriesId}';
  }
}

/// generated route for
/// [TvSeriesPage]
class TvSeriesRoute extends PageRouteInfo<void> {
  const TvSeriesRoute({List<PageRouteInfo>? children})
      : super(
          TvSeriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'TvSeriesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WebViewPage]
class WebViewRoute extends PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    required String url,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          WebViewRoute.name,
          args: WebViewRouteArgs(
            url: url,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'WebViewRoute';

  static const PageInfo<WebViewRouteArgs> page =
      PageInfo<WebViewRouteArgs>(name);
}

class WebViewRouteArgs {
  const WebViewRouteArgs({
    required this.url,
    this.key,
  });

  final String url;

  final Key? key;

  @override
  String toString() {
    return 'WebViewRouteArgs{url: $url, key: $key}';
  }
}
