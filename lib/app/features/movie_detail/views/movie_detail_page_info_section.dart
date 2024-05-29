import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/localization/app_localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:share_plus/share_plus.dart';

class MovieDetailPageInfoSection extends StatelessWidget {
  final MovieDetailModel? movieDetailModel;

  const MovieDetailPageInfoSection({super.key, required this.movieDetailModel});

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
              movieDetailModel?.overivew ?? "",
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
          movieDetailModel?.title ?? "",
          style: titleTextStyle,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        10.verticalSizedBox,
        Text(
          movieDetailModel?.getGenres() ?? "",
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
            DurationView(durationTime: movieDetailModel?.runtime.toString()),
            _verticalDivider(),
            ReleaseDateView(releaseDate: movieDetailModel?.releaseDate ?? ""),
            _verticalDivider(),
          ],
        ),
        20.verticalSizedBox,
        BlocConsumer<MovieDetailBloc, MovieDetailState>(
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
                      movieDetailModel?.title ?? ""),
                  backgroundColor: MColors.electricBlue,
                ),
              );
            } else if (state.ratingResponseModel?.statusCode ==
                PostRatingStatusCodeEnum.posted) {
              context.showSnackbarAfterHide(
                AppUtils.mSnackBar(
                  title: context.localization.snackbar_successfully_added(
                      movieDetailModel?.title ?? ""),
                  backgroundColor: MColors.vibrantBlue,
                ),
              );
            }
          },
          builder: (context, state) {
            return RateView(
              rating: state.ratingValue,
              onChanged: (ratingValue) => context
                  .read<MovieDetailBloc>()
                  .add(MovieDetailAddRatingEvent(ratingValue: ratingValue)),
              shareButtonTapped: () {
                Share.share(state.movieDetailModel?.title ?? "",
                    subject: state.movieDetailModel?.title ?? "");
              },
              starIconButtonTapped: () => context.read<MovieDetailBloc>().add(
                MovieDetailRatingCollapsed(isCollapsed: state.isCollapsed),
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