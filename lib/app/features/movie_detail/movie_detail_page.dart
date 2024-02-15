import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/sized_box_extensions.dart';
import 'package:flutter_movie_app/app/features/movies/movies.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'movie_detail.dart';

@RoutePage()
class MovieDetailPage extends StatefulWidget {
  final MovieModel movieModel;

  const MovieDetailPage({required this.movieModel, super.key});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  late YoutubePlayerController youtubePlayerController;

  @override
  void initState() {
    super.initState();
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: "SzINZZ6iqxY",
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
  }

  @override
  void dispose() {
    youtubePlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConfigurationWidget(
        onConfigurationReady: (configuration, theme) {
          return SingleChildScrollView(
            child: Column(
              children: [
                MovieDetailPageImageSection(
                  movieModel: widget.movieModel,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: configuration.movieDetailPagePaddingHorizontal,
                    vertical: configuration.movieDetailPagePaddingVerical,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MovieDetailPageInfoSection(
                        movieModel: widget.movieModel,
                      ),
                      20.verticalSizedBox,
                      MovieDetailPageDescriptionSection(
                        movieModel: widget.movieModel,
                      ),
                      20.verticalSizedBox,
                      MovieDetailPageTrailerSection(
                        controller: youtubePlayerController,
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
