import 'package:flutter/material.dart';

abstract class ResponsiveConfiguration {
  Size get ratingViewSize;
  double get movieCellMovieNameTextSize;
  
  double get durationViewIconSize;
  double get durationViewTextSize;
  double get rateViewIconSize;
  double get rateViewTextSize;
  double get movieDetailDescriptionTextSize;
}
