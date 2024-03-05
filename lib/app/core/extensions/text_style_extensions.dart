import 'package:flutter/material.dart';

extension TextStyleExtensions on TextStyle {
  FontWeight get _bold => FontWeight.bold;
  FontWeight get _w8 => FontWeight.w800;
  FontWeight get _light5 => FontWeight.w500;
  FontWeight get _light4 => FontWeight.w400;

  TextStyle movieCellMovieNameTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _bold,
        color: color,
      );

  TextStyle movieCellMovieGenresTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _light5,
        color: color,
      );

  TextStyle moviesViewHeaderTextStyle(double fontSize, Color color) => copyWith(
        fontSize: fontSize,
        fontWeight: _bold,
        color: color,
      );

  TextStyle carouselCardTitleTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _bold,
        color: color,
      );

  TextStyle carouselCardSubTitleTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _light5,
        color: color,
      );

  TextStyle ratingViewRateTextStyle(double fontSize, Color color) => copyWith(
        fontSize: fontSize,
        fontWeight: _light5,
        color: color,
      );

  TextStyle releaseDateViewDateTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _light5,
        color: color,
      );

  TextStyle moviesPageListViewTitleTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _bold,
        color: color,
      );

  TextStyle moviesPageAppBarTitleTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _light4,
        color: color,
      );

  TextStyle durationViewTextStyle(double fontSize, Color color) => copyWith(
        fontSize: fontSize,
        fontWeight: _light4,
        color: color,
      );

  TextStyle rateViewTextStyle(double fontSize, Color color) => copyWith(
        fontSize: fontSize,
        fontWeight: _light5,
        color: color,
      );
  TextStyle movieDetailDescriptionTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _light4,
        color: color,
      );

  TextStyle movieDetailTrailerTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _bold,
        color: color,
      );

  TextStyle movieDetailMovieTitleTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _bold,
        color: color,
      );
  TextStyle movieDetailMovieGenresTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _light4,
        color: color,
      );

  TextStyle movieDetailCastLeftLabelTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _light4,
        color: color,
      );

  TextStyle movieDetailCastRightLabelTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _bold,
        color: color,
      );

  TextStyle profileHeaderLabelTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _bold,
        color: color,
      );

  TextStyle profileSubHeaderLabelTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _light5,
        color: color,
      );

  TextStyle profileUsernameLabelTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _bold,
        color: color,
      );

  TextStyle profileFavoriteCellTitleTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _w8,
        color: color,
      );

  TextStyle profileFavoriteCellSubTitleTextStyle(
          double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _light5,
        color: color,
      );

  TextStyle profileFavoriteListTitleTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _bold,
        color: color,
      );

  TextStyle searchViewTitleTextStyle(double fontSize, Color color) => copyWith(
        fontSize: fontSize,
        fontWeight: _bold,
        color: color,
      );

  TextStyle searchListCellViewTitleTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _bold,
        color: color,
      );

  TextStyle searchTextFieldButtonTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _light4,
        color: color,
      );

  TextStyle searchListCellViewInfoTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _light4,
        color: color,
      );

  TextStyle searchListCellViewTypeTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _light4,
        color: color,
      );

  TextStyle searchViewNoResultTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _bold,
        color: color,
      );

}
