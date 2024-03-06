import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
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
                  configuration.movieDetailCastLabelTextSize),
              theme.movieDetailCastRightLabelTextStyle(
                  configuration.movieDetailCastLabelTextSize),
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
          movieDetailCastLabel("Director", titleTextStyle,
              creditResponse.getDirector()!, infoTextStyle),
        if (creditResponse.getWriters()!.isValid)
          movieDetailCastLabel("Writers", titleTextStyle,
              creditResponse.getWriters()!, infoTextStyle),
        if (creditResponse.getActors()!.isValid)
          movieDetailCastLabel("Stars", titleTextStyle,
              creditResponse.getActors()!, infoTextStyle),
      ],
    );
  }

  Widget movieDetailCastLabel(
    String title,
    TextStyle titleTextStyle,
    String info,
    TextStyle infoTextStyle,
  ) {
    return Row(
      children: [
        CastLabelWidget(
          textStyle: titleTextStyle,
          title: "$title: ",
        ),
        Flexible(
            child: CastLabelWidget(
          textStyle: infoTextStyle,
          title: info,
        )),
      ],
    );
  }
}
