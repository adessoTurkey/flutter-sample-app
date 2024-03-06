import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/sized_box_extensions.dart';
import 'package:flutter_movie_app/app/core/extensions/tv_series_data_extension.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/tv_series/models/tv_series_data/tv_series_data.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class TvSeriesCellView extends StatelessWidget {
  final TvSeriesData tvSeriesData;
  const TvSeriesCellView({required this.tvSeriesData, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return CustomCard(
          elevation: configuration.movieCellCardElevation,
          shadowColor: Colors.black26,
          backgroundColor: theme.themeData.scaffoldBackgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageContainerView(
                imageURL: tvSeriesData.getImageURL,
                containerSize: Size(
                  configuration.tvSeriesCellImageHeight,
                  configuration.tvSeriesCellImageWidth,
                ),
                placeholderImage: MovieAssets.images.poster1.path,
              ),
              Container(
                height: configuration.tvSeriesCellInfoContainerHeight,
                padding: EdgeInsets.only(
                  left: configuration.movieCellBodyPaddingLeft,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tvSeriesData.tvSeriesTitle ?? "",
                      style: theme.movieCellMovieNameTextStyle(
                        configuration.movieCellMovieNameTextSize,
                      ),
                      maxLines: 1,
                    ),
                    10.verticalSizedBox,
                    RatingView(
                        rating: tvSeriesData.getVoteAverage,
                        type: RatingViewType.movieCell
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
