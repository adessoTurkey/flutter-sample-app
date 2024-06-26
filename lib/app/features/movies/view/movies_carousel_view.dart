import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/app.dart';
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
          color: theme.mainPageBackgroundColor,
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
                        context.pushRoute(
                            MovieDetailRoute(movieId: movieList[index].id!));
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
