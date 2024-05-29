import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/localization/app_localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailPageTrailerSection extends StatefulWidget {
  final VideoModelResponse? videoModelResponse;

  const DetailPageTrailerSection({this.videoModelResponse, super.key});

  @override
  State<DetailPageTrailerSection> createState() =>
      _DetailPageTrailerSectionState();
}

class _DetailPageTrailerSectionState extends State<DetailPageTrailerSection> {
  late YoutubePlayerController? _youtubeController;

  @override
  void initState() {
    super.initState();

    _youtubeController = widget.videoModelResponse?.getTrailerURL() != null
        ? YoutubePlayerController(
            initialVideoId: widget.videoModelResponse!.getTrailerURL()!,
            flags: const YoutubePlayerFlags(autoPlay: false))
        : null;
  }

  @override
  void dispose() {
    _youtubeController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _youtubeController != null
        ? ConfigurationWidget(
            onConfigurationReady: (configuration, theme) {
              return _trailerSection(
                context,
                theme.detailTrailerTextStyle(
                    configuration.detailPageTrailerTextSize),
              );
            },
          )
        : const SizedBox.shrink();
  }

  Widget _trailerSection(BuildContext context, TextStyle textStyle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.localization.detail_trailer_text,
          style: textStyle,
        ),
        10.verticalSizedBox,
        if (_youtubeController != null)
          YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: _youtubeController!,
              showVideoProgressIndicator: true,
              progressIndicatorColor: MColors.youtubePlayed,
              progressColors: const ProgressBarColors(
                playedColor: MColors.youtubePlayed,
                handleColor: MColors.youtubeHandle,
              ),
              onReady: () {
                _youtubeController!.addListener(() {});
              },
            ),
            builder: (context, player) => player,
          ),
      ],
    );
  }
}
