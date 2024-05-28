import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
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
          elevation: configuration.tvSeriesCellCardElevation,
          shadowColor: MColors.black26,
          backgroundColor: theme.themeData.scaffoldBackgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageContainerView(
                imageURL: tvSeriesData.getImageURL,
                containerSize: Size(double.infinity,configuration.tvSeriesCellImageSize.height),
                placeholderImage: MovieAssets.images.poster1.path,
              ),
              Container(
                color: theme.mainPageCardBackgroundColor,
                padding: EdgeInsets.only(
                  left: configuration.tvSeriesCellBodyPaddingLeft,
                  bottom: configuration.tvSeriesCellBodyPaddingLeft
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if(tvSeriesData.tvSeriesTitle != null)
                    Text(
                      tvSeriesData.tvSeriesTitle!,
                      style: theme.tvSeriesCellNameTextStyle(
                        configuration.tvSeriesCellNameTextSize,
                      ),
                      maxLines: 2,

                    ),
                    10.verticalSizedBox,
                    if(tvSeriesData.getVoteAverage != null)
                    RatingView(
                        rating: tvSeriesData.getVoteAverage!,
                        type: RatingViewType.cell
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
