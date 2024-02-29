import 'package:flutter/material.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import '../../../core/constants/m_colors.dart';

class CustomLoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomLoginButton({
    super.key, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
        onConfigurationReady: (config, theme) {
          return ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(

              textStyle: theme.login(config.loginTextSize),
              backgroundColor: MColors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(config.loginButtonHeight))),
              elevation: 0,
              minimumSize: Size.fromHeight(config.loginButtonHeight),
            ),
            child: Text(
              context.localization.login,
              style: theme.login(config.loginTextSize),
            ),
          );
        });
  }
}