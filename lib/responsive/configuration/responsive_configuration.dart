import 'package:flutter/material.dart';

abstract class ResponsiveConfiguration {
  Size get ratingViewSize;
  double get movieCellMovieNameTextSize;
  double get splashTextSize;
  Size get splashLogoSize;
  Size get splashHeartSize;
  Size get loginLogoSize;
  EdgeInsets get splashBottomPadding;
  EdgeInsets get loginPagePadding;
  double get forgatPasswordTextSize;
  double get loginTextSize;
  double get dontHaveAccountTextSize;
  double get registerNowTextSize;
}
