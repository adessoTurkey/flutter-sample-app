import 'package:flutter/material.dart';

extension PaddingExtensions on num{
  EdgeInsets get onlyBottom => EdgeInsets.only(bottom: toDouble());
}