import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/m_colors.dart';
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
  TextStyle splashTextStyle(double fontSize) => const TextStyle().textStyleW300(fontSize, MColors.white);

}