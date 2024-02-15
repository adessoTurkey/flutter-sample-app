import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/api_call/api_repositories/remote_data_source.dart';
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/extensions/sized_box_extensions.dart';
import 'package:flutter_movie_app/app/features/movies/bloc/movies_bloc.dart';
import 'package:flutter_movie_app/app/features/movies/movies.dart';
import 'package:flutter_movie_app/di/dependency_injection.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

@RoutePage()
class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  var currentPage = 0;
  bool _showAppbar = false;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    checkScroll();
  }

  void checkScroll() {
    _scrollController.addListener(() {
      if (_scrollController.offset > 60) {
        setState(() {
          _showAppbar = true;
        });
      } else {
        setState(() {
          _showAppbar = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MoviesBloc(getIt<RemoteDataSource>())
        ..add(const MoviesFetching(categoryType: MovieCategoriesEnum.popular)),
      child: ConfigurationWidget(
        onConfigurationReady: (configuration, theme) {
          return Scaffold(
            appBar: _showAppbar
                ? AppBar(
                    title: Text(context.localization.movies_page_app_bar_title,
                        style: theme.moviesPageAppBarTitleTextStyle(
                            configuration.moviePageAppBarTitleTextSize)),
                  )
                : null,
            body: Stack(
              children: [
                Container(
                  color: theme.themeData.primaryColor,
                  height: context.screenSize.width,
                  width: context.screenSize.width,
                ),
                SafeArea(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      children: [
                        _carouselView(),
                        Container(
                          color: theme.themeData.scaffoldBackgroundColor,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: configuration.moviePageListViewPaddingTop,
                              left: configuration.moviePageListViewPaddingLeft,
                              right:
                                  configuration.moviePageListViewPaddingRight,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BlocBuilder<MoviesBloc, MoviesState>(
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
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  },
                                ),
                                const Divider(),
                                16.verticalSizedBox,
                                Text(
                                  context
                                      .localization.movies_page_popular_title,
                                  style: theme.moviesPageListViewTitleTextStyle(
                                      configuration
                                          .moviePageListViewTitleTextSize),
                                ),
                                SizedBox(
                                  height: (configuration.movieCellHeight +
                                          configuration.movieCellSpacing) *
                                      mockMovies.length,
                                  child: MovieListView(movieList: mockMovies),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
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
          return const Center(child: CircularProgressIndicator());
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
        return const Center(
          child: Text("Elsse"),
        );
      },
    );
  }
}
