import 'package:flutter/material.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../gen/assets.gen.dart';

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
    return ConfigurationWidget(
        onConfigurationReady: (config, theme) {
          return TextField(
            style: widget.textStyle ?? theme.passwordTextFieldText(),
            obscureText: passwordVisible,
            obscuringCharacter: widget.obscureChar,
            decoration: InputDecoration(
              hintText: widget.hintText ?? context.localization.enterPassword,
              hintStyle: widget.hintTextStyle ?? theme.passwordTextFieldHint(),
              labelText: widget.labelText ?? context.localization.password,
              labelStyle: widget.labelTextStyle ?? theme.passwordTextFieldLabel(),
              suffixIcon: IconButton(
                icon: SvgPicture.asset(
                  MovieAssets.images.eye,
                ),
                onPressed: () {
                  setState(
                        () {
                      passwordVisible = !passwordVisible;
                    },
                  );
                },
              ),
            ),
          );
        });
  }
}