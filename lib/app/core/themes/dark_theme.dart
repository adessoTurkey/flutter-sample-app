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
  TextStyle forgetPassword(double fontSize) =>
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
  @override
  Color get primaryColorLight => MColors.electricBlue;

  @override
  Color get primaryColorDark => MColors.electricBlue;

  @override
  Color get scaffoldBackgroundColor => MColors.white;

  @override
  Color get dividerColor => MColors.borderColor;

  @override
  Color get shadowColor => MColors.almostBlack.withOpacity(.05);

  @override
  TextStyle movieCellMovieGenresTextStyle(double fontSize) {
    return const TextStyle()
        .movieCellMovieGenresTextStyle(fontSize, MColors.white);
  }

  @override
  TextStyle mainPageViewHeaderTextStyle(double fontSize) {
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
  TextStyle mainPageListViewTitleTextStyle(double fontSize) {
    return const TextStyle()
        .mainPageListViewTitleTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle mainPageAppBarTitleTextStyle(double fontSize) {
    return const TextStyle()
        .mainPageAppBarTitleTextStyle(fontSize, MColors.white);
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
  TextStyle detailDescriptionTextStyle(double fontSize) {
    return const TextStyle()
        .movieDetailDescriptionTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle detailTrailerTextStyle(double fontSize) {
    return const TextStyle()
        .movieDetailTrailerTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle detailMovieGenresTextStyle(double fontSize) {
    return const TextStyle()
        .movieDetailMovieGenresTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle detailMovieTitleTextStyle(double fontSize) {
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
  TextStyle loginTextFieldText(double fontSize) => const TextStyle().loginFieldTextTextStyle(fontSize , MColors.white);

  @override
  TextStyle loginTextFieldLabel(double fontSize) => const TextStyle().loginFieldLabelTextStyle(fontSize , MColors.white);

  @override
  TextStyle loginTextFieldHint(double fontSize) => const TextStyle().loginFieldHintTextStyle(fontSize , MColors.white);

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
  TextStyle tvSeriesCellNameTextStyle(double fontSize) {
    return const TextStyle()
        .tvSeriesCellNameTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle tvSeriesDetailSeasonsTextStyle(double fontSize) {
    return const TextStyle().tvSeriesDetailSeasonsTextStyle(fontSize, MColors.white);
  }

  @override
  TextStyle tvSeriesDetailCastTitleTextStyle(double fontSize) {
    return const TextStyle().tvSeriesDetailCastTitleTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle tvSeriesDetailCastNameTextStyle(double fontSize) {
    return const TextStyle().tvSeriesDetailCastNameTextStyle(fontSize, MColors.almostBlack);
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
  TextStyle searchTextFieldButtonTextStyle(double fontSize, bool isEnabled) {
    return const TextStyle().searchTextFieldButtonTextStyle(
        fontSize, isEnabled ? MColors.white : MColors.lightGrey);
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

  @override
  Color get progressIndicatorColor => MColors.youtubePlayed;

}
