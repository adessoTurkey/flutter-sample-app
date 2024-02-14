import 'package:flutter/material.dart';

extension PaddingExtensions on num {
  EdgeInsets get onlyBottom => EdgeInsets.only(bottom: toDouble());
  EdgeInsets get onlyVertical => EdgeInsets.symmetric(vertical: toDouble());
  EdgeInsets get all => EdgeInsets.all(toDouble());
}
