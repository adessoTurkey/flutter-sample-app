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
  Color get primaryColor => MColors.electricBlue;

  @override
  Color get scaffoldBackgroundColor => MColors.white;

  @override
  TextStyle movieCellMovieNameTextStyle(double fontSize) {
    return const TextStyle().movieCellMovieNameTextStyle(fontSize, MColors.white);
  }

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
    return const TextStyle().carouselCardSubTitleTextStyle(fontSize, Colors.white);
  }

  @override
  TextStyle carouselCardTitleTextStyle(double fontSize) {
    return const TextStyle()
        .carouselCardTitleTextStyle(fontSize, Colors.white);
  }

  @override
  TextStyle ratingViewRateTextStyle(double fontSize) {
    return const TextStyle().ratingViewRateTextStyle(fontSize, Colors.white);
  }

  @override
  TextStyle releaseDateViewDateTextStyle(double fontSize) {
    return const TextStyle().releaseDateViewDateTextStyle(fontSize, MColors.black25);
  }

}