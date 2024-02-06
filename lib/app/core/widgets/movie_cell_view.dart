import 'package:flutter/material.dart';
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
        return CustomCard(
          elevation: configuration.movieCellCardElevation,
          shadowColor: Colors.black26,
          backgroundColor: theme.themeData.scaffoldBackgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ImageContainerView(
                imageURL: movie.imageURL,
                containerSize: Size(
                  configuration.movieCellImageWidth,
                  configuration.movieCellImageWidth,
                ),
                placeholderImage: MovieAssets.images.poster1.path,
              ),
              Container(
                width: configuration.movieCellInfoContainerWidth,
                padding: EdgeInsets.only(
                  left: configuration.movieCellBodyPaddingLeft,
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
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal:
                                configuration.movieCellDividerPaddingHorizontal,
                            vertical:
                                configuration.movieCellDividerPaddingVertical,
                          ),
                          child: SizedBox(
                            height: configuration.movieCellDividerHeight,
                            child: VerticalDivider(
                              width: configuration.movieCellDividerWidth,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        RatingView(
                          rating: movie.rating,
                          type: RatingViewType.movieCell
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
