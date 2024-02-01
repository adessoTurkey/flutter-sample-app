import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/features/movies/models/movie_model.dart';
import 'package:flutter_movie_app/app/features/movies/movies.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

@RoutePage()
class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  var currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _carouselView(),
                      Container(
                        color: theme.themeData.scaffoldBackgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: MoviesConstants.moviePageListViewPaddingTop,
                            left: MoviesConstants.moviePageListViewPaddingLeft,
                            right:
                                MoviesConstants.moviePageListViewPaddingRight,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MoviesCarouselCardInfoView(
                                movie: mockMovies[currentPage],
                              ),
                              const Divider(),
                              SizedBox(
                                height: (WidgetsConstants.movieCellHeight +
                                        WidgetsConstants.movieCellSpacing) *
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
