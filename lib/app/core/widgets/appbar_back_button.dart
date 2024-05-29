import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppbarBackButton extends StatelessWidget {
  final Color iconColor;
  final double iconSize;
  final VoidCallback onPressed;

  const AppbarBackButton(
      {super.key,
      required this.iconColor,
      this.iconSize = 24,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        FontAwesomeIcons.arrowLeft,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
