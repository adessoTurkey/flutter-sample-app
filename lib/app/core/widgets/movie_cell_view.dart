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
      elevation: WidgetsConstants.movieCellCardElevation,
      shadowColor: Colors.black26,
      clipBehavior: Clip.hardEdge,
      surfaceTintColor: Colors.white,
      child: Row(
        children: [
          ImageContainerView(
            imageURL: imageURL,
            containerSize: const Size(
              WidgetsConstants.movieCellImageWidth,
              WidgetsConstants.movieCellHeight,
            ),
            placeholderImage: MovieAssets.images.poster1.path,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: WidgetsConstants.movieCellBodyPaddingLeft,
            ),
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
                      padding: EdgeInsets.symmetric(
                        horizontal:
                            WidgetsConstants.movieCellDividerPaddingHorizontal,
                        vertical:
                            WidgetsConstants.movieCellDividerPaddingVertical,
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
                      rating: 4.3,
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
  }
}
