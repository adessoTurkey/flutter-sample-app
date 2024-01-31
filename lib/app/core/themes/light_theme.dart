import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/extensions/text_style_extensions.dart';
import 'package:flutter_movie_app/app/core/themes/base_theme.dart';

final class LightTheme extends ATheme{
  @override
  BottomNavigationBarThemeData get bottomNavigationTheme => const BottomNavigationBarThemeData(
    selectedItemColor: MColors.electricBlue,
    unselectedItemColor: MColors.almostBlack,
    backgroundColor: MColors.white,
    
  );

   @override
  AppBarTheme get appbarTheme => const AppBarTheme(color: MColors.vibrantBlue);

@override
  TextStyle movieCellMovieNameTextStyle(double fontSize) {
    return const TextStyle().movieCellMovieNameTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle movieCellMovieGenresTextStyle(double fontSize) {
    return const TextStyle()
        .movieCellMovieGenresTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle moviesViewHeaderTextStyle(double fontSize) {
    return const TextStyle().moviesViewHeaderTextStyle(fontSize, Colors.white);
  }

  @override
  TextStyle carouselCardSubTitleTextStyle(double fontSize) {
    return const TextStyle().carouselCardTitleTextStyle(fontSize, MColors.almostBlack);
  }

  @override
  TextStyle carouselCardTitleTextStyle(double fontSize) {
    return const TextStyle()
        .carouselCardSubTitleTextStyle(fontSize, MColors.almostBlack);
  }

}