import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';

class MoviesCarouselView extends StatelessWidget {
  final List<String> imageList;
  final Function(int currentIndex) onPageChanged;

  const MoviesCarouselView({
    required this.imageList,
    required this.onPageChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Stack(
        children: [
          Container(
            color: MColors.electricBlue,
            height: MoviesConstants.movieCarouselBlueContainerHeight,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 24.0, left: 32.0),
            child: Text(
              "Movies",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CarouselView(
              images: imageList,
              height: MoviesConstants.movieCarouselHeight,
              onPageChanged: onPageChanged,
            ),
          ),
        ],
      ),
    );
  }
}
