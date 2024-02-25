import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/sized_box_extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movies/models/movie_models.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        10.verticalSizedBox,
        Row(
          children: [
            DurationView(durationTime: movieModel.duration),
            const VerticalDividerWidget(
              paddingAll: 10,
              dividerHeight: 20,
              dividerWidth: 2,
            ),
            ReleaseDateView(releaseDate: movieModel.releaseDate),
            const VerticalDividerWidget(
              paddingAll: 10,
              dividerHeight: 20,
              dividerWidth: 2,
            ),
          ],
        ),
        20.verticalSizedBox,
        const RateView(),
        20.verticalSizedBox,
        const Divider(),
      ],
    );
  }
}
