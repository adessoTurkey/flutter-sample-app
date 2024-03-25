import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movies/bloc/movies_bloc.dart';
import 'package:flutter_movie_app/app/features/movies/models/genre_data/bloc/genre_bloc.dart';
import 'package:flutter_movie_app/app/features/movies/movies.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

@RoutePage()
class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return BlocBuilder<GenreBloc, GenreState>(
          builder: (context, state) {
            return Scaffold(
              body: Stack(
                children: [
                  Container(
                    color: theme.themeData.primaryColorDark,
                    height: context.screenSize.width,
                    width: context.screenSize.width,
                  ),
                  SafeArea(
                    child: CustomScrollView(
                      scrollBehavior: const ScrollBehavior(),
                      slivers: [
                        CustomScrollViewAppBar(
                          implyLeading: false,
                          largeTitle: context.localization.movies_page_title,
                          largeTitleStyle: theme.moviesViewHeaderTextStyle(
                            configuration.headerTextSize,
                          ),
                          appBarTitle:
                              context.localization.movies_page_app_bar_title,
                          appBarTitleStyle:
                              theme.moviesPageAppBarTitleTextStyle(
                                  configuration.moviePageAppBarTitleTextSize),
                          backgroundColor: theme.themeData.primaryColorDark,
                          expandedHeight: configuration
                              .movieDetailSliverAppBarExpandableHeight,
                        ),
                        SliverToBoxAdapter(
                          child: Column(
                            children: [
                              _CarouselView(),
                              Container(
                                color:
                                    theme.themeData.scaffoldBackgroundColor,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: configuration
                                        .moviePageListViewPaddingTop,
                                    left: configuration
                                        .moviePageListViewPaddingLeft,
                                    right: configuration
                                        .moviePageListViewPaddingRight,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _CarouselCardInfoView(),
                                      const Divider(),
                                      16.verticalSizedBox,
                                      Text(
                                        context.localization
                                            .movies_page_popular_title,
                                        style: theme
                                            .moviesPageListViewTitleTextStyle(
                                                configuration
                                                    .moviePageListViewTitleTextSize),
                                      ),
                                      _MovieListView(
                                          movieCellHeight:
                                              configuration.movieCellHeight,
                                          movieCellSpacing:
                                              configuration.movieCellSpacing)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class _MovieListView extends StatelessWidget {
  const _MovieListView({
    required this.movieCellHeight,
    required this.movieCellSpacing,
  });

  final double movieCellHeight;
  final double movieCellSpacing;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      buildWhen: (previous, current) {
        return current is MoviesSuccess;
      },
      builder: (context, state) {
        if (state is MoviesLoading) {
          return const LoadingView();
        }
        if (state is MoviesSuccess) {
          return SizedBox(
            height:
                (movieCellHeight + movieCellSpacing) * state.movieList.length,
            child: MovieListView(movieList: state.movieList),
          );
        }
        if (state is MoviesError) {
          return Center(
            child: Text(state.errorMessage ?? "Fetching error"),
          );
        }
        return const LoadingView();
      },
    );
  }
}

class _CarouselCardInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      builder: (context, state) {
        if (state is MoviesSuccess) {
          return MoviesCarouselCardInfoView(
            movie: state.movie,
          );
        }
        if (state is CarouselSlideSuccess) {
          return MoviesCarouselCardInfoView(
            movie: state.movieModel,
          );
        }
        return const LoadingView();
      },
    );
  }
}

class _CarouselView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      buildWhen: (previous, current) {
        return current is MoviesSuccess && previous is! CarouselSlideSuccess;
      },
      builder: (context, state) {
        if (state is MoviesLoading) {
          return const LoadingView();
        }
        if (state is MoviesSuccess) {
          return MoviesCarouselView(
            movieList: state.movieList,
            onPageChanged: (currentIndex) {
              context
                  .read<MoviesBloc>()
                  .add(CarouselSliding(currentIndex: currentIndex));
            },
          );
        }
        if (state is MoviesError) {
          return Center(
            child: Text(state.errorMessage ?? "Fetching error"),
          );
        }
        return const LoadingView();
      },
    );
  }
}
