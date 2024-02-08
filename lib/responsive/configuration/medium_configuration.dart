import 'package:flutter/material.dart';
import 'package:flutter_movie_app/responsive/configuration/configuration.dart';

class MediumConfiguration extends ResponsiveConfiguration {
  @override
  Size get ratingViewSize => const Size(80, 50);

  @override
  double get movieCellMovieNameTextSize => 16;

  @override
  double get durationViewIconSize => 20;

  @override
  double get durationViewTextSize => 18;

  @override
  double get rateViewIconSize => 30;

  @override
  double get rateViewTextSize => 20;

  @override
  double get movieDetailDescriptionTextSize => 16;

  @override
  double get movieDetailTrailerTextSize => 18;

  @override
  double get movieDetailMovieGenresTextSize => 22;

  @override
  double get movieDetailMovieTitleTextSize => 36;

  @override
  double get movieDetailCastLabelTextSize => 18;

  @override
  double get movieDetailImageHeight => 350;

  @override
  double get movieDetailTopRowPaddingAll => 10;

  @override
  double get movieDetailPagePaddingHorizontal => 20;

  @override
  double get movieDetailPagePaddingVerical => 20;

  @override
  double get starRatingIconSize => 32;

  @override
  double get starRatingIconSpacingPaddingHorizontal => 4;

  @override
  double get circularButtonWidgetDefaultRadiusSize => 26;

  @override
  double get movieDetailShareButtonPaddingLeft => 20;
}
