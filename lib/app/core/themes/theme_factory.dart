import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/themes/themes.dart';
import 'package:flutter_movie_app/di/dependency_injection.dart';

class ThemeFactory {
  static ThemeData getTheme(Themes theme) {
    late BaseTheme baseTheme;
    switch (theme) {
      case Themes.light:
        baseTheme = getIt<LightTheme>();
      case Themes.dark:
        baseTheme = getIt<DarkTheme>();
    }

    return baseTheme.themeData;
  }
}

enum Themes { light, dark }
