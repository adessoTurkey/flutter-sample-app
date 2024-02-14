import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CircularButtonWidget extends StatelessWidget {
  final double radiusSize;
  final VoidCallback onTap;
  final IconData iconData;
  final Color backgroundColor;
  final Color iconColor;
  const CircularButtonWidget(
      {required this.radiusSize,
      required this.onTap,
      required this.iconData,
      required this.backgroundColor,
      required this.iconColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: radiusSize,
      child: IconButton(
        icon: FaIcon(
          iconData,
          color: iconColor,
          size: radiusSize,
        ),
        onPressed: onTap,
      ),
    );
  }
}
