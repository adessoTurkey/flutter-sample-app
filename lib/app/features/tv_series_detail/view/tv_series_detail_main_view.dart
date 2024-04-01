import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/extensions/tv_series_detail_model_extension.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movie_detail/models/movie_detail_models.dart';
import 'package:flutter_movie_app/app/features/tv_series_detail/models/tv_series_detail_model.dart';
import 'tv_series_detail_cast_section.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import '../../../core/enums/favorite_entity_type.dart';

@RoutePage()
class TvSeriesDetailMainView extends StatelessWidget {
  final TvSeriesDetailModel tvSeriesDetailModel;
  final CreditResponse creditResponse;
  final VideoModelResponse videoModelResponse;
  const TvSeriesDetailMainView({
    required this.tvSeriesDetailModel,
    required this.creditResponse,
    required this.videoModelResponse, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return SingleChildScrollView(
          child: Column(
            children: [
              DetailPageImageSection(
                favoriteEntityType: FavoriteEntityType.tv,
                id: tvSeriesDetailModel.id,
                voteAverage: tvSeriesDetailModel.getVoteAverage,
                imageUrl: tvSeriesDetailModel.getImageURL,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: configuration
                      .movieDetailPagePaddingHorizontal,
                  vertical:
                  configuration.movieDetailPagePaddingVerical,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailPageInfoSection(
                      overview: tvSeriesDetailModel.overview,
                      releaseDate: "${context.localization.tv_series_detail_date_title} ${tvSeriesDetailModel.getDates()}",
                      runTime: tvSeriesDetailModel.getDuration(),
                      genres: tvSeriesDetailModel.getGenres(),
                      title: tvSeriesDetailModel.name,
                    ),
                    20.verticalSizedBox,
                    Container(
                        decoration: BoxDecoration(
                            color: MColors.charcoalGrey,
                            borderRadius: BorderRadius.all(Radius.circular(
                                configuration.tvSeriesDetailSeasonsRadius
                            ))
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: configuration.tvSeriesDetailSeasonsVerticalPadding,
                              horizontal: configuration.tvSeriesDetailSeasonsHorizontalPadding),
                          child: Text(
                            "${tvSeriesDetailModel.getNumberOfSeasons} ${context.localization.tv_series_detail_seasons}",
                            style: theme.tvSeriesDetailSeasonsTextStyle(configuration.tvSeriesDetailSeasonsTextSize),
                          ),
                        )
                    ),
                    20.verticalSizedBox,
                      TvSeriesDetailCastSection(
                        creditResponse: creditResponse,
                        creators: tvSeriesDetailModel.getCreators,
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