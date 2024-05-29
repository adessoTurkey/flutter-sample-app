import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/localization/app_localization.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../responsive/configuration_widget.dart';

class DetailPageTrailer extends StatefulWidget {
  final VideoModelResponse? videoModelResponse;

  const DetailPageTrailer({super.key, required this.videoModelResponse});

  @override
  State<DetailPageTrailer> createState() => _DetailPageTrailerSectionState();
}

class _DetailPageTrailerSectionState extends State<DetailPageTrailer> {
  late YoutubePlayerController youtubePlayerController;

  @override
  void dispose() {
    youtubePlayerController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
        initialVideoId: widget.videoModelResponse?.getTrailerURL() ?? "",
        flags: const YoutubePlayerFlags(autoPlay: false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.localization.detail_trailer_text,
              style: theme.detailTrailerTextStyle(
                  configuration.detailPageTrailerTextSize),
            ),
            10.verticalSizedBox,
            YoutubePlayerBuilder(
              player: YoutubePlayer(
                controller: youtubePlayerController,
                showVideoProgressIndicator: true,
                progressIndicatorColor: theme.progressIndicatorColor,
                progressColors: const ProgressBarColors(
                  playedColor: MColors.youtubePlayed,
                  handleColor: MColors.youtubeHandle,
                ),
                onReady: () {
                  youtubePlayerController.addListener(() {});
                },
              ),
              builder: (context, player) => player,
            ),
          ],
        );
      },
    );
  }
}
