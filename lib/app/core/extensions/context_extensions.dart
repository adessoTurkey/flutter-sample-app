import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;

  double heightFactor(double heightFactor) =>
      screenSize.height * heightFactor;

  double widthFactor(double widthFactor) =>
      screenSize.width * widthFactor;
}
