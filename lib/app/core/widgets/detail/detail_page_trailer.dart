import 'package:flutter/cupertino.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../../features/movie_detail/models/video_model/video_model_response.dart';
import 'detail_page_trailer_section.dart';

class DetailPageTrailer extends StatefulWidget {
  final VideoModelResponse? videoModelResponse;

  const DetailPageTrailer({super.key, required this.videoModelResponse});

  @override
  State<DetailPageTrailer> createState() =>
      _DetailPageTrailerSectionState();
}

class _DetailPageTrailerSectionState
    extends State<DetailPageTrailer> {
  late YoutubePlayerController youtubePlayerController;

  @override
  void dispose() {
    youtubePlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    youtubePlayerController = YoutubePlayerController(
        initialVideoId: (widget.videoModelResponse?.getTrailerURL()).emptyIfNull,
        flags: const YoutubePlayerFlags(autoPlay: false));

    return DetailPageTrailerSection(
      controller: youtubePlayerController,
    );
  }
}