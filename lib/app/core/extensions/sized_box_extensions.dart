import 'package:flutter/material.dart';

extension SizedBoxExtensions on num{
  SizedBox get verticalSizedBox => SizedBox(height: toDouble(),);
  SizedBox get horizontalSizedBox => SizedBox(width: toDouble(),);
}