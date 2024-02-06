import 'package:flutter/material.dart';

extension TextStyleExtensions on TextStyle {
  FontWeight get _bold => FontWeight.bold;
  FontWeight get _light5 => FontWeight.w500;
  FontWeight get _light4 => FontWeight.w400;

  TextStyle movieCellMovieNameTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _bold,
        color: color,
      );

  TextStyle durationViewTextStyle(double fontSize, Color color) => copyWith(
        fontSize: fontSize,
        fontWeight: _light5,
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
}
