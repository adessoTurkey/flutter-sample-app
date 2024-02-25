import 'package:flutter/material.dart';

abstract class ATheme {
  BottomNavigationBarThemeData get bottomNavigationTheme;
  AppBarTheme get appbarTheme;
  Color get primaryColor;
  Color get scaffoldBackgroundColor;

  ThemeData get themeData => ThemeData(
      useMaterial3: true,
      appBarTheme: appbarTheme,
      bottomNavigationBarTheme: bottomNavigationTheme,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor);

  TextStyle movieCellMovieNameTextStyle(double fontSize);

  TextStyle movieCellMovieGenresTextStyle(double fontSize);

  TextStyle moviesViewHeaderTextStyle(double fontSize);

  TextStyle carouselCardTitleTextStyle(double fontSize);

  TextStyle carouselCardSubTitleTextStyle(double fontSize);

  TextStyle ratingViewRateTextStyle(double fontSize);

  TextStyle releaseDateViewDateTextStyle(double fontSize);

  TextStyle moviesPageListViewTitleTextStyle(double fontSize);

  TextStyle moviesPageAppBarTitleTextStyle(double fontSize);

  TextStyle durationViewTextStyle(double fontSize);
  TextStyle rateViewTextStyle(double fontSize);
  TextStyle movieDetailDescriptionTextStyle(double fontSize);
  TextStyle movieDetailTrailerTextStyle(double fontSize);
  TextStyle movieDetailMovieTitleTextStyle(double fontSize);
  TextStyle movieDetailMovieGenresTextStyle(double fontSize);
  TextStyle movieDetailCastLeftLabelTextStyle(double fontSize);
  TextStyle movieDetailCastRightLabelTextStyle(double fontSize);

  TextStyle splashTextStyle(double fontSize);

  TextStyle usernameTextFieldText();
  TextStyle usernameTextFieldLabel();
  TextStyle usernameTextFieldHint();
  TextStyle passwordTextFieldText();
  TextStyle passwordTextFieldLabel();
  TextStyle passwordTextFieldHint();

  TextStyle forgetPassword(double fontSize);

  TextStyle login(double fontSize);

  TextStyle dontHaveAccount(double fontSize);

  TextStyle registerNow(double fontSize);
}
