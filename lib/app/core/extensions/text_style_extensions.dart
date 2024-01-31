import 'package:flutter/material.dart';

extension TextStyleExtensions on TextStyle {
  FontWeight get _bold => FontWeight.bold;

  FontWeight get _w300 => FontWeight.w300; 

  TextStyle movieCellMovieNameTextStyle(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _bold,
        color: color,
      );


  TextStyle textStyleW300(double fontSize, Color color) =>
      copyWith(
        fontSize: fontSize,
        fontWeight: _w300,
        color: color,
      );
}
