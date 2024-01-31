import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movies/models/movie_model.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class MoviesCarouselCardInfoView extends StatelessWidget {
  final MovieModel movie;
  const MoviesCarouselCardInfoView({required this.movie, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RatingView(
              rating: movie.rating,
              ratingViewSize: RatingViewSizeEnum.large,
            ),
            Text(
              movie.movieName,
              style: theme.carouselCardTitleTextStyle(
                  configuration.carouselCardTitleTextSize),
              maxLines: 1,
            ),
            Text(
              movie.genres,
              style: theme.carouselCardSubTitleTextStyle(
                  configuration.carouselCardSubTitleTextSize),
            )
          ],
        );
      },
    );
  }
}
