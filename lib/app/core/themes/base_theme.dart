import 'package:flutter/material.dart';

abstract class ATheme {
  BottomNavigationBarThemeData get bottomNavigationTheme;
  AppBarTheme get appbarTheme;
  Color get primaryColor;
  Color get scaffoldBackgroundColor;

  TextStyle movieCellMovieNameTextStyle(double fontSize);

  TextStyle movieCellMovieGenresTextStyle(double fontSize);

  TextStyle moviesViewHeaderTextStyle(double fontSize);

  TextStyle carouselCardTitleTextStyle(double fontSize);

  TextStyle carouselCardSubTitleTextStyle(double fontSize);

  TextStyle ratingViewRateTextStyle(double fontSize);

  TextStyle releaseDateViewDateTextStyle(double fontSize);

  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        appBarTheme: appbarTheme,
        bottomNavigationBarTheme: bottomNavigationTheme,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor
      );
}
