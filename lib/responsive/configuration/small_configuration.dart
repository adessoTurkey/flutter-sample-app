import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/responsive/configuration/configuration.dart';

class SmallConfiguration extends ResponsiveConfiguration {
  @override
  Size get ratingViewSize => const Size(75, 50);

  @override
  double get movieCellMovieNameTextSize => 14;

  @override
  Size get splashLogoSize => const Size(106, 149);
  
  @override
  EdgeInsets get splashBottomPadding => 48.onlyBottom;

  @override
  double get splashTextSize => 15;
}
