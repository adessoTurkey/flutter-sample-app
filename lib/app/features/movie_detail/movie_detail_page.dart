import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/features/movie_detail/model/movie_detail_model.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'movie_detail.dart';

@RoutePage()
class MovieDetailPage extends StatelessWidget {
  final MovieDetailModel movieDetail;
  const MovieDetailPage({required this.movieDetail, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConfigurationWidget(
        onConfigurationReady: (configuration, theme) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const MovieDetailPageImageSection(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: configuration.movieDetailPagePaddingHorizontal,
                    vertical: configuration.movieDetailPagePaddingVerical,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const MovieDetailPageInfoSection(),
                      const SizedBox(
                        height: 20,
                      ),
                      const MovieDetailPageDescriptionSection(),
                      const SizedBox(
                        height: 20,
                      ),
                      MovieDetailPageTrailerSection()
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
