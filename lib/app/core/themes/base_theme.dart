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


  TextStyle carouselCardTitleTextStyle(double fontSize);

  TextStyle carouselCardSubTitleTextStyle(double fontSize);

  TextStyle ratingViewRateTextStyle(double fontSize);

  TextStyle releaseDateViewDateTextStyle(double fontSize);

  TextStyle durationViewTextStyle(double fontSize);
  TextStyle rateViewTextStyle(double fontSize);
  TextStyle movieDetailCastLeftLabelTextStyle(double fontSize);
  TextStyle movieDetailCastRightLabelTextStyle(double fontSize);
  //Profile
  TextStyle profileHeaderLabelTextStyle(double fontSize);
  TextStyle profileSubHeaderLabelTextStyle(double fontSize);
  TextStyle profileUsernameLabelTextStyle(double fontSize);
  TextStyle profileFavoriteCellTitleTextStyle(double fontSize);
  TextStyle profileFavoriteCellSubTitleTextStyle(double fontSize);
  TextStyle profileFavoriteListTitleTextStyle(double fontSize);
  TextStyle searchListCellViewTitleTextStyle(double fontSize);
  TextStyle searchViewTitleTextStyle(double fontSize);
  TextStyle searchTextFieldButtonTextStyle(double fontSize, bool isEnabled);
  TextStyle searchListCellViewInfoTextStyle(double fontSize);
  TextStyle searchListCellViewTypeTextStyle(double fontSize);
  TextStyle searchViewNoResultTextStyle(double fontSize);

  TextStyle splashTextStyle(double fontSize);

  TextStyle loginTextFieldText(double fontSize);
  TextStyle loginTextFieldLabel(double fontSize);
  TextStyle loginTextFieldHint(double fontSize);

  TextStyle forgetPassword(double fontSize);

  TextStyle login(double fontSize);

  TextStyle dontHaveAccount(double fontSize);

  TextStyle registerNow(double fontSize);
  //Tv Series
  TextStyle mainPageListViewTitleTextStyle(double fontSize);
  TextStyle mainPageAppBarTitleTextStyle(double fontSize);
  TextStyle mainPageViewHeaderTextStyle(double fontSize);
  TextStyle tvSeriesCellMovieNameTextStyle(double fontSize);

  //Tv Series Detail
  TextStyle tvSeriesDetailSeasonsTextStyle(double fontSize);
  TextStyle tvSeriesDetailCastTitleTextStyle(double fontSize);
  TextStyle tvSeriesDetailCastNameTextStyle(double fontSize);
  TextStyle detailDescriptionTextStyle(double fontSize);
  TextStyle detailTrailerTextStyle(double fontSize);
  TextStyle detailMovieTitleTextStyle(double fontSize);
  TextStyle detailMovieGenresTextStyle(double fontSize);

  ThemeData get themeData => ThemeData(
      useMaterial3: true,
      appBarTheme: appbarTheme,
      bottomNavigationBarTheme: bottomNavigationTheme,
      primaryColorDark: primaryColorDark,
      primaryColorLight: primaryColorLight,
      dividerColor: dividerColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor);
}
