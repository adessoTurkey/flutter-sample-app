import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../gen/assets.gen.dart';
import '../../../core/constants/app_constants.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';
import '../bloc/login_state.dart';

class CustomLoginPasswordField extends StatelessWidget {
  const CustomLoginPasswordField({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return ConfigurationWidget(
              onConfigurationReady: (config, theme) {
                return TextField(
                  style: theme.passwordTextFieldText(config.loginPasswordTextTextSize),
                  obscureText: !state.passwordVisible,
                  obscuringCharacter: AppConstants.passwordObscureCharacter,
                  onChanged: (password) =>
                      context.read<LoginBloc>().add(LoginPasswordChanged(password)),
                  decoration: InputDecoration(
                    errorText:
                    state.password.displayError != null ? context.localization.invalid_password : null,
                    hintText: context.localization.enterPassword,
                    hintStyle: theme.passwordTextFieldHint(config.loginPasswordHintTextSize),
                    labelText: context.localization.password,
                    labelStyle: theme.passwordTextFieldLabel(config.loginPasswordLabelTextSize),
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(
                        MovieAssets.images.eye,
                      ),
                      onPressed: () {
                        context.read<LoginBloc>().add(LoginPasswordToggleVisibility(state.passwordVisible));
                      },
                    ),
                  ),
                );
              });
        });
  }
}