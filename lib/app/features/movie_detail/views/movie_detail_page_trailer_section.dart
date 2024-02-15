import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/sized_box_extensions.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MovieDetailPageTrailerSection extends StatelessWidget {
  final YoutubePlayerController controller;
  const MovieDetailPageTrailerSection({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return _trailerSection(
          context,
          theme.movieDetailTrailerTextStyle(
              configuration.movieDetailTrailerTextSize),
        );
      },
    );
  }

  Widget _trailerSection(BuildContext context, TextStyle textStyle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.localization.movie_detail_trailer_text,
          style: textStyle,
        ),
        10.verticalSizedBox,
        YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: const ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
            ),
            onReady: () {
              controller.addListener(() {});
            },
          ),
          builder: (context, player) => player,
        ),
      ],
    );
  }
}
