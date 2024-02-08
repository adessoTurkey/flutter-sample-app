import 'package:flutter/material.dart';
import 'package:flutter_movie_app/responsive/configuration/configuration.dart';

final class LargeConfiguration extends ResponsiveConfiguration {
  @override
  Size get ratingViewSize => const Size(90, 50);

  @override
  double get movieCellMovieNameTextSize => 18;

  @override
  double get durationViewIconSize => 22;

  @override
  double get durationViewTextSize => 20;
  
  @override
  double get rateViewIconSize => 26;
  
  @override
  double get rateViewTextSize => 18;
  
  @override
  double get movieDetailDescriptionTextSize => 18;
  
  @override
  double get movieDetailTrailerTextSize => 20;
  
  @override
  double get movieDetailMovieGenresTextSize => 24;
  
  @override
  double get movieDetailMovieTitleTextSize => 36;
  
  @override
  double get movieDetailCastLabelTextSize => 18;
  
  @override
  double get movieDetailImageHeight => 400;
  
  @override
  double get movieDetailTopRowPaddingAll => 12;
  
  @override
  double get movieDetailPagePaddingHorizontal => 24;
  
  @override
  double get movieDetailPagePaddingVerical => 24;
  
  @override
  double get starRatingIconSize => 36;
  
  @override
  double get starRatingIconSpacingPaddingHorizontal => 2;
  
  @override
  double get circularButtonWidgetDefaultRadiusSize => 30;
  
  @override
  double get movieDetailShareButtonPaddingLeft => 24;
}
