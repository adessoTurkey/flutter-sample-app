import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/extensions/text_style_extensions.dart';
import 'package:flutter_movie_app/app/core/themes/base_theme.dart';

final class LightTheme extends ATheme {
  @override
  BottomNavigationBarThemeData get bottomNavigationTheme =>
      const BottomNavigationBarThemeData(
        selectedItemColor: MColors.electricBlue,
        unselectedItemColor: MColors.almostBlack,
        backgroundColor: MColors.white,
      );

  @override
  AppBarTheme get appbarTheme => const AppBarTheme(color: MColors.vibrantBlue);

  @override
  Color get primaryColorLight => MColors.electricBlue;

  @override
  Color get primaryColorDark => MColors.electricBlue;

  @override
  Color get scaffoldBackgroundColor => MColors.white;

  @override
  TextStyle movieCellMovieNameTextStyle(double fontSize) {
    return const TextStyle()
        .movieCellMovieNameTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle movieCellMovieGenresTextStyle(double fontSize) {
    return const TextStyle()
        .movieCellMovieGenresTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle moviesViewHeaderTextStyle(double fontSize) {
    return const TextStyle().moviesViewHeaderTextStyle(fontSize, MColors.white);
  }

  @override
  TextStyle carouselCardSubTitleTextStyle(double fontSize) {
    return const TextStyle()
        .carouselCardSubTitleTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle carouselCardTitleTextStyle(double fontSize) {
    return const TextStyle()
        .carouselCardTitleTextStyle(fontSize, MColors.almostBlack);
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

  //PROFILE
  @override
  TextStyle profileHeaderLabelTextStyle(double fontSize) {
    return const TextStyle()
        .profileHeaderLabelTextStyle(fontSize, MColors.white);
  }

  @override
  TextStyle profileSubHeaderLabelTextStyle(double fontSize) {
    return const TextStyle()
        .profileSubHeaderLabelTextStyle(fontSize, MColors.white);
  }

  @override
  TextStyle profileUsernameLabelTextStyle(double fontSize) {
    return const TextStyle()
        .profileUsernameLabelTextStyle(fontSize, MColors.white);
  }

  @override
  TextStyle profileFavoriteCellSubTitleTextStyle(double fontSize) {
    return const TextStyle()
        .profileFavoriteCellSubTitleTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle profileFavoriteCellTitleTextStyle(double fontSize) {
    return const TextStyle()
        .profileFavoriteCellTitleTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle profileFavoriteListTitleTextStyle(double fontSize) {
    return const TextStyle()
        .profileFavoriteListTitleTextStyle(fontSize, MColors.almostBlack);
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

  @override
  TextStyle searchViewNoResultTextStyle(double fontSize) {
    return const TextStyle()
        .searchViewNoResultTextStyle(fontSize, MColors.electricBlue);
  }
}
