import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/api_call/api_repositories/remote_data_source.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/extensions/tv_series_detail_model_extension.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/tv_series_detail/bloc/tv_series_detail_bloc.dart';
import 'package:flutter_movie_app/app/features/tv_series_detail/view/tv_series_detail_cast_section.dart';
import 'package:flutter_movie_app/di/dependency_injection.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import '../../core/enums/favorite_entity_type.dart';

@RoutePage()
class TvSeriesDetailPage extends StatelessWidget {
  final int tvSeriesId;
  const TvSeriesDetailPage({required this.tvSeriesId, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      TvSeriesDetailBloc(remoteDataSource: getIt<RemoteDataSource>())
        ..add(TvSeriesDetailInitialEvent(tvSeriesId: tvSeriesId)),
      child: Scaffold(
        body: BlocBuilder<TvSeriesDetailBloc, TvSeriesDetailState>(
          builder: (context, state) {
            switch (state.status) {
              case TvSeriesDetailStatus.loading:
                return const LoadingView();
              case TvSeriesDetailStatus.success:
                return ConfigurationWidget(
                  onConfigurationReady: (configuration, theme) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          DetailPageImageSection(
                            favoriteEntityType: FavoriteEntityType.tv,
                            id: state.tvSeriesDetailModel?.id,
                            voteAverage: state.tvSeriesDetailModel?.getVoteAverage,
                            imageUrl: state.tvSeriesDetailModel?.getImageURL,
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
                                  overview: state.tvSeriesDetailModel?.overview,
                                  releaseDate: "${context.localization.tv_series_detail_date_title} ${state.tvSeriesDetailModel?.getDates()}",
                                  runTime: state.tvSeriesDetailModel?.getDuration,
                                  genres: state.tvSeriesDetailModel?.getGenres(),
                                  title: state.tvSeriesDetailModel?.name,
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
                                      "${state.tvSeriesDetailModel?.getNumberOfSeasons} ${context.localization.tv_series_detail_seasons}",
                                        style: theme.tvSeriesDetailSeasonsTextStyle(configuration.tvSeriesDetailSeasonsTextSize),
                                    ),
                                  )
                                ),
                                20.verticalSizedBox,
                                TvSeriesDetailCastSection(
                                  creditResponse: state.creditResponse!,
                                  creators: (state.tvSeriesDetailModel?.getCreators).emptyIfNull,
                                ),
                                20.verticalSizedBox,
                                DetailPageTrailer(
                                  videoModelResponse: state.videoModelResponse,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              case TvSeriesDetailStatus.error:
                return ErrorView(
                  error: state.errorMessage,
                );
              case TvSeriesDetailStatus.initial:
                return const LoadingView();
            }
          },
        ),
      ),
    );
  }
}