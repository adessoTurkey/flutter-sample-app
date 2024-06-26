import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class DetailHorizontalCastList extends StatelessWidget {
  final List<CastResults> castList;

  const DetailHorizontalCastList({required this.castList, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(onConfigurationReady: (configuration, theme) {
      return SizedBox(
        height: configuration.tvSeriesDetailCastListHeight,
        // Height of the horizontal list
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: castList.length, // Number of items in the list
          itemBuilder: (BuildContext context, int index) {
            var castItem = castList[index];
            return Padding(
              padding: 8.onlyHorizontal,
              child: GestureDetector(
                onTap: () {
                  context
                      .pushRoute(ActorDetailRoute(actorId: castItem.id ?? 0));
                },
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
