import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';
import 'package:flutter_movie_app/localization/app_localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:flutter_svg/svg.dart';

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
              body: BlocBuilder<MoviesBloc, MoviesState>(
                builder: (context, state) {
                  if (state is MoviesLoading) {
                    return const LoadingView();
                  } else if (state is MoviesError) {
                    return ErrorWidget(state.errorMessage ??
                        context.localization.fetching_error);
                  }

                  return Stack(
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
                              largeTitle:
                                  context.localization.movies_page_title,
                              largeTitleStyle:
                                  theme.mainPageViewHeaderTextStyle(
                                configuration.headerTextSize,
                              ),
                              appBarTitle: context
                                  .localization.movies_page_app_bar_title,
                              appBarTitleStyle: theme
                                  .mainPageAppBarTitleTextStyle(configuration
                                      .mainPageAppBarTitleTextSize),
                              backgroundColor: theme.themeData.primaryColorDark,
                              expandedHeight: configuration
                                  .movieDetailSliverAppBarExpandableHeight,
                              actions: [
                                CircleAvatar(
                                  foregroundColor: MColors.white,
                                  child: IconButton(
                                    onPressed: () {
                                      context.pushRoute(const CinemaMapRoute());
                                    },
                                    icon: SvgPicture.asset(
                                        MovieAssets.images.locationIcon),
                                  ),
                                )
                              ],
                            ),
                            SliverToBoxAdapter(
                              child: Column(
                                children: [
                                  _CarouselView(),
                                  Container(
                                    color: theme.mainPageBackgroundColor,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: configuration
                                            .moviePageListViewPaddingTop,
                                        left: configuration
                                            .moviePageListViewPaddingHorizontal,
                                        right: configuration
                                            .moviePageListViewPaddingHorizontal,
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
                                                .mainPageListViewTitleTextStyle(
                                                    configuration
                                                        .mainPageListViewTitleTextSize),
                                          ),
                                          const _MovieListView()
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
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}

class _MovieListView extends StatelessWidget {
  const _MovieListView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      buildWhen: (previous, current) {
        return current is MoviesSuccess;
      },
      builder: (context, state) {
        if (state is MoviesSuccess) {
          return MovieListView(movieList: state.movieList);
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
        if (state is MovieCarouselSlideSuccess) {
          return MoviesCarouselCardInfoView(
            movie: state.movieModel,
          );
        }
        return Container();
      },
    );
  }
}

class _CarouselView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      buildWhen: (previous, current) {
        return current is MoviesSuccess &&
            previous is! MovieCarouselSlideSuccess;
      },
      builder: (context, state) {
        if (state is MoviesSuccess) {
          return MoviesCarouselView(
            movieList: state.movieList,
            onPageChanged: (currentIndex) {
              context
                  .read<MoviesBloc>()
                  .add(MovieCarouselSliding(currentIndex: currentIndex));
            },
          );
        }
        if (state is MoviesError) {
          return Center(
            child: Text(state.errorMessage ?? "Fetching error"),
          );
        }
        return Container();
      },
    );
  }
}
