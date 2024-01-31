import 'package:flutter/material.dart';

abstract  class ATheme {
  BottomNavigationBarThemeData get bottomNavigationTheme;
  AppBarTheme get appbarTheme;
  
  TextStyle movieCellMovieNameTextStyle(double fontSize);

  ThemeData get themeData => ThemeData(
        useMaterial3: true,
                appBarTheme: appbarTheme,
        bottomNavigationBarTheme: bottomNavigationTheme,
      );


}
