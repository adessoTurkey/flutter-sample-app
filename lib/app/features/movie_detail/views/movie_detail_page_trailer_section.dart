import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../core/constants/constants.dart';
import '../models/video_model/video_model_response.dart';


class MovieDetailPageTrailerSection extends StatefulWidget {
  final VideoModelResponse? videoModelResponse;
  const MovieDetailPageTrailerSection({this.videoModelResponse, super.key});

  @override
  State<MovieDetailPageTrailerSection> createState() => _MovieDetailPageTrailerSectionState();
}

class _MovieDetailPageTrailerSectionState extends State<MovieDetailPageTrailerSection> {

  late YoutubePlayerController? _youtubeController;

  @override
  void initState() {
    super.initState();

    _youtubeController = widget.videoModelResponse?.getTrailerURL()!=null?  YoutubePlayerController(
        initialVideoId: widget.videoModelResponse!.getTrailerURL()!,
        flags: const YoutubePlayerFlags(autoPlay: false)):null;
  }
  @override
  void dispose() {
    _youtubeController?.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return
      _youtubeController!=null?
      ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return _trailerSection(
          context,
          theme.movieDetailTrailerTextStyle(
              configuration.movieDetailTrailerTextSize),
        );
      },
    ):const SizedBox.shrink();
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
        if(_youtubeController!=null)
        YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: _youtubeController!,
            showVideoProgressIndicator: true,
            progressIndicatorColor: MColors.youtubeProgressIndicator,
            progressColors: const ProgressBarColors(
              playedColor: MColors.youtubePlayed,
              handleColor: MColors.youtubeHandleColor,
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
