import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/constants/m_colors.dart';
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/core/extensions/context_extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/rating/rating_bloc.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';

import '../utils/m_snackbar.dart';

class RateView extends StatelessWidget {
  final int id;
  final RatingEnpoints endpoint;
  final String title;
  const RateView({
    super.key,
    required this.id,
    required this.endpoint,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RatingBloc, RatingState>(
      buildWhen: (previous, current) {
        return previous.isCollapsed != current.isCollapsed ||
            previous.ratingValue != current.ratingValue;
      },
      listenWhen: (previous, current) =>
      previous.ratingValue != current.ratingValue,
      listener: (context, state) {
        if (state.ratingResponseModel?.statusCode ==
            PostRatingStatusCodeEnum.updated) {
          context.showSnackbarAfterHide(
            mSnackBar(
              title: context.localization.snackbar_successfully_updated(
                  title),
              backgroundColor: MColors.electricBlue,
            ),
          );
        } else if (state.ratingResponseModel?.statusCode ==
            PostRatingStatusCodeEnum.posted) {
          context.showSnackbarAfterHide(
            mSnackBar(
              title: context.localization.snackbar_successfully_added(
                  title),
              backgroundColor: MColors.vibrantBlue,
            ),
          );
        }
      },
      builder: (context, state) {
        return ConfigurationWidget(
          onConfigurationReady: (configuration, theme) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _starIcon(
                  state.ratingValue,
                  configuration.rateViewIconSize,
                      () => context.read<RatingBloc>().add(
                    RatingCollapsedEvent(isCollapsed: state.isCollapsed),
                  ),
                  theme.rateViewTextStyle(configuration.rateViewTextSize),
                  context,
                ),
                state.isCollapsed
                    ? _ratingStars(configuration.rateViewIconSize, state.ratingValue, context)
                    : _shareButton(
                  configuration.rateViewIconSize,
                      () => Share.share(title, subject: title),
                  theme.rateViewTextStyle(configuration.rateViewTextSize),
                  configuration.detailShareButtonPaddingLeft,
                  context,
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget _starIcon(
      int rating,
      double size,
      VoidCallback onTap,
      TextStyle textStyle,
      BuildContext context,
      ) {
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

  Widget _shareButton(
      double size,
      VoidCallback onTap,
      TextStyle textStyle,
      double paddingLeft,
      BuildContext context,
      ) {
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

  Widget _ratingStars(double iconSize, int ratingValue, BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VerticalDividerWidget(
          paddingAll: 6,
          dividerHeight: iconSize * 2,
          dividerWidth: 2,
        ),
        StarRating(
          value: ratingValue,
          onChanged: (ratingValue) => context
              .read<RatingBloc>()
              .add(AddRatingEvent(id: id, endPoint:  endpoint, ratingValue: ratingValue)),
        ),
      ],
    );
  }
}