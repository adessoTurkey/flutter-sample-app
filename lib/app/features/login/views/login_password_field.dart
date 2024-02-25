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
  final TextStyle? textStyle;
  final String? labelText;
  final TextStyle? labelTextStyle;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final String obscureChar;

  const CustomLoginPasswordField({
     this.textStyle,
     this.labelText,
     this.labelTextStyle,
     this.hintText,
     this.hintTextStyle,
    this.obscureChar = '*',
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final passwordBloc = BlocProvider.of<PasswordBloc>(context);
    return BlocBuilder<PasswordBloc, PasswordState>(
        builder: (context, state)
        {
          return ConfigurationWidget(
              onConfigurationReady: (config, theme) {
                return TextField(
                  style: textStyle ?? theme.passwordTextFieldText(),
                  obscureText: state is PasswordHidden,
                  obscuringCharacter: obscureChar,
                  decoration: InputDecoration(
                    hintText: hintText ?? context.localization.enterPassword,
                    hintStyle: hintTextStyle ??
                        theme.passwordTextFieldHint(),
                    labelText: labelText ?? context.localization.password,
                    labelStyle: labelTextStyle ??
                        theme.passwordTextFieldLabel(),
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