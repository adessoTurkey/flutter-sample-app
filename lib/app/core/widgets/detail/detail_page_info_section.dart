import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class DetailPageInfoSection extends StatelessWidget {
  final String? overview;
  final String? title;
  final String? genres;
  final String? runTime;
  final String? releaseDate;
  final int itemID;
  final RatingEnpoints ratingEndpoints;

  const DetailPageInfoSection({super.key,
     this.overview,
     this.title,
     this.genres,
     this.runTime,
     this.releaseDate,
     required this.itemID,
     required this.ratingEndpoints});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _infoLabelSection(
              theme.detailMovieTitleTextStyle(
                  configuration.detailPageTitleTextSize),
              theme.detailMovieGenresTextStyle(
                  configuration.detailPageGenresTextSize),
            ),
            _ratingAndSharingSection(),
            20.verticalSizedBox,
            if(overview != null)
            Text(
              overview!,
              style: theme.detailDescriptionTextStyle(
                  configuration.detailPageDescriptionTextSize),
            ),
          ],
        );
      },
    );
  }

  Widget _infoLabelSection(
      TextStyle titleTextStyle, TextStyle genresTextStyle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(title != null)
        Text(
          title!,
          style: titleTextStyle,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        10.verticalSizedBox,
        if(genres != null)
        Text(
          genres!,
          style: genresTextStyle,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ],
    );
  }

  Widget _ratingAndSharingSection() {
    return ConfigurationWidget(
        onConfigurationReady: (configuration, theme) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.verticalSizedBox,
              Row(
                children: [
                  DurationView(durationTime: runTime),
                  VerticalDividerWidget(
                    paddingAll: configuration.durationAndReleaseDateDividerPaddingAll,
                    dividerHeight: configuration.durationAndReleaseDateDividerHeight,
                    dividerWidth: 2,
                  ),
                  if(releaseDate != null)
                    ReleaseDateView(releaseDate: releaseDate!),
                  VerticalDividerWidget(
                    paddingAll: configuration.durationAndReleaseDateDividerPaddingAll,
                    dividerHeight: configuration.durationAndReleaseDateDividerHeight,
                    dividerWidth: 2,
                  ),
                ],
              ),
              20.verticalSizedBox,
              RateView(id: itemID, endpoint: ratingEndpoints, title: title ?? ""),
              20.verticalSizedBox,
              const Divider(),
            ],
          );
        });
  }
}
