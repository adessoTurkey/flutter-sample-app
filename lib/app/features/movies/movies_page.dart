import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/config/app_router.dart';
import 'package:flutter_movie_app/app/features/movie_detail/model/movie_detail_model.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

@RoutePage()
class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(onConfigurationReady: (configuration, theme) {
      return Center(
          child: TextButton(
        child: Text(
          "Movies Page",
          style: theme.movieCellMovieNameTextStyle(
              configuration.movieCellMovieNameTextSize),
        ),
        onPressed: () {
          context.pushRoute(
            MovieDetailRoute(
              movieDetail: MovieDetailModel(
                  movieName: "Joker", movieDescription: "sdjsdjshdj"),
            ),
          );
        },
      ));
    });
  }
}
