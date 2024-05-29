import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/localization/app_localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../gen/assets.gen.dart';

class LoginPasswordField extends StatelessWidget {
  const LoginPasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return ConfigurationWidget(onConfigurationReady: (config, theme) {
        return TextField(
          style: theme.loginTextFieldText(config.loginFieldTextTextSize),
          obscureText: !state.passwordVisible,
          obscuringCharacter: AppConstants.passwordObscureCharacter,
          onChanged: (password) =>
              context.read<LoginBloc>().add(LoginPasswordChanged(password)),
          decoration: InputDecoration(
            errorText: state.password.displayError != null
                ? context.localization.invalid_password
                : null,
            hintText: context.localization.enterPassword,
            hintStyle: theme.loginTextFieldHint(config.loginFieldHintTextSize),
            labelText: context.localization.password,
            labelStyle:
                theme.loginTextFieldLabel(config.loginFieldLabelTextSize),
            suffixIcon: IconButton(
              icon: SvgPicture.asset(
                MovieAssets.images.eye,
              ),
              onPressed: () {
                context.read<LoginBloc>().add(LoginPasswordToggleVisibility());
              },
            ),
          ),
        );
      });
    });
  }
}
