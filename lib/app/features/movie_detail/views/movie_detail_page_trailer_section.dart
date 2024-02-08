import 'package:flutter/material.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MovieDetailPageTrailerSection extends StatelessWidget {
  MovieDetailPageTrailerSection({super.key});

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: "SzINZZ6iqxY",
    flags: const YoutubePlayerFlags(
      autoPlay: false,
    ),
  );

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
          context.localization.movieDetailTrailerText,
          style: textStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: const ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
            ),
            onReady: () {
              _controller.addListener(() {});
            },
          ),
          builder: (context, player) => player,
        ),
      ],
    );
  }
}
