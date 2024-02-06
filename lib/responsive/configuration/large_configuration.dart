import 'package:flutter/material.dart';
import 'package:flutter_movie_app/responsive/configuration/configuration.dart';

final class LargeConfiguration extends ResponsiveConfiguration {
  @override
  Size get ratingViewSize => const Size(90, 50);

  @override
  double get movieCellMovieNameTextSize => 18;

  @override
  double get durationViewIconSize => 24;

  @override
  double get durationViewTextSize => 20;
  
  @override
  double get rateViewIconSize => 26;
  
  @override
  double get rateViewTextSize => 18;
  
  @override
  double get movieDetailDescriptionTextSize => 18;
}
