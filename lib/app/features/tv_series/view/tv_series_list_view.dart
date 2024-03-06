import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/config/app_router.dart';
import 'package:flutter_movie_app/app/core/extensions/padding_extension.dart';
import 'package:flutter_movie_app/app/features/tv_series/models/tv_series_data/tv_series_data.dart';
import 'package:flutter_movie_app/app/features/tv_series/view/tv_series_cell_view.dart';

class TvSeriesListView extends StatelessWidget {
  final List<TvSeriesData> tvSeriesList;
  const TvSeriesListView({required this.tvSeriesList, super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Two items in one row
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        mainAxisExtent: 380
      ),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: tvSeriesList.length,
      itemBuilder: (context, index) {
        var tvSeries = tvSeriesList[index];
        return Padding(
          padding: 8.onlyVertical,
          child: GestureDetector(
            onTap: () {
              context.pushRoute(TvSeriesDetailRoute(tvSeriesId: tvSeries.id!));
            },
            child: TvSeriesCellView(
              tvSeriesData: tvSeries,
            ),
          ),
        );
      },
    );
  }
}
