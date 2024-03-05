import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';
import '../bloc/login_state.dart';

class CustomLoginTextField extends StatelessWidget {
  final TextStyle textStyle;
  final String labelText;
  final TextStyle labelTextStyle;
  final String hintText;
  final TextStyle hintTextStyle;

  const CustomLoginTextField({
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
      return BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (previous, current) => previous.username != current.username,
          builder: (context, state) {
      return TextField(
      style: textStyle,
      decoration: InputDecoration(
      hintText: hintText,
      hintStyle: hintTextStyle,
      labelText: labelText,
      labelStyle: labelTextStyle,
        errorText:
        state.username.displayError != null ? context.localization.invalid_username : null,
      ),
        onChanged: (username) =>
            context.read<LoginBloc>().add(LoginUsernameChanged(username)),
      );
      });
    });
  }
}