import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movies/models/movie_model.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class MoviesCarouselView extends StatelessWidget {
  final List<MovieModel> movieList;
  final Function(int currentIndex) onPageChanged;

  const MoviesCarouselView({
    required this.movieList,
    required this.onPageChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Container(
          color: Colors.white,
          height: MoviesConstants.movieCarouselContainerHeight,
          child: Stack(
            children: [
              Container(
                color: MColors.electricBlue,
                height: MoviesConstants.movieCarouselBlueContainerHeight,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: MoviesConstants.movieCarouselHeaderTopPadding,
                  left: MoviesConstants.movieCarouselHeaderLeftPadding,
                ),
                child: Text(
                  "Movies",
                  style: theme.moviesViewHeaderTextStyle(
                    configuration.headerTextSize,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CarouselView(
                  list: movieList,
                  height: MoviesConstants.movieCarouselHeight,
                  onPageChanged: onPageChanged,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
