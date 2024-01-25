import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';

class MovieCellView extends StatelessWidget {
  const MovieCellView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 8,
      shadowColor: Colors.black26,
      clipBehavior: Clip.hardEdge,
      surfaceTintColor: Colors.white,
      child: Row(
        children: [
          ImageContainerView(
            imageURL:
                "https://m.media-amazon.com/images/M/MV5BZWEwNzQ4NzUtMWRmYS00NDdiLTg5NDItODA5M2M4YTM0ZTE2XkEyXkFqcGdeQXVyMTAzNjU2NjM1._V1_FMjpg_UX1000_.jpg",
            containerSize: Size(
              MoviesConstants.movieCellImageWidth,
              MoviesConstants.movieCellHeight,
            ),
          ),
          Padding(
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
