import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

@RoutePage()
class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(onConfigurationReady: (configuration, theme) {
      return Center(
          child: Text(
        "Movies Page",
        style: theme.movieCellMovieNameTextStyle(
            configuration.movieCellMovieNameTextSize),
      ));
    });
  }
}
