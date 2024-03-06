import 'package:flutter/material.dart';

abstract class ATheme {
  BottomNavigationBarThemeData get bottomNavigationTheme;
  AppBarTheme get appbarTheme;
  Color get primaryColorLight;
  Color get primaryColorDark;
  Color get scaffoldBackgroundColor;
  Color get dividerColor;
  Color get shadowColor;

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
  //Profile
  TextStyle profileHeaderLabelTextStyle(double fontSize);
  TextStyle profileSubHeaderLabelTextStyle(double fontSize);
  TextStyle profileUsernameLabelTextStyle(double fontSize);
  TextStyle profileFavoriteCellTitleTextStyle(double fontSize);
  TextStyle profileFavoriteCellSubTitleTextStyle(double fontSize);
  TextStyle profileFavoriteListTitleTextStyle(double fontSize);

  //Tv Series
  TextStyle tvSeriesListViewTitleTextStyle(double fontSize);

  TextStyle tvSeriesAppBarTitleTextStyle(double fontSize);

  ThemeData get themeData => ThemeData(
      useMaterial3: true,
      appBarTheme: appbarTheme,
      bottomNavigationBarTheme: bottomNavigationTheme,
      primaryColorDark: primaryColorDark,
      primaryColorLight: primaryColorLight,
      dividerColor: dividerColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor);
}
