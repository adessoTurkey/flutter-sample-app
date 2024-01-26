import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/m_colors.dart';
import 'package:flutter_movie_app/app/core/themes/base_theme.dart';

final class LightTheme extends BaseTheme{
  @override
  BottomNavigationBarThemeData get bottomNavigationTheme => const BottomNavigationBarThemeData(
    selectedItemColor: MColors.electricBlue,
    unselectedItemColor: MColors.almostBlack,
    backgroundColor: MColors.white,
    
  );

   @override
  AppBarTheme get appbarTheme => const AppBarTheme(color: MColors.vibrantBlue);

}