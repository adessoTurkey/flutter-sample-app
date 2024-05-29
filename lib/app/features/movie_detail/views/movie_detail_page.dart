import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/api_call/api_repositories/remote_data_source.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/di/dependency_injection.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

@RoutePage()
class MovieDetailPage extends StatelessWidget {
  final int movieId;
  const MovieDetailPage({required this.movieId, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MovieDetailBloc(remoteDataSource: getIt<RemoteDataSource>(),profileBloc: context.read<ProfileBloc>())
            ..add(MovieDetailInitialEvent(movieId: movieId)),
      child: Scaffold(
        body: BlocBuilder<MovieDetailBloc, MovieDetailState>(
          builder: (context, state) {
            switch (state.status) {
              case NetworkFetchStatus.loading:
                return const LoadingView();
              case NetworkFetchStatus.success:
                return ConfigurationWidget(
                  onConfigurationReady: (configuration, theme) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          DetailPageImageSection(
                            favoriteEntityType: FavoriteEntityType.movie,
                            id: state.movieDetailModel?.id??-1,
                            title: state.movieDetailModel?.title??"",
                            releaseDate: state.movieDetailModel?.releaseDate??"",
                            voteAverage: state.movieDetailModel?.getVoteAvarage,
                            imageUrl: state.movieDetailModel?.getImageURL,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: configuration
                                  .movieDetailPagePaddingHorizontal,
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
                                  creditResponse: state.creditResponse!,
                                ),
                                20.verticalSizedBox,
                                DetailPageTrailer(
                                  videoModelResponse: state.videoModelResponse,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              case NetworkFetchStatus.error:
                return ErrorView(
                  error: state.errorMessage,
                );
              case NetworkFetchStatus.initial:
                return const LoadingView();
            }
          },
        ),
      ),
    );
  }
}
