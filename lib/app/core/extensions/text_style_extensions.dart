import 'package:flutter/material.dart';

extension TextStyleExtensions on TextStyle {
  FontWeight get _bold => FontWeight.bold;
  FontWeight get _light => FontWeight.w500;

  TextStyle movieCellMovieNameTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _bold,
        color: color,
      );

  TextStyle movieCellMovieGenresTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _light,
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
        fontWeight: _light,
        color: color,
      );
}
