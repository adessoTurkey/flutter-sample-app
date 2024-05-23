import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/config/app_router.dart';
import 'package:flutter_movie_app/app/core/extensions/padding_extension.dart';
import 'package:flutter_movie_app/app/features/tv_series/models/tv_series_data/tv_series_data.dart';
import 'package:flutter_movie_app/app/features/tv_series/view/tv_series_cell_view.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../responsive/configuration_widget.dart';

class TvSeriesGridView extends StatelessWidget {
  final List<TvSeriesData> tvSeriesList;

  const TvSeriesGridView({required this.tvSeriesList, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (config, _) {
        return MasonryGridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: tvSeriesList.length,
          crossAxisSpacing: config.tvSeriesGridCrossAxisSpacing,
          mainAxisSpacing: config.tvSeriesGridMainAxisSpacing,
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Two items in one row

          ),

        itemBuilder:
        (context, index) {
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
