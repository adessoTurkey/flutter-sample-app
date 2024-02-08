import 'package:flutter/material.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReleaseDateView extends StatelessWidget {
  final String releaseDate;

  const ReleaseDateView({required this.releaseDate, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Wrap(
          spacing: 10,
          direction: Axis.horizontal,
          children: [
            FaIcon(
              FontAwesomeIcons.calendar,
              color: theme.themeData.primaryColor,
              size: configuration.releaseDateViewDateIconSize,
            ),
            Text(
              releaseDate,
              style: theme.releaseDateViewDateTextStyle(
                  configuration.releaseDateViewDateTextSize),
            ),
          ],
        );
      },
    );
  }
}
