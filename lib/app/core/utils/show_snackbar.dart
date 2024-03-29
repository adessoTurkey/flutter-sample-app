import 'package:flutter/material.dart';

SnackBar showSnackBar({
  required String title,
  required Color backgroundColor,
  TextStyle? textStyle,
}) {
  return SnackBar(
    backgroundColor: backgroundColor,
    content: Text(
      title,
      style: textStyle,
    ),
  );
}
