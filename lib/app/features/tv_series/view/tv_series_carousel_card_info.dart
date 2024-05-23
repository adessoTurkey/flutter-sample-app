import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/tv_series/models/tv_series_data/tv_series_data.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import '../../genre_data/bloc/genre_bloc.dart';

class TvSeriesCarouselCardInfo extends StatelessWidget {
  final TvSeriesData tvSeries;
  const TvSeriesCarouselCardInfo({required this.tvSeries, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenreBloc, GenreState>(
        builder: (context, state)
    {
      return ConfigurationWidget(
        onConfigurationReady: (configuration, theme) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(tvSeries.getVoteAverage != null)
              RatingView(
                  rating: tvSeries.getVoteAverage!,
                  type: RatingViewType.carousel),
              if(tvSeries.tvSeriesTitle != null)
              Text(
                tvSeries.tvSeriesTitle!,
                style: theme.carouselCardTitleTextStyle(
                    configuration.carouselCardTitleTextSize),
                maxLines: 1,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  tvSeries.getGenres(state.tvGenres),
                  style: theme.carouselCardSubTitleTextStyle(
                      configuration.carouselCardSubTitleTextSize),
                  maxLines: 1,
                ),
              )
            ],
          );
        },
      );
    });
  }
}
