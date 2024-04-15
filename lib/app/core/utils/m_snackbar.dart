import 'package:flutter/material.dart';

SnackBar mSnackBar({
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
