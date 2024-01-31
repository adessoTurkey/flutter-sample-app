import 'package:flutter/material.dart';
import 'package:flutter_movie_app/responsive/configuration/configuration.dart';

final class LargeConfiguration extends ResponsiveConfiguration {
  @override
  Size get ratingViewSize => const Size(90, 50);
  
  @override
  double get movieCellMovieNameTextSize => 22;

  @override
  double get movieCellMovieGenresTextSize => 18;

  @override
  double get headerTextSize => 34;

  @override
  double get carouselCardTitleTextSize => 36;

  @override
  double get carouselCardSubTitleTextSize => 20;
}
