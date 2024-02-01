import 'package:flutter/material.dart';

abstract class ResponsiveConfiguration {
  Size get ratingViewSize;
  Size get movieCarouselContainerSize;
  double get movieCellMovieNameTextSize;
  double get movieCellMovieGenresTextSize;
  double get movieCellImageWidth;
  double get headerTextSize;
  double get carouselCardTitleTextSize;
  double get carouselCardSubTitleTextSize;
  double get releaseDateViewDateTextSize;
  double get releaseDateViewDateIconSize;
  
}
