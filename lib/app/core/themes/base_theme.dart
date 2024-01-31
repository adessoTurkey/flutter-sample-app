import 'package:flutter/material.dart';

abstract  class ATheme {
  BottomNavigationBarThemeData get bottomNavigationTheme;
  AppBarTheme get appbarTheme;
  
 

  ThemeData get themeData => ThemeData(
        useMaterial3: true,
                appBarTheme: appbarTheme,
        bottomNavigationBarTheme: bottomNavigationTheme,
      );

 TextStyle movieCellMovieNameTextStyle(double fontSize);

 TextStyle splashTextStyle(double fontSize);

}
