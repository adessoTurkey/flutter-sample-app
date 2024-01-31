import 'package:flutter/material.dart';
import 'package:flutter_movie_app/responsive/configuration/configuration.dart';

class MediumConfiguration extends ResponsiveConfiguration {
  @override
  Size get ratingViewSize => const Size(80, 50);

  @override
  double get movieCellMovieNameTextSize => 18;

  @override
  double get movieCellMovieGenresTextSize => 16;

  @override
  double get headerTextSize => 30;

  @override
  double get carouselCardTitleTextSize => 32;

  @override
  double get carouselCardSubTitleTextSize => 18;
}
