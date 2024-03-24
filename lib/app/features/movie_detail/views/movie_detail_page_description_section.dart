import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/detail/detail_crew_label_section.dart';
import 'package:flutter_movie_app/app/features/movie_detail/models/credits/credit_response.dart';
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
    TextStyle titleTextStyle,
    TextStyle infoTextStyle,
  ) {
    return Column(
      children: [
        if (creditResponse.getDirector()!.isValid)
          DetailCrewLabelSection(title: "Director", titleTextStyle: titleTextStyle,
              info: creditResponse.getDirector()!, infoTextStyle: infoTextStyle),
        if (creditResponse.getWriters()!.isValid)
          DetailCrewLabelSection(title: "Writers", titleTextStyle: titleTextStyle,
              info: creditResponse.getWriters()!, infoTextStyle: infoTextStyle),
        if (creditResponse.getActors()!.isValid)
          DetailCrewLabelSection(title: "Stars", titleTextStyle: titleTextStyle,
              info: creditResponse.getActors()!, infoTextStyle: infoTextStyle),
      ],
    );
  }
}
