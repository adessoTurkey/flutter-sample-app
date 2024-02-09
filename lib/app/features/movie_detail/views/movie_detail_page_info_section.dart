import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movies/movies.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class MovieDetailPageInfoSection extends StatelessWidget {
  final MovieModel movieModel;
  const MovieDetailPageInfoSection({super.key, required this.movieModel});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _movieInfoLabelSection(
              theme.movieDetailMovieTitleTextStyle(
                  configuration.movieDetailMovieTitleTextSize),
              theme.movieDetailMovieGenresTextStyle(
                  configuration.movieDetailMovieGenresTextSize),
            ),
            _movieRatingAndSharingSection()
          ],
        );
      },
    );
  }

  Widget _movieInfoLabelSection(
      TextStyle titleTextStyle, TextStyle genresTextStyle) {
    return Wrap(
      spacing: 8,
      direction: Axis.vertical,
      children: [
        Text(
          movieModel.movieName,
          style: titleTextStyle,
        ),
        Text(
          movieModel.genres,
          style: genresTextStyle,
        ),
      ],
    );
  }

  Widget _movieRatingAndSharingSection() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            DurationView(durationTime: 144),
            VerticalDividerWidget(dividerHeight: 20),
            ReleaseDateView(releaseDate: "20.20.2024"),
            VerticalDividerWidget(dividerHeight: 20),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        RateView(),
        SizedBox(
          height: 20,
        ),
        Divider(),
      ],
    );
  }
}
