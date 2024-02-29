import 'package:flutter/material.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class CustomLoginTextField extends StatelessWidget {
  const CustomLoginTextField({super.key});


  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
    onConfigurationReady: (config, theme) {
      return TextField(
        style: theme.usernameTextFieldText(config.loginUsernameTextTextSize),
        decoration: InputDecoration(
          hintText: context.localization.enterEmail,
          hintStyle: theme.usernameTextFieldHint(config.loginUsernameHintTextSize),
          labelText: context.localization.email,
          labelStyle: theme.usernameTextFieldLabel(config.loginUsernameLabelTextSize),
        ),
      );
    });
  }
}