import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../responsive/configuration_widget.dart';

class CinemaMapHeaderView extends StatelessWidget {
  const CinemaMapHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Container(
          height: context.heightFactor(0.1),
          color: theme.primaryColorLight,
          padding: 10.symmetric(horizontal: 20),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  context.popRoute();
                },
                icon: Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: theme.dividerColor,
                ),
              ),
              20.horizontalSizedBox,
              Text(
                context.localization.cinema_map_view_title,
                style: theme.cinemaMapViewTitleTextStyle(
                  configuration.cinemaMapViewTitleTextSize,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
