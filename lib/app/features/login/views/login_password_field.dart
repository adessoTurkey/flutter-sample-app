import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../gen/assets.gen.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';
import '../bloc/login_state.dart';

class CustomLoginPasswordField extends StatefulWidget {
  final TextStyle textStyle;
  final String labelText;
  final TextStyle labelTextStyle;
  final String hintText;
  final TextStyle hintTextStyle;
  final String obscureChar;

  const CustomLoginPasswordField({
    required this.textStyle,
    required this.labelText,
    required this.labelTextStyle,
    required this.hintText,
    required this.hintTextStyle,
    this.obscureChar = '*',
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _CustomLoginPasswordField();
  }
}

class _CustomLoginPasswordField extends State<CustomLoginPasswordField> {
  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
        onConfigurationReady: (config, theme) {
      return BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return TextField(
            style: widget.textStyle,
            obscureText: !state.passwordVisible,
            obscuringCharacter: widget.obscureChar,
            onChanged: (password) =>
                context.read<LoginBloc>().add(LoginPasswordChanged(password)),
            decoration: InputDecoration(
              errorText:
              state.password.displayError != null ? 'invalid password' : null,
              hintText: widget.hintText,
              hintStyle: widget.hintTextStyle,
              labelText: widget.labelText,
              labelStyle: widget.labelTextStyle,
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
          },
      );
        });
  }
}