import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/localization/app_localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class MovieDetailPageCastSection extends StatelessWidget {
  final CreditResponse creditResponse;

  const MovieDetailPageCastSection({required this.creditResponse, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            movieDetailCastSection(
              context.localization.movie_detail_director_label,
              context.localization.movie_detail_writers_label,
              context.localization.movie_detail_stars_label,
              theme.movieDetailCastLeftLabelTextStyle(
                  configuration.detailCastLabelTextSize),
              theme.movieDetailCastRightLabelTextStyle(
                  configuration.detailCastLabelTextSize),
            ),
          ],
        );
      },
    );
  }

  Widget movieDetailCastSection(
      String directorLabel,
      String writersLabel,
      String starsLabel,
      TextStyle titleTextStyle,
      TextStyle infoTextStyle,
  ) {
    return Column(
      children: [
        if (creditResponse.getDirector() != null && creditResponse.getDirector()!.isNotEmpty)
          DetailCrewLabelSection(title: directorLabel, titleTextStyle: titleTextStyle,
              info: creditResponse.getDirector()!, infoTextStyle: infoTextStyle),
        if (creditResponse.getWriters() != null && creditResponse.getWriters()!.isNotEmpty)
          DetailCrewLabelSection(title: writersLabel, titleTextStyle: titleTextStyle,
              info: creditResponse.getWriters()!, infoTextStyle: infoTextStyle),
        if (creditResponse.getActors() != null && creditResponse.getActors()!.isNotEmpty)
          DetailCrewLabelSection(title: starsLabel, titleTextStyle: titleTextStyle,
              info: creditResponse.getActors()!, infoTextStyle: infoTextStyle),
      ],
    );
  }
}
