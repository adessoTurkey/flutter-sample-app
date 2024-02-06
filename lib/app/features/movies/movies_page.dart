import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/features/movies/movies.dart';
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
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Scaffold(
          appBar: _showAppbar
              ? AppBar(
                  title: Text(
                    context.localization.moviesPageAppBarTitle,
                    style: theme.moviesPageAppBarTitleTextStyle(configuration.moviePageAppBarTitleTextSize)
                  ),
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
                            right: configuration.moviePageListViewPaddingRight,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MoviesCarouselCardInfoView(
                                movie: mockMovies[currentPage],
                              ),
                              const Divider(),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                context.localization.moviesPagePopularTitle,
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
    );
  }

  Widget _carouselView() {
    return MoviesCarouselView(
      movieList: mockMovies,
      onPageChanged: (currentIndex) {
        setState(() {
          currentPage = currentIndex;
        });
      },
    );
  }
}
