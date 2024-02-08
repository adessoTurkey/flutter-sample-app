import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StarRating extends StatelessWidget {
  final void Function(int index) onChanged;
  final int? ratingValue;
  final int? value;

  const StarRating({
    super.key,
    required this.onChanged,
    this.ratingValue,
    this.value = 0,
  }) : assert(value != null);

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            ratingValue ?? 5,
            (index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal:
                        configuration.starRatingIconSpacingPaddingHorizontal),
                child: IconButton(
                  onPressed: () {
                    onChanged(value == index + 1 ? index : index + 1);
                  },
                  color: MColors.electricBlue,
                  iconSize: configuration.starRatingIconSize,
                  icon: FaIcon(
                    index < (value ?? 0)
                        ? FontAwesomeIcons.solidStar
                        : FontAwesomeIcons.star,
                  ),
                  padding: EdgeInsets.zero,
                  tooltip: "${index + 1} of ${ratingValue ?? 5}",
                ),
              );
            },
          ),
        );
      },
    );
  }
}
