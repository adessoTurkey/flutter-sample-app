import 'package:flutter/material.dart';
import 'package:flutter_movie_app/responsive/configuration/configuration.dart';

class SmallConfiguration extends ResponsiveConfiguration {
  @override
  Size get ratingViewSize => const Size(75, 50);

  @override
  double get movieCellMovieNameTextSize => 16;

  @override
  double get movieCellMovieGenresTextSize => 14;

  @override
  double get headerTextSize => 26;

  @override
  double get carouselCardTitleTextSize => 28;

  @override
  double get carouselCardSubTitleTextSize => 16;
}
