import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/padding_extension.dart';
import 'package:flutter_movie_app/app/features/tv_series_detail/view/tv_series_detail_cast_item.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import '../../movie_detail/models/credits/cast/cast_results.dart';

class DetailHorizontalCastList extends StatelessWidget {
  final List<CastResults> castList;
  const DetailHorizontalCastList({required this.castList, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
        onConfigurationReady: (configuration, theme)
    {
      return SizedBox(
        height: configuration.tvSeriesDetailCastListHeight, // Height of the horizontal list
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: castList.length, // Number of items in the list
          itemBuilder: (BuildContext context, int index) {
            var castItem = castList[index];
            return Padding(
              padding: 8.onlyHorizontal,
              child: GestureDetector(
                onTap: () {},
                child: DetailPageCastItem(
                  cast: castItem,
                ),
              ),
            );
          },
        ),
      );
    });
  }
}