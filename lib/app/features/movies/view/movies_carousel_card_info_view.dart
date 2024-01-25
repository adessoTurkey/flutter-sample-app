import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';

class MoviesCarouselCardInfoView extends StatelessWidget {
  const MoviesCarouselCardInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RatingView(
          rating: 4.2,
          size: RatingViewSizeEnum.large,
        ),
        Text(
          "Joker",
          style: TextStyle(
            color: MColors.almostBlack,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Crime, Drama, Thriller",
          style: TextStyle(
            color: MColors.almostBlack,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
