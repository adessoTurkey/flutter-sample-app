import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/app/core/constants/m_colors.dart';
import 'package:flutter_movie_app/localization/app_localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DurationView extends StatelessWidget {
  final String? durationTime;

  const DurationView({this.durationTime, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.clock,
              color: MColors.electricBlue,
              size: configuration.durationViewIconSize,
            ),
            Text(
              "${durationTime ?? "-"} ${context.localization.detail_duration_text}",
              style: theme
                  .durationViewTextStyle(configuration.durationViewTextSize),
            ),
          ],
        );
      },
    );
  }
}
