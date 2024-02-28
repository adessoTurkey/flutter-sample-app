import 'package:flutter/material.dart';
import 'package:flutter_movie_app/responsive/configuration/configuration.dart';
import '../../app/core/enums/enums.dart';

class SmallConfiguration extends ResponsiveConfiguration {
  @override
  Size get movieCarouselContainerSize => const Size(0, 250);

  @override
  double get movieCellMovieNameTextSize => 16;

  @override
  double get movieCellMovieGenresTextSize => 14;

  @override
  double get movieCellImageWidth => 80;

  @override
  double get headerTextSize => 24;

  @override
  double get carouselCardTitleTextSize => 28;

  @override
  double get carouselCardSubTitleTextSize => 16;

  //Release Date View
  @override
  double get releaseDateViewDateTextSize => 10;

  @override
  double get releaseDateViewDateIconSize => 16;

  //Movie Carousel View
  @override
  double get movieCarouselBlueContainerHeight => 200;

  @override
  double get movieCarouselContainerHeight => 450;

  @override
  double get movieCarouselHeaderLeftPadding => 32;

  @override
  double get movieCarouselHeaderTopPadding => 24;

  //Movie Page
  @override
  double get moviePageListViewPaddingLeft => 32;

  @override
  double get moviePageListViewPaddingRight => 32;

  @override
  double get moviePageListViewPaddingTop => 24;

  @override
  double get moviePageListViewTitleTextSize => 24;

  @override
  double get moviePageAppBarTitleTextSize => 12;

  //Carousel
  @override
  double get carouselCardRightPadding => 20;

  //Rating View
  @override
  double get ratingViewPaddingHorizontal => 14;

  @override
  double get ratingViewPaddingVertical => 6;

  @override
  double get ratingViewCornerRadius => 20;

  //Movie Cell
  @override
  double get movieCellBodyPaddingLeft => 18;

  @override
  double get movieCellCardElevation => 8;

  @override
  double get movieCellDividerHeight => 10;

  @override
  double get movieCellDividerPaddingHorizontal => 6;

  @override
  double get movieCellDividerPaddingVertical => 10;

  @override
  double get movieCellDividerWidth => 10;

  @override
  double get movieCellHeight => 150;

  @override
  double get movieCellInfoContainerWidth => 250;

  @override
  double get movieCellSpacing => 25;

  //Rating View
  @override
  RatingViewSizeEnum get ratingViewCarousel => RatingViewSizeEnum.medium;

  @override
  RatingViewSizeEnum get ratingViewMovieCell => RatingViewSizeEnum.small;

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
  double get movieDetailImageViewHeight => 400;

  @override
  double get movieDetailImageContainerHeight => 420;

  @override
  double get movieDetailPageRateAndShareIconSize => 22;

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

  @override
  double get movieDetailRatingViewPositionedBottom => 0;

  @override
  double get movieDetailSliverAppBarExpandableHeight => 100;

  @override
  double get searchListCellViewTitleTextSize => 23;

  @override
  double get searchTextFieldButtonTextSize => 20;

  @override
  double get searchViewTitleTextSize => 40;

  @override
  double get searchListCellViewInfoTextSize => 20;

  @override
  double get searchListCellViewTypeIconSize => 20;

  @override
  double get searchListCellViewTypeTextSize => 20;
}
