import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/extensions/text_style_extensions.dart';
import 'package:flutter_movie_app/app/core/themes/themes.dart';

final class DarkTheme extends ATheme {
  @override
  BottomNavigationBarThemeData get bottomNavigationTheme =>
      const BottomNavigationBarThemeData();

  @override
  AppBarTheme get appbarTheme => const AppBarTheme();

  @override
  TextStyle movieCellMovieNameTextStyle(double fontSize) {
    return const TextStyle()
        .movieCellMovieNameTextStyle(fontSize, MColors.white);
  }

  @override
  TextStyle splashTextStyle(double fontSize) =>
      const TextStyle().textStyleW300(fontSize, MColors.black25);

  @override
  TextStyle whiteTextStyle() => const TextStyle(color: MColors.white);

  @override
  TextStyle forgatPassword(double fontSize) =>
      const TextStyle().textStyleW400(fontSize, MColors.white);

  @override
  TextStyle login(double fontSize) =>
      const TextStyle().textStyleW700(fontSize, MColors.vibrantBlue);

  @override
  TextStyle dontHaveAccount(double fontSize) =>
      const TextStyle().textStyleW400(fontSize, MColors.lightGrey);

  @override
  TextStyle registerNow(double fontSize) =>
      const TextStyle().textStyleW400(fontSize, MColors.white);
}
