import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/extensions/text_style_extensions.dart';
import 'package:flutter_movie_app/app/core/themes/themes.dart';

final class DarkTheme extends ATheme{
  @override
 
  BottomNavigationBarThemeData get bottomNavigationTheme => const BottomNavigationBarThemeData();
  
  @override
  AppBarTheme get appbarTheme => const AppBarTheme();
  
  
  @override
  TextStyle movieCellMovieNameTextStyle(double fontSize) {
    return const TextStyle().movieCellMovieNameTextStyle(fontSize, MColors.white);
  }

}