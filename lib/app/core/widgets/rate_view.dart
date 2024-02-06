import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/constants/m_colors.dart';
import 'package:flutter_movie_app/app/core/widgets/circular_button_widget.dart';
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
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 2,
              child: _starIcon(rating, configuration.rateViewIconSize, () {
                setState(
                  () {
                    isCollapsed = !isCollapsed;
                  },
                );
              }, theme.rateViewTextStyle(configuration.rateViewTextSize)),
            ),
            isCollapsed
                ? Expanded(
                    flex: 7,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Expanded(
                          flex: 0,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 50,
                              child: VerticalDivider(
                                width: 5,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: StarRating(
                            value: rating,
                            onChanged: (index) {
                              setState(() {
                                rating = index;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                : Expanded(
                    flex: 7,
                    child: Row(
                      children: [
                        _shareButton(
                          configuration.rateViewIconSize,
                          () {},
                          theme.rateViewTextStyle(
                              configuration.rateViewTextSize),
                        ),
                        SizedBox(),
                      ],
                    ),
                  ),
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
          "${context.localization.rateViewText} (${rating})",
          style: textStyle,
        )
      ],
    );
  }

  Widget _shareButton(double size, VoidCallback onTap, TextStyle textStyle) {
    return Column(
      children: [
        CircularButtonWidget(
          radiusSize: size,
          onTap: onTap,
          iconData: FontAwesomeIcons.share,
          backgroundColor: MColors.electricBlue,
          iconColor: MColors.white,
        ),
        Text(
          "Share",
          style: textStyle,
        )
      ],
    );
  }
}

class StarRating extends StatelessWidget {
  final void Function(int index) onChanged;
  final int? value;

  const StarRating({
    super.key,
    required this.onChanged,
    this.value = 0,
  }) : assert(value != null);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: IconButton(
            onPressed: () {
              onChanged(value == index + 1 ? index : index + 1);
            },
            color: MColors.electricBlue,
            iconSize: 36,
            icon: FaIcon(
              index < (value ?? 0)
                  ? FontAwesomeIcons.solidStar
                  : FontAwesomeIcons.star,
            ),
            padding: EdgeInsets.zero,
            tooltip: "${index + 1} of 5",
          ),
        );
      }),
    );
  }
}
