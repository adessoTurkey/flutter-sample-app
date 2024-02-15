import 'package:flutter/material.dart';

extension TextStyleExtensions on TextStyle {
  FontWeight get _bold => FontWeight.bold;
  FontWeight get _light5 => FontWeight.w500;
  FontWeight get _light4 => FontWeight.w400;

  FontWeight get _w300 => FontWeight.w300;

  FontWeight get _w700 => FontWeight.w700;

  TextStyle movieCellMovieNameTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _bold,
        color: color,
      );

  TextStyle textStyleW300(double fontSize, Color color) => copyWith(
        fontSize: fontSize,
        fontWeight: _w300,
        color: color,
      );

  TextStyle textStyleW400(double fontSize, Color color) => copyWith(
        fontSize: fontSize,
        fontWeight: _w300,
        color: color,
      );

  TextStyle textStyleW700(double fontSize, Color color) => copyWith(
        fontSize: fontSize,
        fontWeight: _w700,
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
        fontWeight: _bold,
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
}
