import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movies/models/movie_model.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class MovieCellView extends StatelessWidget {
  final MovieModel movie;
  const MovieCellView({required this.movie, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Card(
          elevation: WidgetsConstants.movieCellCardElevation,
          shadowColor: Colors.black26,
          clipBehavior: Clip.hardEdge,
          surfaceTintColor: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ImageContainerView(
                imageURL: movie.imageURL,
                containerSize: const Size(
                  WidgetsConstants.movieCellImageWidth,
                  WidgetsConstants.movieCellHeight,
                ),
                placeholderImage: MovieAssets.images.poster1.path,
              ),
              Container(
                width: WidgetsConstants.movieCellInfoContainerWidth,
                padding: const EdgeInsets.only(
                  left: WidgetsConstants.movieCellBodyPaddingLeft,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.movieName,
                      style: theme.movieCellMovieNameTextStyle(
                        configuration.movieCellMovieNameTextSize,
                      ),
                      maxLines: 1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      movie.genres,
                      style: theme.movieCellMovieGenresTextStyle(
                        configuration.movieCellMovieGenresTextSize,
                      ),
                      maxLines: 1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ReleaseDateView(
                          releaseDate: movie.releaseDate,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: WidgetsConstants
                                .movieCellDividerPaddingHorizontal,
                            vertical: WidgetsConstants
                                .movieCellDividerPaddingVertical,
                          ),
                          child: SizedBox(
                            height: WidgetsConstants.movieCellDividerHeight,
                            child: VerticalDivider(
                              width: WidgetsConstants.movieCellDividerWidth,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        RatingView(
                          rating: movie.rating,
                          ratingViewSize: RatingViewSizeEnum.medium,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
