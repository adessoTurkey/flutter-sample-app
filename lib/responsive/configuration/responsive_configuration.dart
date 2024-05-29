import 'package:flutter/material.dart';
import '../../app/core/enums/enums.dart';

abstract class ResponsiveConfiguration {
  //Rating View
  RatingViewSizeEnum get ratingViewCarousel;
  RatingViewSizeEnum get ratingViewMovieCell;

  //Movie Carousel View
  double get carouselBlueContainerHeight;
  Size get carouselContainerSize;
  double get carouselContainerHeight;
  double get movieCarouselHeaderTopPadding;
  double get movieCarouselHeaderLeftPadding;

  //Movie Page
  double get moviePageListViewPaddingTop;
  double get moviePageListViewPaddingHorizontal;
  double get moviePageListViewPaddingRight;
  double get mainPageListViewTitleTextSize;
  double get mainPageAppBarTitleTextSize;

  //Carousel
  double get carouselCardRightPadding;

  //Rating View
  double get ratingViewPaddingHorizontal;
  double get ratingViewPaddingVertical;
  double get ratingViewCornerRadius;

  //Movie Cell
  double get movieCellHeight;
  double get movieCellSpacing;
  double get movieCellInfoContainerWidth;
  double get movieCellBodyPaddingLeft;
  double get movieCellDividerHeight;
  double get movieCellDividerWidth;
  double get movieCellDividerPaddingHorizontal;
  double get movieCellDividerPaddingVertical;
  double get movieCellCardElevation;

  //Release Date View
  double get releaseDateViewDateTextSize;
  double get releaseDateViewDateIconSize;

  double get movieCellMovieNameTextSize;
  double get splashTextSize;
  Size get splashLogoSize;
  Size get splashHeartSize;
  Size get loginLogoSize;
  EdgeInsets get splashBottomPadding;
  EdgeInsets get loginPagePadding;
  double get forgetPasswordTextSize;
  double get loginTextSize;
  double get dontHaveAccountTextSize;
  double get registerNowTextSize;
  double get movieCellMovieGenresTextSize;
  double get movieCellImageWidth;
  double get headerTextSize;
  double get carouselCardTitleTextSize;
  double get carouselCardSubTitleTextSize;

  double get durationViewIconSize;
  double get durationViewTextSize;
  double get rateViewIconSize;
  double get rateViewTextSize;
  double get detailPageDescriptionTextSize;
  double get detailPageTrailerTextSize;
  double get detailPageTitleTextSize;
  double get detailPageGenresTextSize;
  double get detailCastLabelTextSize;
  double get detailPageImageViewHeight;
  double get detailPageImageContainerHeight;
  double get detailPageRatingViewPositionedBottom;
  double get detailPageRatingViewPositionedLeft;
  double get movieDetailPagePaddingHorizontal;
  double get movieDetailPagePaddingVerical;
  double get detailPageRateAndShareIconSize;
  double get starRatingIconSize;
  double get starRatingIconSpacingPaddingHorizontal;
  double get circularButtonWidgetDefaultRadiusSize;
  double get detailShareButtonPaddingLeft;
  double get movieDetailSliverAppBarExpandableHeight;

  double get loginFieldHintTextSize;
  double get loginFieldLabelTextSize;
  double get loginFieldTextTextSize;

  double get loginButtonRadius;
  double get loginButtonHeight;

  //Profile
  double get profileHeaderLabelTextSize;
  double get profileSubHeaderLabelTextSize;
  double get profileUsernameLabelTextSize;
  double get profileFavoriteCellTitleTextSize;
  double get profileFavoriteCellSubTitleTextSize;
  double get profileFavoriteCellIconSize;
  double get profileFavoriteListTitleTextSize;

  double get searchListCellViewTitleTextSize;
  double get searchViewTitleTextSize;
  double get searchTextFieldButtonTextSize;
  double get searchListCellViewTypeTextSize;
  double get searchListCellViewTypeIconSize;
  double get searchListCellViewInfoTextSize;
  double get searchViewNoResultTextSize;


  //Tv Series Cell
  Size get tvSeriesCellImageSize;
  double get tvSeriesCellInfoContainerHeight;
  double get tvSeriesCellBodyPaddingLeft;
  double get tvSeriesCellNameTextSize;
  double get tvSeriesCellCardElevation;
  double get tvSeriesGridMainAxisSpacing;
  double get tvSeriesGridCrossAxisSpacing;
  double get tvSeriesGridMainAxisExtent;

  //Tv Series
  double get tvSeriesDetailSliverAppBarExpandableHeight;
  double get tvSeriesListViewPaddingTop;
  double get tvSeriesListViewPaddingLeft;
  double get tvSeriesListViewPaddingRight;

  //Tv Series Detail
  double get tvSeriesDetailSeasonsTextSize;
  double get tvSeriesDetailSeasonsRadius;
  double get tvSeriesDetailSeasonsHorizontalPadding;
  double get tvSeriesDetailSeasonsVerticalPadding;
  double get tvSeriesDetailCastTitleTextSize;
  double get tvSeriesDetailCastListHeight;
  double get tvSeriesDetailCastImageSize;
  double get tvSeriesDetailCastImageRadius;
  double get tvSeriesDetailCastNameTextSize;
  double get durationAndReleaseDateDividerPaddingAll;
  double get durationAndReleaseDateDividerHeight;

  //Actor Detail
  double get actorDetailNameTextSize;
  double get actorDetailBiographyTextSize;
  double get actorDetailExpandTextSize;
  double get actorDetailInfoLabelTextSize;
  double get actorDetailInfoTextSize;
  double get actorDetailShrinkBioHeight;
  double get actorDetailImageHeight;
  double get actorDetailPagePaddingHorizontal;
  double get actorDetailPagePaddingVertical;

  //Login Error Dialog
  Size get dialogSize;
  double get dialogBannerHeight;
  double get dialogInfoTextSize;
  double get dialogButtonTextSize;
  double get dialogButtonCornerRadius;

  //Cinema
  double get cinemaMapViewTitleTextSize;
  double get mapInfoViewDisplayNameTextSize;
  double get mapInfoViewAddressTextSize;
  double get mapInfoViewWebSiteTextSize;
}
