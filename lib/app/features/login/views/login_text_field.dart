import 'package:flutter/material.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class CustomLoginTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextStyle textStyle;
  final String labelText;
  final TextStyle labelTextStyle;
  final String hintText;
  final TextStyle hintTextStyle;

  const CustomLoginTextField({
    required this.controller,
    required this.textStyle,
    required this.labelText,
    required this.labelTextStyle,
    required this.hintText,
    required this.hintTextStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
    onConfigurationReady: (config, theme) {
      return TextField(
        controller: controller,
        style: textStyle,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintTextStyle,
          labelText: labelText,
          labelStyle: labelTextStyle,
        ),
      );
    });
  }
}