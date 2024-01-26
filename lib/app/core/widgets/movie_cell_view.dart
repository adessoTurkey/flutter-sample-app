import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';

class MovieCellView extends StatelessWidget {
  final String imageURL;
  const MovieCellView({required this.imageURL, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: Colors.black26,
      clipBehavior: Clip.hardEdge,
      surfaceTintColor: Colors.white,
      child: Row(
        children: [
          ImageContainerView(
            imageURL: imageURL,
            containerSize: const Size(
              MoviesConstants.movieCellImageWidth,
              MoviesConstants.movieCellHeight,
            ),
            placeholderImage: MovieAssets.images.poster1.path,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Joker",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: MColors.almostBlack,
                  ),
                ),
                Text(
                  "Crime, Drama",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: MColors.almostBlack,
                  ),
                ),
                Row(
                  children: [
                    ReleaseDateView(
                      releaseDate: "21.02.2022",
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                      child: SizedBox(
                        height: 10,
                        child: VerticalDivider(
                          width: 10,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    RatingView(
                      rating: 4.3,
                      size: RatingViewSizeEnum.medium,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
