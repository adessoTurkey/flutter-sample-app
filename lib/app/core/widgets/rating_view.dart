import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum RatingViewSizeEnum { large, medium, small }

extension RatingViewSizeExtesion on RatingViewSizeEnum {
  Size get ratingViewSize {
    switch (this) {
      case RatingViewSizeEnum.large:
        return const Size(90, 50);
      case RatingViewSizeEnum.medium:
        return const Size(80, 50);
      case RatingViewSizeEnum.small:
        return const Size(75, 50);
      default:
        return const Size(90, 50);
    }
  }

  double get iconSize {
    switch (this) {
      case RatingViewSizeEnum.large:
        return 20;
      case RatingViewSizeEnum.medium:
        return 16;
      case RatingViewSizeEnum.small:
        return 14;
      default:
        return 20;
    }
  }

  double get fontSize {
    switch (this) {
      case RatingViewSizeEnum.large:
        return 18;
      case RatingViewSizeEnum.medium:
        return 14;
      case RatingViewSizeEnum.small:
        return 12;
      default:
        return 18;
    }
  }
}

class RatingView extends StatelessWidget {
  final double rating;
  final RatingViewSizeEnum size;

  const RatingView({
    required this.rating,
    required this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      width: size.ratingViewSize.width,
      decoration: const BoxDecoration(
        color: MColors.electricBlue,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FaIcon(
            FontAwesomeIcons.solidStar,
            color: Colors.white,
            size: size.iconSize,
          ),
          Text(
            rating.toString(),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: size.fontSize,
            ),
          )
        ],
      ),
    );
  }
}
