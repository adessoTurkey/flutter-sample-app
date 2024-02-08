import 'package:flutter/material.dart';
import 'package:flutter_movie_app/responsive/configuration/configuration.dart';

class SmallConfiguration extends ResponsiveConfiguration {
  @override
  Size get ratingViewSize => const Size(75, 50);

  @override
  double get movieCellMovieNameTextSize => 14;

  @override
  double get durationViewIconSize => 18;

  @override
  double get durationViewTextSize => 16;

  @override
  double get rateViewIconSize => 30;

  @override
  double get rateViewTextSize => 20;

  @override
  double get movieDetailDescriptionTextSize => 14;

  @override
  double get movieDetailTrailerTextSize => 16;

  @override
  double get movieDetailMovieGenresTextSize => 20;

  @override
  double get movieDetailMovieTitleTextSize => 36;

  @override
  double get movieDetailCastLabelTextSize => 18;

  @override
  double get movieDetailImageHeight => 350;

  @override
  double get movieDetailTopRowPaddingAll => 8;

  @override
  double get movieDetailPagePaddingHorizontal => 20;

  @override
  double get movieDetailPagePaddingVerical => 20;

  @override
  double get starRatingIconSize => 28;

  @override
  double get starRatingIconSpacingPaddingHorizontal => 6;

  @override
  double get circularButtonWidgetDefaultRadiusSize => 22;

  @override
  double get movieDetailShareButtonPaddingLeft => 18;
}
