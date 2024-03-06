import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/config/app_router.dart';
import 'package:flutter_movie_app/app/core/extensions/tv_series_data_extension.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/tv_series/models/tv_series_data/tv_series_data.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class TvSeriesCarouselView extends StatelessWidget {
  final List<TvSeriesData> tvSeriesList;
  final Function(int currentIndex) onPageChanged;

  const TvSeriesCarouselView({
    required this.tvSeriesList,
    required this.onPageChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Container(
          color: theme.themeData.scaffoldBackgroundColor,
          height: configuration.movieCarouselContainerHeight,
          child: Stack(
            children: [
              Container(
                color: theme.themeData.primaryColorDark,
                height: configuration.movieCarouselBlueContainerHeight,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CarouselView(
                  listLength: tvSeriesList.length,
                  height: configuration.movieCarouselContainerSize.height,
                  onPageChanged: onPageChanged,
                  itemBuilder: (context, index) {
                    return CarouselImageCardWidget(
                      imageUrl: tvSeriesList[index].getImageURL,
                      onTapped: () {
                        context.pushRoute(TvSeriesDetailRoute(tvSeriesId: tvSeriesList[index].id!));
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
