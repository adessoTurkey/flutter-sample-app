import 'package:flutter/material.dart';

extension TextStyleExtensions on TextStyle {
  FontWeight get _bold => FontWeight.bold;

  TextStyle movieCellMovieNameTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _bold,
        color: color,
      );
}
