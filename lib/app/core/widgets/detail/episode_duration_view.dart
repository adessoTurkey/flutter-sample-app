import 'package:flutter/material.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EpisodeDurationView extends StatelessWidget {
  final String duration;

  const EpisodeDurationView({required this.duration, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Wrap(
          spacing: 10,
          direction: Axis.horizontal,
          children: [
            FaIcon(
              FontAwesomeIcons.clock,
              color: theme.themeData.primaryColorDark,
              size: configuration.releaseDateViewDateIconSize,
            ),
            Text(
              duration,
              style: theme.releaseDateViewDateTextStyle(
                  configuration.releaseDateViewDateTextSize),
            ),
          ],
        );
      },
    );
  }
}
