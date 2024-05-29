import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/localization/app_localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class TvSeriesDetailCastSection extends StatelessWidget {
  final CreditResponse creditResponse;
  final List<CrewModel>? creators;

  const TvSeriesDetailCastSection(
      {required this.creditResponse, required this.creators, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (creators != null && creators!.isNotEmpty)
              tvSeriesDetailCreatorSection(
                context.localization.tv_series_detail_creators,
                theme.movieDetailCastLeftLabelTextStyle(
                    configuration.detailCastLabelTextSize),
                theme.movieDetailCastRightLabelTextStyle(
                    configuration.detailCastLabelTextSize),
              ),
            40.verticalSizedBox,
            Text(
              context.localization.tv_series_detail_cast,
              style: theme.tvSeriesDetailCastTitleTextStyle(
                  configuration.tvSeriesDetailCastTitleTextSize),
            ),
            if (creditResponse.cast != null)
              DetailHorizontalCastList(castList: creditResponse.cast!),
          ],
        );
      },
    );
  }

  Widget tvSeriesDetailCreatorSection(
    String title,
    TextStyle titleTextStyle,
    TextStyle infoTextStyle,
  ) {
    return DetailCrewLabelSection(
        title: title,
        titleTextStyle: titleTextStyle,
        info: creators!,
        infoTextStyle: infoTextStyle);
  }
}
