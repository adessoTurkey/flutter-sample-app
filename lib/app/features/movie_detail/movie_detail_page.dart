import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/api_call/api_repositories/remote_data_source.dart';
import 'package:flutter_movie_app/app/core/extensions/sized_box_extensions.dart';
import 'package:flutter_movie_app/app/core/extensions/video_result_extension.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movie_detail/bloc/movie_detail_bloc.dart';
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
            return SingleChildScrollView(
              child: Column(
                children: [
                  const _MovieDetailPageImageSection(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          configuration.movieDetailPagePaddingHorizontal,
                      vertical: configuration.movieDetailPagePaddingVerical,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const _MovieDetailPageInfoSection(),
                        20.verticalSizedBox,
                        const _MovieDetailPageCastSection(),
                        20.verticalSizedBox,
                        const _MovieDetailPageTrailerSection()
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _MovieDetailPageTrailerSection extends StatefulWidget {
  const _MovieDetailPageTrailerSection();

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
    return BlocBuilder<MovieDetailBloc, MovieDetailState>(
      builder: (context, state) {
        if (state is MovieDetailSuccess) {
          youtubePlayerController = YoutubePlayerController(
              initialVideoId: state.videoModelResponse.getTrailerURL(),
              flags: const YoutubePlayerFlags(autoPlay: false));
          return MovieDetailPageTrailerSection(
            controller: youtubePlayerController,
          );
        } else {
          return const LoadingView();
        }
      },
    );
  }
}

class _MovieDetailPageImageSection extends StatelessWidget {
  const _MovieDetailPageImageSection();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailBloc, MovieDetailState>(
      builder: (context, state) {
        if (state is MovieDetailSuccess) {
          return MovieDetailPageImageSection(
            movieDetailModel: state.movieDetailModel,
          );
        } else {
          return const LoadingView();
        }
      },
    );
  }
}

class _MovieDetailPageInfoSection extends StatelessWidget {
  const _MovieDetailPageInfoSection();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailBloc, MovieDetailState>(
      builder: (context, state) {
        if (state is MovieDetailSuccess) {
          return MovieDetailPageInfoSection(
            movieDetailModel: state.movieDetailModel,
          );
        } else {
          return const LoadingView();
        }
      },
    );
  }
}

class _MovieDetailPageCastSection extends StatelessWidget {
  const _MovieDetailPageCastSection();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailBloc, MovieDetailState>(
      builder: (context, state) {
        if (state is MovieDetailSuccess) {
          return MovieDetailPageCastSection(
            creditResponse: state.creditResponse,
          );
        } else {
          return const LoadingView();
        }
      },
    );
  }
}
