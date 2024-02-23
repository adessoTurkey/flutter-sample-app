import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/movie_detail_extension.dart';
import 'package:flutter_movie_app/app/core/extensions/sized_box_extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movie_detail/models/movie_detail/movie_detail_model.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class MovieDetailPageInfoSection extends StatelessWidget {
  final MovieDetailModel movieDetailModel;
  const MovieDetailPageInfoSection({super.key, required this.movieDetailModel});

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
            _movieRatingAndSharingSection(),
            20.verticalSizedBox,
            Text(
              movieDetailModel.overivew ?? "",
              style: theme.movieDetailDescriptionTextStyle(
                  configuration.movieDetailDescriptionTextSize),
            ),
          ],
        );
      },
    );
  }

  Widget _movieInfoLabelSection(
      TextStyle titleTextStyle, TextStyle genresTextStyle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          movieDetailModel.title ?? "",
          style: titleTextStyle,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        10.verticalSizedBox,
        Text(
          movieDetailModel.getGenres(),
          style: genresTextStyle,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
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
            DurationView(durationTime: movieDetailModel.runtime ?? 0),
            const VerticalDividerWidget(
              paddingAll: 10,
              dividerHeight: 20,
              dividerWidth: 2,
            ),
            ReleaseDateView(releaseDate: movieDetailModel.releaseDate ?? ""),
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
