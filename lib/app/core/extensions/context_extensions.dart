import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;

  double heightFactor(double heightFactor) =>
      MediaQuery.of(this).size.height * heightFactor;

  double widthFactor(double widthFactor) =>
      MediaQuery.of(this).size.width * widthFactor;
}
