import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/app.dart';
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
          itemBuilder: (context, index) {
            var tvSeries = tvSeriesList[index];
            return Padding(
              padding: 8.onlyVertical,
              child: GestureDetector(
                onTap: () {
                  if (tvSeries.id != null) {
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
      },
    );
  }
}
