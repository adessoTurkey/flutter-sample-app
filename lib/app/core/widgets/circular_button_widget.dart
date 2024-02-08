import 'package:flutter/material.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CircularButtonWidget extends StatelessWidget {
  final double? radiusSize;
  final VoidCallback onTap;
  final IconData iconData;
  final Color backgroundColor;
  final Color iconColor;
  const CircularButtonWidget(
      {this.radiusSize,
      required this.onTap,
      required this.iconData,
      required this.backgroundColor,
      required this.iconColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return CircleAvatar(
          backgroundColor: backgroundColor,
          radius:
              radiusSize ?? configuration.circularButtonWidgetDefaultRadiusSize,
          child: IconButton(
            icon: FaIcon(
              iconData,
              color: iconColor,
              size: radiusSize,
            ),
            onPressed: onTap,
          ),
        );
      },
    );
  }
}
