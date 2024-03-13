import 'package:flutter/material.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import '../../../core/constants/m_colors.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';
import '../bloc/login_state.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});


  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
        onConfigurationReady: (config, theme)
    {
      return BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return ElevatedButton(
              onPressed: state.isValid
                  ? () {
                context.read<LoginBloc>().add(const LoginSubmitted());
              }
                  : null,
              style: ElevatedButton.styleFrom(
                  textStyle: theme.login(config.loginTextSize),
                backgroundColor: MColors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(config.loginButtonHeight))),
                elevation: 0,
                minimumSize: Size.fromHeight(config.loginButtonHeight),
              ),
              child: Text(
                context.localization.login,
                style: theme.login(config.loginTextSize),
              ),
            );
          });
    },);
  }
}