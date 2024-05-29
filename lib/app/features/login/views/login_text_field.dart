import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/localization/app_localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(onConfigurationReady: (config, theme) {
      return BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (previous, current) =>
              previous.username != current.username,
          builder: (context, state) {
            return TextField(
              style: theme.loginTextFieldText(config.loginFieldTextTextSize),
              decoration: InputDecoration(
                hintText: context.localization.enterUsername,
                hintStyle:
                    theme.loginTextFieldHint(config.loginFieldHintTextSize),
                labelText: context.localization.username,
                labelStyle:
                    theme.loginTextFieldLabel(config.loginFieldLabelTextSize),
                errorText: state.username.displayError != null
                    ? context.localization.invalid_username
                    : null,
              ),
              onChanged: (username) =>
                  context.read<LoginBloc>().add(LoginUsernameChanged(username)),
            );
          });
    });
  }
}
