import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/constants/m_colors.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RateView extends StatefulWidget {
  const RateView({super.key});

  @override
  State<RateView> createState() => _RateViewState();
}

class _RateViewState extends State<RateView> {
  bool isCollapsed = false;
  int rating = 0;
  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _starIcon(
              rating,
              configuration.rateViewIconSize,
              () {
                setState(
                  () {
                    isCollapsed = !isCollapsed;
                  },
                );
              },
              theme.rateViewTextStyle(configuration.rateViewTextSize),
            ),
            isCollapsed
                ? _ratingStars(configuration.rateViewIconSize)
                : _shareButton(
                    configuration.rateViewIconSize,
                    () {},
                    theme.rateViewTextStyle(configuration.rateViewTextSize),
                    configuration.movieDetailShareButtonPaddingLeft),
          ],
        );
      },
    );
  }

  Widget _starIcon(
      int rating, double size, VoidCallback onTap, TextStyle textStyle) {
    return Column(
      children: [
        CircularButtonWidget(
          radiusSize: size,
          onTap: onTap,
          iconData: FontAwesomeIcons.solidStar,
          backgroundColor: MColors.electricBlue,
          iconColor: MColors.white,
        ),
        Text(
          "${context.localization.rate_view_rate_button_text} ($rating)",
          style: textStyle,
        )
      ],
    );
  }

  Widget _shareButton(double size, VoidCallback onTap, TextStyle textStyle,
      double paddingLeft) {
    return Padding(
      padding: EdgeInsets.only(left: paddingLeft),
      child: Column(
        children: [
          CircularButtonWidget(
            radiusSize: size,
            onTap: onTap,
            iconData: FontAwesomeIcons.share,
            backgroundColor: MColors.electricBlue,
            iconColor: MColors.white,
          ),
          Text(
            context.localization.rate_view_share_button_text,
            style: textStyle,
          )
        ],
      ),
    );
  }

  Widget _ratingStars(double iconSize) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VerticalDividerWidget(
          paddingAll: 6,
          dividerHeight: iconSize * 2,
          dividerWidth: 2,
        ),
        StarRating(
          value: rating,
          onChanged: (index) {
            setState(() {
              rating = index;
            });
          },
        ),
      ],
    );
  }
}
