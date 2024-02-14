import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/sized_box_extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movies/models/movie_model.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class MovieDetailPageDescriptionSection extends StatelessWidget {
  final MovieModel movieModel;
  const MovieDetailPageDescriptionSection(
      {required this.movieModel, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              movieModel.description,
              style: theme.movieDetailDescriptionTextStyle(
                  configuration.movieDetailDescriptionTextSize),
            ),
            20.verticalSizedBox,
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
        movieDetailCastLabel(
            "Director", titleTextStyle, "Todd Philips", infoTextStyle),
        movieDetailCastLabel("Writers", titleTextStyle,
            "Todd Philips, Scott Silver", infoTextStyle),
        movieDetailCastLabel(
            "Stars",
            titleTextStyle,
            "Todd Philips, Scott Silver, Todd Philips, Scott Silver",
            infoTextStyle),
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
