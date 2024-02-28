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
  Color get primaryColorLight => MColors.electricBlue;

  @override
  Color get primaryColorDark => MColors.electricBlue;

  @override
  Color get scaffoldBackgroundColor => MColors.white;

  @override
  TextStyle movieCellMovieGenresTextStyle(double fontSize) {
    return const TextStyle()
        .movieCellMovieGenresTextStyle(fontSize, MColors.white);
  }

  @override
  TextStyle moviesViewHeaderTextStyle(double fontSize) {
    return const TextStyle()
        .moviesViewHeaderTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle carouselCardSubTitleTextStyle(double fontSize) {
    return const TextStyle()
        .carouselCardSubTitleTextStyle(fontSize, MColors.white);
  }

  @override
  TextStyle carouselCardTitleTextStyle(double fontSize) {
    return const TextStyle()
        .carouselCardTitleTextStyle(fontSize, MColors.white);
  }

  @override
  TextStyle ratingViewRateTextStyle(double fontSize) {
    return const TextStyle().ratingViewRateTextStyle(fontSize, MColors.white);
  }

  @override
  TextStyle releaseDateViewDateTextStyle(double fontSize) {
    return const TextStyle()
        .releaseDateViewDateTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle moviesPageListViewTitleTextStyle(double fontSize) {
    return const TextStyle()
        .moviesPageListViewTitleTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle moviesPageAppBarTitleTextStyle(double fontSize) {
    return const TextStyle()
        .moviesPageAppBarTitleTextStyle(fontSize, MColors.white);
  }

  @override
  TextStyle movieCellMovieNameTextStyle(double fontSize) {
    return const TextStyle()
        .movieCellMovieNameTextStyle(fontSize, MColors.white);
  }

  @override
  TextStyle durationViewTextStyle(double fontSize) {
    return const TextStyle()
        .durationViewTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle rateViewTextStyle(double fontSize) {
    return const TextStyle().rateViewTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle movieDetailDescriptionTextStyle(double fontSize) {
    return const TextStyle()
        .movieDetailDescriptionTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle movieDetailTrailerTextStyle(double fontSize) {
    return const TextStyle()
        .movieDetailTrailerTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle movieDetailMovieGenresTextStyle(double fontSize) {
    return const TextStyle()
        .movieDetailMovieGenresTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle movieDetailMovieTitleTextStyle(double fontSize) {
    return const TextStyle()
        .movieDetailMovieTitleTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle movieDetailCastLeftLabelTextStyle(double fontSize) {
    return const TextStyle()
        .movieDetailCastLeftLabelTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle movieDetailCastRightLabelTextStyle(double fontSize) {
    return const TextStyle()
        .movieDetailCastRightLabelTextStyle(fontSize, MColors.electricBlue);
  }

  @override
  TextStyle searchListCellViewTitleTextStyle(double fontSize) {
    return const TextStyle()
        .searchListCellViewTitleTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle searchViewTitleTextStyle(double fontSize) {
    return const TextStyle().searchViewTitleTextStyle(fontSize, MColors.white);
  }

  @override
  TextStyle searchTextFieldButtonTextStyle(double fontSize) {
    return const TextStyle()
        .searchTextFieldButtonTextStyle(fontSize, MColors.white);
  }

  @override
  TextStyle searchListCellViewInfoTextStyle(double fontSize) {
    return const TextStyle()
        .searchListCellViewInfoTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle searchListCellViewTypeTextStyle(double fontSize) {
    return const TextStyle()
        .searchListCellViewTypeTextStyle(fontSize, MColors.black25);
  }
}
