import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/api_call/api_repositories/remote_data_source.dart';
import 'package:flutter_movie_app/app/core/extensions/sized_box_extensions.dart';
import 'package:flutter_movie_app/app/core/extensions/video_result_extension.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movie_detail/bloc/movie_detail_bloc.dart';
import 'package:flutter_movie_app/app/features/movie_detail/models/movie_detail_models.dart';
import 'package:flutter_movie_app/di/dependency_injection.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'movie_detail.dart';

@RoutePage()
class MovieDetailPage extends StatelessWidget {
  final int movieId;
  const MovieDetailPage({required this.movieId, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MovieDetailBloc(remoteDataSource: getIt<RemoteDataSource>())
            ..add(MovieDetailInitialEvent(movieId: movieId)),
      child: Scaffold(
        body: ConfigurationWidget(
          onConfigurationReady: (configuration, theme) {
            return BlocBuilder<MovieDetailBloc, MovieDetailState>(
              builder: (context, state) {
                if (state is MovieDetailLoading) {
                  return const LoadingView();
                }
                if (state is MovieDetailSuccess) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        MovieDetailPageImageSection(
                          movieDetailModel: state.movieDetailModel,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal:
                                configuration.movieDetailPagePaddingHorizontal,
                            vertical:
                                configuration.movieDetailPagePaddingVerical,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MovieDetailPageInfoSection(
                                movieDetailModel: state.movieDetailModel,
                              ),
                              20.verticalSizedBox,
                              MovieDetailPageCastSection(
                                creditResponse: state.creditResponse,
                              ),
                              20.verticalSizedBox,
                              _MovieDetailPageTrailerSection(
                                videoModelResponse: state.videoModelResponse,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return const LoadingView();
              },
            );
          },
        ),
      ),
    );
  }
}

class _MovieDetailPageTrailerSection extends StatefulWidget {
  final VideoModelResponse videoModelResponse;

  const _MovieDetailPageTrailerSection({required this.videoModelResponse});

  @override
  State<_MovieDetailPageTrailerSection> createState() =>
      _MovieDetailPageTrailerSectionState();
}

class _MovieDetailPageTrailerSectionState
    extends State<_MovieDetailPageTrailerSection> {
  late YoutubePlayerController youtubePlayerController;

  @override
  void dispose() {
    youtubePlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    youtubePlayerController = YoutubePlayerController(
        initialVideoId: widget.videoModelResponse.getTrailerURL(),
        flags: const YoutubePlayerFlags(autoPlay: false));

    return MovieDetailPageTrailerSection(
      controller: youtubePlayerController,
    );
  }
}
