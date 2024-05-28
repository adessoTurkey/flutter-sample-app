import 'package:flutter/material.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum RatingViewType { carousel, cell }

class RatingView extends StatelessWidget {
  final String rating;
  final RatingViewType type;

  const RatingView({
    required this.rating,
    required this.type,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: configuration.ratingViewPaddingHorizontal,
            vertical: configuration.ratingViewPaddingVertical,
          ),
          decoration: BoxDecoration(
            color: theme.themeData.primaryColorDark,
            borderRadius: BorderRadius.all(
              Radius.circular(configuration.ratingViewCornerRadius),
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
                size: type == RatingViewType.carousel
                    ? configuration.ratingViewCarousel.iconSize
                    : configuration.ratingViewMovieCell.iconSize,
              ),
              Text(
                rating.toString(),
                style: theme.ratingViewRateTextStyle(
                  type == RatingViewType.carousel
                      ? configuration.ratingViewCarousel.fontSize
                      : configuration.ratingViewMovieCell.fontSize,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
