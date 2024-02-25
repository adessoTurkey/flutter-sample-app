import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../gen/assets.gen.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';
import '../bloc/login_state.dart';

class CustomLoginPasswordField extends StatefulWidget {
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
  State<StatefulWidget> createState() {
    return _CustomLoginPasswordField();
  }
}

class _CustomLoginPasswordField extends State<CustomLoginPasswordField> {
  var passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    final passwordBloc = BlocProvider.of<PasswordBloc>(context);
    return BlocBuilder<PasswordBloc, PasswordState>(
        builder: (context, state)
    {
      return ConfigurationWidget(
          onConfigurationReady: (config, theme) {
            return TextField(
              style: widget.textStyle ?? theme.passwordTextFieldText(),
              obscureText: state is PasswordHidden,
              obscuringCharacter: widget.obscureChar,
              decoration: InputDecoration(
                hintText: widget.hintText ?? context.localization.enterPassword,
                hintStyle: widget.hintTextStyle ??
                    theme.passwordTextFieldHint(),
                labelText: widget.labelText ?? context.localization.password,
                labelStyle: widget.labelTextStyle ??
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