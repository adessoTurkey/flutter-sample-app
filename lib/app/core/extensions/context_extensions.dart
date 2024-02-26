import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;

  double heightFactor({double heightFactor = 0}) =>
      MediaQuery.of(this).size.height * heightFactor;

  double widthFactor({double widthFactor = 0}) =>
      MediaQuery.of(this).size.width * widthFactor;
}
