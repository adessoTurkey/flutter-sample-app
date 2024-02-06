import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/m_colors.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DurationView extends StatelessWidget {
  final int durationTime;
  const DurationView({required this.durationTime, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            FaIcon(FontAwesomeIcons.clock,
                color: MColors.electricBlue,
                size: configuration.durationViewIconSize),
            Text(
              "${durationTime.toString()} min",
              style: theme
                  .durationViewTextStyle(configuration.durationViewTextSize),
            ),
          ],
        );
      },
    );
  }
}
