import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/localization/app_localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class TvSeriesDetailMainView extends StatelessWidget {
  final TvSeriesDetailModel tvSeriesDetailModel;
  final CreditResponse creditResponse;
  final VideoModelResponse videoModelResponse;

  const TvSeriesDetailMainView(
      {required this.tvSeriesDetailModel,
      required this.creditResponse,
      required this.videoModelResponse,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return SingleChildScrollView(
          child: Column(
            children: [
              DetailPageImageSection(
                favoriteEntityType: FavoriteEntityType.tv,
                id: tvSeriesDetailModel.id ?? -1,
                releaseDate: tvSeriesDetailModel.firstAirDate ?? "",
                title: tvSeriesDetailModel.name ?? "",
                voteAverage: tvSeriesDetailModel.getVoteAverage,
                imageUrl: tvSeriesDetailModel.getImageURL,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: configuration.movieDetailPagePaddingHorizontal,
                  vertical: configuration.movieDetailPagePaddingVerical,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TvSeriesDetailPageInfoSection(
                        tvSeriesDetailModel: tvSeriesDetailModel),
                    20.verticalSizedBox,
                    Container(
                        decoration: BoxDecoration(
                            color: MColors.charcoalGrey,
                            borderRadius: BorderRadius.all(Radius.circular(
                                configuration.tvSeriesDetailSeasonsRadius))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: configuration
                                  .tvSeriesDetailSeasonsVerticalPadding,
                              horizontal: configuration
                                  .tvSeriesDetailSeasonsHorizontalPadding),
                          child: Text(
                            "${tvSeriesDetailModel.getNumberOfSeasons} ${context.localization.tv_series_detail_seasons}",
                            style: theme.tvSeriesDetailSeasonsTextStyle(
                                configuration.tvSeriesDetailSeasonsTextSize),
                          ),
                        )),
                    20.verticalSizedBox,
                    TvSeriesDetailCastSection(
                      creditResponse: creditResponse,
                      creators: tvSeriesDetailModel.getCreators(),
                    ),
                    20.verticalSizedBox,
                    DetailPageTrailer(
                      videoModelResponse: videoModelResponse,
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
