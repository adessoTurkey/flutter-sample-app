import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/config/app_router.dart';
import 'package:flutter_movie_app/app/core/extensions/padding_extension.dart';
import 'package:flutter_movie_app/app/features/tv_series/models/tv_series_data/tv_series_data.dart';
import 'package:flutter_movie_app/app/features/tv_series/view/tv_series_cell_view.dart';

import '../../../../responsive/configuration_widget.dart';

class TvSeriesListView extends StatelessWidget {
  final List<TvSeriesData> tvSeriesList;

  const TvSeriesListView({required this.tvSeriesList, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (config, _) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Two items in one row
              crossAxisSpacing: config.tvSeriesGridCrossAxisSpacing,
              mainAxisSpacing: config.tvSeriesGridMainAxisSpacing,
              mainAxisExtent: config.tvSeriesGridMainAxisExtent
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: tvSeriesList.length,
          itemBuilder: (context, index) {
            var tvSeries = tvSeriesList[index];
            return Padding(
              padding: 8.onlyVertical,
              child: GestureDetector(
                onTap: () {
                  if(tvSeries.id != null) {
                    context.pushRoute(
                      TvSeriesDetailRoute(tvSeriesId: tvSeries.id!));
                  }
                },
                child: TvSeriesCellView(
                  tvSeriesData: tvSeries,
                ),
              ),
            );
          },
        );
      },);
  }
}
