import 'package:flutter/material.dart';

abstract class ResponsiveConfiguration {
  Size get ratingViewSize;
  double get movieCellMovieNameTextSize;
  double get splashTextSize;
  Size get splashLogoSize;

  EdgeInsets get splashBottomPadding;

}
