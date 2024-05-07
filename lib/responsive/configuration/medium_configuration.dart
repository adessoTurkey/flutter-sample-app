import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/responsive/configuration/configuration.dart';
import '../../app/core/enums/enums.dart';

class MediumConfiguration extends ResponsiveConfiguration {
  @override
  Size get carouselContainerSize => const Size(0, 300);

  @override
  double get movieCellMovieNameTextSize => 18;

  @override
  double get movieCellMovieGenresTextSize => 16;

  @override
  double get movieCellImageWidth => 90;

  @override
  double get headerTextSize => 26;

  @override
  double get carouselCardTitleTextSize => 32;

  @override
  double get carouselCardSubTitleTextSize => 18;

  //Release Date View
  @override
  double get releaseDateViewDateTextSize => 12;

  @override
  double get releaseDateViewDateIconSize => 18;

  //Movie Carousel View
  @override
  double get carouselBlueContainerHeight => 200;

  @override
  double get carouselContainerHeight => 450;

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
  Size get splashLogoSize => const Size(106, 149);

  @override
  EdgeInsets get splashBottomPadding => 48.onlyBottom;

  @override
  double get splashTextSize => 15;

  @override
  Size get splashHeartSize => const Size(19, 19);

  @override
  Size get loginLogoSize => const Size(106, 149);

  @override
  EdgeInsets get loginPagePadding =>
      const EdgeInsets.only(left: 24, right: 24, top: 134);

  @override
  double get forgetPasswordTextSize => 12;

  @override
  double get loginTextSize => 17;

  @override
  double get dontHaveAccountTextSize => 12;

  @override
  double get registerNowTextSize => 12;

  @override
  double get mainPageListViewTitleTextSize => 26;

  @override
  double get mainPageAppBarTitleTextSize => 14;

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
  double get durationViewIconSize => 20;

  @override
  double get durationViewTextSize => 18;

  @override
  double get rateViewIconSize => 30;

  @override
  double get rateViewTextSize => 20;

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

  @override
  double get movieDetailSliverAppBarExpandableHeight => 100;

  @override
  double get loginFieldHintTextSize => 14;

  @override
  double get loginFieldLabelTextSize => 12;

  @override
  double get loginFieldTextTextSize => 17;

  @override
  double get loginButtonRadius => 5;

  @override
  double get loginButtonHeight => 50;

  @override
  double get profileHeaderLabelTextSize => 28;

  @override
  double get profileSubHeaderLabelTextSize => 22;

  @override
  double get profileUsernameLabelTextSize => 28;

  @override
  double get profileFavoriteCellSubTitleTextSize => 18;

  @override
  double get profileFavoriteCellTitleTextSize => 23;

  @override
  double get profileFavoriteCellIconSize => 35;

  @override
  double get profileFavoriteListTitleTextSize => 28;

  //Tv Series
  @override
  Size get tvSeriesCellImageSize => const Size(150, 220);

  @override
  double get tvSeriesCellInfoContainerHeight => 90;

  @override
  double get tvSeriesCellBodyPaddingLeft => 18;

  @override
  double get tvSeriesCellCardElevation => 8;

  @override
  double get tvSeriesCellNameTextSize => 22;

  @override
  double get tvSeriesDetailSliverAppBarExpandableHeight => 100;

  @override
  double get tvSeriesListViewPaddingLeft => 32;

  @override
  double get tvSeriesListViewPaddingRight => 32;

  @override
  double get tvSeriesListViewPaddingTop => 24;

  @override
  double get tvSeriesGridMainAxisSpacing => 8;

  @override
  double get tvSeriesGridCrossAxisSpacing => 8;

  @override
  double get tvSeriesGridMainAxisExtent => 380;

  @override
  double get tvSeriesDetailSeasonsTextSize => 14;

  @override
  double get tvSeriesDetailSeasonsHorizontalPadding => 10;

  @override
  double get tvSeriesDetailSeasonsRadius => 15;

  @override
  double get tvSeriesDetailSeasonsVerticalPadding => 5;


  @override
  double get detailPageDescriptionTextSize => 18;

  @override
  double get detailPageGenresTextSize => 24;

  @override
  double get detailPageImageContainerHeight => 470;

  @override
  double get detailPageImageViewHeight => 450;

  @override
  double get detailPageRateAndShareIconSize => 30;

  @override
  double get detailPageRatingViewPositionedBottom => 0;

  @override
  double get detailPageTitleTextSize => 36;

  @override
  double get detailPageTrailerTextSize => 20;

  @override
  double get tvSeriesDetailCastTitleTextSize => 28;

  @override
  double get detailCastLabelTextSize => 18;

  @override
  double get tvSeriesDetailCastImageRadius => 35;

  @override
  double get tvSeriesDetailCastImageSize => 100;

  @override
  double get tvSeriesDetailCastListHeight => 140;

  @override
  double get tvSeriesDetailCastNameTextSize => 16;

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

  @override
  double get searchViewNoResultTextSize => 26;

  @override
  double get detailPageRatingViewPositionedLeft => 30;

  @override
  double get durationAndReleaseDateDividerHeight => 20;

  @override
  double get durationAndReleaseDateDividerPaddingAll => 10;

}
