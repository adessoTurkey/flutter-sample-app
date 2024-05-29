import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class MovieCellView extends StatelessWidget {
  final MovieData movie;
  final List<GenreData>? genres;

  const MovieCellView({required this.movie, super.key, this.genres});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return CustomCard(
          elevation: configuration.movieCellCardElevation,
          shadowColor: Colors.black26,
          backgroundColor: theme.mainPageCardBackgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ImageContainerView(
                imageURL: movie.getImageURL,
                containerSize: Size(configuration.movieCellImageWidth, 0),
                placeholderImage: MovieAssets.images.poster1.path,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: configuration.movieCellBodyPaddingLeft,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        movie.movieTitle ?? "",
                        style: theme.movieCellMovieNameTextStyle(
                          configuration.movieCellMovieNameTextSize,
                        ),
                        maxLines: 2,
                      ),
                      10.verticalSizedBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Text(
                          movie.getGenres(genres),
                          style: theme.movieCellMovieGenresTextStyle(
                            configuration.movieCellMovieGenresTextSize,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      10.verticalSizedBox,
                      Row(
                        children: [
                          ReleaseDateView(
                            releaseDate: movie.releaseDate ?? "",
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: configuration
                                  .movieCellDividerPaddingHorizontal,
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
                              rating: movie.getVoteAvarage,
                              type: RatingViewType.cell),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
