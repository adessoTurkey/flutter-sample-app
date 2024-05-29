import 'package:flutter_movie_app/app/core/themes/themes.dart';
import 'package:flutter_movie_app/di/dependency_injection.dart';

abstract final class ThemeFactory {
   static ATheme getTheme(ThemeEnum theme) {
    late ATheme baseTheme;
    switch (theme) {
      case ThemeEnum.light:
        baseTheme = getIt<LightTheme>();
      case ThemeEnum.dark:
        baseTheme = getIt<DarkTheme>();
    }

    return baseTheme;
  }
}