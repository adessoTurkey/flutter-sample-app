import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/config/app_router.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movies/models/movie_models.dart';
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
          height: configuration.carouselContainerHeight,
          child: Stack(
            children: [
              Container(
                color: theme.themeData.primaryColorDark,
                height: configuration.carouselBlueContainerHeight,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CarouselView(
                  listLength: movieList.length,
                  height: configuration.carouselContainerSize.height,
                  onPageChanged: onPageChanged,
                  itemBuilder: (context, index) {
                    return CarouselImageCardWidget(
                      imageUrl: movieList[index].getImageURL,
                      onTapped: () {
                        context.pushRoute(MovieDetailRoute(movieId: movieList[index].id!));
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
