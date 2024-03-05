import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:formz/formz.dart';
import '../../../core/constants/m_colors.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';
import '../bloc/login_state.dart';

class CustomLoginButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final double borderRadius;
  final Color backgroundColor;
  final double elevation;
  final double minHeight;

  const CustomLoginButton({
    required this.text,
    required this.textStyle,
    this.borderRadius = 5,
    this.backgroundColor = MColors.white,
    this.elevation = 0,
    this.minHeight = 50,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
        onConfigurationReady: (config, theme)
    {
      return BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return state.status.isInProgress
                ? const CircularProgressIndicator()
                : ElevatedButton(
              onPressed: state.isValid
                  ? () {
                context.read<LoginBloc>().add(const LoginSubmitted());
              }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(borderRadius))),
                elevation: elevation,
                minimumSize: Size.fromHeight(minHeight),
              ),
              child: Text(
                text,
                style: textStyle,
              ),
            );
          });
    },);
  }
}