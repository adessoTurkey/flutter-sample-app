import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/responsive/configuration/configuration.dart';

final class LargeConfiguration extends ResponsiveConfiguration {
  @override
  Size get ratingViewSize => const Size(90, 50);
  
  @override
  double get movieCellMovieNameTextSize => 18;

   @override
  Size get splashLogoSize => const Size(106, 149);


    @override
  EdgeInsets get splashBottomPadding =>48.onlyBottom;

    @override
  double get splashTextSize => 16;
}
