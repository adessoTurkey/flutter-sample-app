import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class MoviesCarouselCardInfoView extends StatelessWidget {
  final MovieData movie;

  const MoviesCarouselCardInfoView({required this.movie, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenreBloc, GenreState>(
      builder: (context, state) {
        return ConfigurationWidget(
          onConfigurationReady: (configuration, theme) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingView(
                    rating: movie.getVoteAvarage,
                    type: RatingViewType.carousel),
                if (movie.movieTitle != null)
                  Text(
                    movie.movieTitle!,
                    style: theme.carouselCardTitleTextStyle(
                        configuration.carouselCardTitleTextSize),
                    maxLines: 1,
                  ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    movie.getGenres(state.movieGenres),
                    style: theme.carouselCardSubTitleTextStyle(
                        configuration.carouselCardSubTitleTextSize),
                    maxLines: 1,
                  ),
                )
              ],
            );
          },
        );
      },
    );
  }
}
