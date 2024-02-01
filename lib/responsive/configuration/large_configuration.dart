import 'package:flutter/material.dart';
import 'package:flutter_movie_app/responsive/configuration/configuration.dart';

final class LargeConfiguration extends ResponsiveConfiguration {
  @override
  Size get ratingViewSize => const Size(90, 50);

  @override
  Size get movieCarouselContainerSize => const Size(0, 350);

  @override
  double get movieCellMovieNameTextSize => 22;

  @override
  double get movieCellMovieGenresTextSize => 18;

  @override
  double get movieCellImageWidth => 100;

  @override
  double get headerTextSize => 34;

  @override
  double get carouselCardTitleTextSize => 36;

  @override
  double get carouselCardSubTitleTextSize => 20;

  @override
  double get releaseDateViewDateTextSize => 14;

  @override
  double get releaseDateViewDateIconSize => 20;
}
