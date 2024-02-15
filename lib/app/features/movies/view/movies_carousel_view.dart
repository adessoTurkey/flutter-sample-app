import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movies/models/movie_models.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class MoviesCarouselView extends StatelessWidget {
  final List<MovieData> movieList;
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
          color: theme.themeData.scaffoldBackgroundColor,
          height: configuration.movieCarouselContainerHeight,
          child: Stack(
            children: [
              Container(
                color: theme.themeData.primaryColor,
                height: configuration.movieCarouselBlueContainerHeight,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: configuration.movieCarouselHeaderTopPadding,
                  left: configuration.movieCarouselHeaderLeftPadding,
                ),
                child: Text(
                  context.localization.movies_page_title,
                  style: theme.moviesViewHeaderTextStyle(
                    configuration.headerTextSize,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CarouselView(
                  list: movieList,
                  height: configuration.movieCarouselContainerSize.height,
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
