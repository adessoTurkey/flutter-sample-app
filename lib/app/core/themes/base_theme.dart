import 'package:flutter/material.dart';

abstract class ATheme {
  BottomNavigationBarThemeData get bottomNavigationTheme;
  AppBarTheme get appbarTheme;

  TextStyle movieCellMovieNameTextStyle(double fontSize);

  TextStyle durationViewTextStyle(double fontSize);
  TextStyle rateViewTextStyle(double fontSize);
  TextStyle movieDetailDescriptionTextStyle(double fontSize);
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        appBarTheme: appbarTheme,
        bottomNavigationBarTheme: bottomNavigationTheme,
      );
}
