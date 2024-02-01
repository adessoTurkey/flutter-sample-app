import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum RatingViewSizeEnum {
  large(Size(100, 50), 18, 18),
  medium(Size(80, 50), 16, 16),
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
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: WidgetsConstants.ratingViewPaddingHorizontal,
            vertical: WidgetsConstants.ratingViewPaddingVertical,
          ),
          decoration: BoxDecoration(
            color: theme.themeData.primaryColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(WidgetsConstants.ratingViewCornerRadius),
            ),
          ),
          child: Wrap(
            spacing: 8,
            direction: Axis.horizontal,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.solidStar,
                color: theme.themeData.scaffoldBackgroundColor,
                size: ratingViewSize.iconSize,
              ),
              Text(
                rating.toString(),
                style: theme.ratingViewRateTextStyle(ratingViewSize.fontSize),
              )
            ],
          ),
        );
      },
    );
  }
}
