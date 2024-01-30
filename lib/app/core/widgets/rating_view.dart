import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum RatingViewSizeEnum {
  large(Size(90, 50), 20, 18),
  medium(Size(80, 50), 16, 14),
  small(Size(75, 50), 14, 12);

  final Size size;
  final double iconSize;
  final double fontSize;
  const RatingViewSizeEnum(this.size, this.iconSize, this.fontSize);
}

class RatingView extends StatelessWidget {
  final double rating;
  final RatingViewSizeEnum ratingViewSize;

  const RatingView({
    required this.rating,
    required this.ratingViewSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: WidgetsConstants.ratingViewPaddingHorizontal,
        vertical: WidgetsConstants.ratingViewPaddingVertical,
      ),
      width: ratingViewSize.size.width,
      decoration: const BoxDecoration(
        color: MColors.electricBlue,
        borderRadius: BorderRadius.all(
          Radius.circular(WidgetsConstants.ratingViewCornerRadius),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FaIcon(
            FontAwesomeIcons.solidStar,
            color: Colors.white,
            size: ratingViewSize.iconSize,
          ),
          Text(
            rating.toString(),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: ratingViewSize.fontSize,
            ),
          )
        ],
      ),
    );
  }
}
