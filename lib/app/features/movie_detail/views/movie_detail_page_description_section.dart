import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class MovieDetailPageDescriptionSection extends StatelessWidget {
  const MovieDetailPageDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
              style: theme.movieDetailDescriptionTextStyle(
                  configuration.movieDetailDescriptionTextSize),
            ),
            const SizedBox(
              height: 20,
            ),
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
          title: title,
          isTitle: true,
        ),
        Flexible(
            child: CastLabelWidget(
          textStyle: infoTextStyle,
          title: info,
          isTitle: false,
        )),
      ],
    );
  }
}
