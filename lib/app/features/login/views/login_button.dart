import 'package:flutter/material.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import '../../../core/constants/m_colors.dart';

class CustomLoginButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final double borderRadius;
  final Color backgroundColor;
  final double elevation;
  final double minHeight;
  final VoidCallback onPressed;

  const CustomLoginButton({
    required this.text,
    required this.textStyle,
    this.borderRadius = 5,
    required this.onPressed,
    this.backgroundColor = MColors.white,
    this.elevation = 0,
    this.minHeight = 50,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
        onConfigurationReady: (config, theme) {
          return ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
              elevation: elevation,
              minimumSize: Size.fromHeight(minHeight),
            ),
            child: Text(
              text,
              style: textStyle,
            ),
          );
        });
  }
}