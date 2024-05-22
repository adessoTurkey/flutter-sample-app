import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/core/constants/m_colors.dart';
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/extensions/tv_series_detail_model_extension.dart';
import 'package:flutter_movie_app/app/core/utils/app_utils.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/tv_series_detail/bloc/tv_series_detail_bloc.dart';
import 'package:flutter_movie_app/app/features/tv_series_detail/models/tv_series_detail_model.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:share_plus/share_plus.dart';

class TvSeriesDetailPageInfoSection extends StatelessWidget {
  final TvSeriesDetailModel? tvSeriesDetailModel;
  const TvSeriesDetailPageInfoSection({super.key, required this.tvSeriesDetailModel});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _movieInfoLabelSection(
              theme.detailPageTitleTextStyle(
                  configuration.detailPageTitleTextSize),
              theme.detailPageGenresTextStyle(
                  configuration.detailPageGenresTextSize),
            ),
            _movieRatingAndSharingSection(),
            20.verticalSizedBox,
            Text(
              tvSeriesDetailModel?.overview ?? "",
              style: theme.detailDescriptionTextStyle(
                  configuration.detailPageDescriptionTextSize),
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
          tvSeriesDetailModel?.name ?? "",
          style: titleTextStyle,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        10.verticalSizedBox,
        Text(
          tvSeriesDetailModel?.getGenres() ?? "",
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
            DurationView(durationTime: tvSeriesDetailModel?.getDuration()),
            _verticalDivider(),
            ReleaseDateView(releaseDate: tvSeriesDetailModel?.getDates() ?? ""),
            _verticalDivider(),
          ],
        ),
        20.verticalSizedBox,
        BlocConsumer<TvSeriesDetailBloc, TvSeriesDetailState>(
          buildWhen: (previous, current) {
            return previous.isCollapsed != current.isCollapsed ||
                previous.ratingValue != current.ratingValue;
          },
          listenWhen: (previous, current) =>
          previous.ratingValue != current.ratingValue,
          listener: (context, state) {
            if (state.ratingResponseModel?.statusCode ==
                PostRatingStatusCodeEnum.updated) {
              context.showSnackbarAfterHide(
                AppUtils.mSnackBar(
                  title: context.localization.snackbar_successfully_updated(
                      tvSeriesDetailModel?.name ?? ""),
                  backgroundColor: MColors.electricBlue,
                ),
              );
            } else if (state.ratingResponseModel?.statusCode ==
                PostRatingStatusCodeEnum.posted) {
              context.showSnackbarAfterHide(
                AppUtils.mSnackBar(
                  title: context.localization.snackbar_successfully_added(
                      tvSeriesDetailModel?.name ?? ""),
                  backgroundColor: MColors.vibrantBlue,
                ),
              );
            }
          },
          builder: (context, state) {
            return RateView(
              rating: state.ratingValue,
              onChanged: (ratingValue) => context
                  .read<TvSeriesDetailBloc>()
                  .add(TvSeriesDetailAddRatingEvent(ratingValue: ratingValue)),
              shareButtonTapped: () {
                Share.share(state.tvSeriesDetailModel?.name ?? "",
                    subject: state.tvSeriesDetailModel?.name ?? "");
              },
              starIconButtonTapped: () => context.read<TvSeriesDetailBloc>().add(
                TvSeriesDetailRatingCollapsed(isCollapsed: state.isCollapsed),
              ),
              isCollapsed: state.isCollapsed,
            );
          },
        ),
        20.verticalSizedBox,
        const Divider(),
      ],
    );
  }

  VerticalDividerWidget _verticalDivider() {
    return const VerticalDividerWidget(
      paddingAll: 10,
      dividerHeight: 20,
      dividerWidth: 2,
    );
  }
}