import 'package:flutter/material.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class CustomLoginTextField extends StatelessWidget {
  final TextStyle? textStyle;
  final String? labelText;
  final TextStyle? labelTextStyle;
  final String? hintText;
  final TextStyle? hintTextStyle;

   const CustomLoginTextField({
     this.textStyle,
     this.labelText,
     this.labelTextStyle,
     this.hintText,
     this.hintTextStyle,
     super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
    onConfigurationReady: (config, theme) {
      return TextField(
        style: textStyle ?? theme.usernameTextFieldText(),
        decoration: InputDecoration(
          hintText: hintText ?? context.localization.enterEmail,
          hintStyle: hintTextStyle ?? theme.usernameTextFieldHint(),
          labelText: labelText ?? context.localization.email,
          labelStyle: labelTextStyle ?? theme.usernameTextFieldLabel(),
        ),
      );
    });
  }
}