import 'package:flutter/material.dart';

abstract class ResponsiveConfiguration {
  Size get ratingViewSize;
  double get movieCellMovieNameTextSize;
  
  double get durationViewIconSize;
  double get durationViewTextSize;
  double get rateViewIconSize;
  double get rateViewTextSize;
  double get movieDetailDescriptionTextSize;
  double get movieDetailTrailerTextSize;
  double get movieDetailMovieTitleTextSize;
  double get movieDetailMovieGenresTextSize;
  double get movieDetailCastLabelTextSize;
  double get movieDetailImageHeight;
  double get movieDetailTopRowPaddingAll;
  double get movieDetailPagePaddingHorizontal;
  double get movieDetailPagePaddingVerical;
  double get starRatingIconSize;
  double get starRatingIconSpacingPaddingHorizontal;
  double get circularButtonWidgetDefaultRadiusSize;
  double get movieDetailShareButtonPaddingLeft;
}
