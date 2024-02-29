import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../gen/assets.gen.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';
import '../bloc/login_state.dart';

class CustomLoginPasswordField extends StatelessWidget {
  const CustomLoginPasswordField({super.key});


  @override
  Widget build(BuildContext context) {
    final passwordBloc = BlocProvider.of<PasswordBloc>(context);
    return BlocBuilder<PasswordBloc, PasswordState>(
        builder: (context, state)
        {
          bool isHidden = true;
          if(state is PasswordVisibility){
            isHidden = state.isHidden;
          }
          return ConfigurationWidget(
              onConfigurationReady: (config, theme) {
                return TextField(
                  style: theme.passwordTextFieldText(config.loginPasswordTextTextSize),
                  obscureText: isHidden,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: context.localization.enterPassword,
                    hintStyle: theme.passwordTextFieldHint(config.loginPasswordHintTextSize),
                    labelText: context.localization.password,
                    labelStyle: theme.passwordTextFieldLabel(config.loginPasswordLabelTextSize),
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(
                        MovieAssets.images.eye,
                      ),
                      onPressed: () {
                        passwordBloc.add(TogglePasswordVisibility());
                      },
                    ),
                  ),
                );
              });
        });
  }
}