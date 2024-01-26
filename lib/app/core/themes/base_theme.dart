import 'package:flutter/material.dart';

abstract base class BaseTheme {
  BottomNavigationBarThemeData get bottomNavigationTheme;
  AppBarTheme get appbarTheme;

  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        appBarTheme: appbarTheme,
        bottomNavigationBarTheme: bottomNavigationTheme,
      );
}
