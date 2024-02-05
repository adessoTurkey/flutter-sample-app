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
  EdgeInsets get splashBottomPadding => 48.onlyBottom;

  @override
  double get splashTextSize => 16;

  @override
  Size get loginLogoSize => const Size(106, 149);

  @override
  Size get splashHeartSize => const Size(19, 19);

  @override
  EdgeInsets get loginPagePadding =>
      const EdgeInsets.only(left: 24, right: 24, top: 134);

  @override
  double get forgatPasswordTextSize => 12;

  @override
  double get loginTextSize => 17;

  @override
  double get dontHaveAccountTextSize => 12;

  @override
  double get registerNowTextSize => 12;
}
