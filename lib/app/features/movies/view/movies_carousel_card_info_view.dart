import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movies/models/movie_models.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class MoviesCarouselCardInfoView extends StatelessWidget {
  final MovieData movie;
  const MoviesCarouselCardInfoView({required this.movie, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RatingView(
                rating: movie.getVoteAvarage, type: RatingViewType.carousel),
            Text(
              movie.movieTitle ?? "",
              style: theme.carouselCardTitleTextStyle(
                  configuration.carouselCardTitleTextSize),
              maxLines: 1,
            ),
            Text(
              movie.getGenres(),
              style: theme.carouselCardSubTitleTextStyle(
                  configuration.carouselCardSubTitleTextSize),
              maxLines: 1,
            )
          ],
        );
      },
    );
  }
}
