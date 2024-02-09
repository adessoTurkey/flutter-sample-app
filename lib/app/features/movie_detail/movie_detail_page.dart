import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movies/movies.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'movie_detail.dart';

@RoutePage()
class MovieDetailPage extends StatelessWidget {
  final MovieModel movieModel;
  const MovieDetailPage({required this.movieModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConfigurationWidget(
        onConfigurationReady: (configuration, theme) {
          return SingleChildScrollView(
            child: Column(
              children: [
                MovieDetailPageImageSection(
                  movieModel: movieModel,
                ),
                const Positioned(
                  bottom: -40,
                  child: RatingView(rating: 3.3, type: RatingViewType.carousel),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: configuration.movieDetailPagePaddingHorizontal,
                    vertical: configuration.movieDetailPagePaddingVerical,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MovieDetailPageInfoSection(
                        movieModel: movieModel,
                      ),
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
