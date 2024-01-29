import 'package:flutter/material.dart';
import 'package:flutter_movie_app/responsive/configuration/configuration.dart';

class MediumConfiguration extends ResponsiveConfiguration {
  @override
  Size get ratingViewSize => const Size(80, 50);

  @override
  double get movieCellMovieNameTextSize => 16;
}
