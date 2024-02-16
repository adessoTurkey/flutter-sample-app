import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/api_call/api_repositories/remote_data_source.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/extensions/sized_box_extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movies/bloc/movies_bloc.dart';
import 'package:flutter_movie_app/app/features/movies/movies.dart';
import 'package:flutter_movie_app/di/dependency_injection.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

@RoutePage()
class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MoviesBloc(getIt<RemoteDataSource>())
        ..add(const MoviesFetching(categoryType: MovieCategoriesEnum.popular)),
      child: ConfigurationWidget(
        onConfigurationReady: (configuration, theme) {
          return Scaffold(
            body: Stack(
              children: [
                Container(
                  color: theme.themeData.primaryColor,
                  height: context.screenSize.width,
                  width: context.screenSize.width,
                ),
                SafeArea(
                  child: CustomScrollView(
                    slivers: [
                      CustomScrollViewAppBar(
                        largeTitle: context.localization.movies_page_title,
                        largeTitleStyle: theme.moviesViewHeaderTextStyle(
                          configuration.headerTextSize,
                        ),
                        appBarTitle:
                            context.localization.movies_page_app_bar_title,
                        appBarTitleStyle: const TextStyle(fontSize: 12),
                        backgroundColor: MColors.electricBlue,
                        expandedHeight: configuration
                            .movieDetailSliverAppBarExpandableHeight,
                      ),
                      SliverList.list(
                        children: [
                          _carouselView(),
                          Container(
                            color: theme.themeData.scaffoldBackgroundColor,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: configuration.moviePageListViewPaddingTop,
                                left:
                                    configuration.moviePageListViewPaddingLeft,
                                right:
                                    configuration.moviePageListViewPaddingRight,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _carouselCardInfoView(),
                                  const Divider(),
                                  16.verticalSizedBox,
                                  Text(
                                    context
                                        .localization.movies_page_popular_title,
                                    style:
                                        theme.moviesPageListViewTitleTextStyle(
                                            configuration
                                                .moviePageListViewTitleTextSize),
                                  ),
                                  _movieListView(configuration.movieCellHeight,
                                      configuration.movieCellSpacing)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
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

  Widget _carouselView() {
    return BlocBuilder<MoviesBloc, MoviesState>(
      buildWhen: (previous, current) {
        return current is MoviesSuccess;
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

  Widget _carouselCardInfoView() {
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

  Widget _movieListView(double movieCellHeight, double movieCellSpacing) {
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
