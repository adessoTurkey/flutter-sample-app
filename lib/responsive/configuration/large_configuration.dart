import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/responsive/configuration/configuration.dart';
import '../../app/core/enums/enums.dart';

final class LargeConfiguration extends ResponsiveConfiguration {
  @override
  Size get movieCarouselContainerSize => const Size(0, 350);

  @override
  double get movieCellMovieNameTextSize => 22;

  @override
  double get movieCellMovieGenresTextSize => 18;

  @override
  double get movieCellImageWidth => 100;

  @override
  double get headerTextSize => 28;

  @override
  double get carouselCardTitleTextSize => 36;

  @override
  double get carouselCardSubTitleTextSize => 20;

  //Release Date View
  @override
  double get releaseDateViewDateTextSize => 16;

  @override
  double get releaseDateViewDateIconSize => 22;

  //Movie Carousel View
  @override
  double get movieCarouselBlueContainerHeight => 200;

  @override
  double get movieCarouselContainerHeight => 400;

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
  double get splashTextSize => 16;

  @override
  Size get loginLogoSize => const Size(106, 149);

  @override
  Size get splashHeartSize => const Size(19, 19);

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
  double get moviePageListViewTitleTextSize => 28;

  @override
  double get moviePageAppBarTitleTextSize => 16;

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
  RatingViewSizeEnum get ratingViewCarousel => RatingViewSizeEnum.large;

  @override
  RatingViewSizeEnum get ratingViewMovieCell => RatingViewSizeEnum.medium;

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
  double get movieDetailImageViewHeight => 450;

  @override
  double get movieDetailImageContainerHeight => 470;

  @override
  double get movieDetailPageRateAndShareIconSize => 30;

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

  @override
  double get movieDetailRatingViewPositionedBottom => 0;

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
  double get profileHeaderLabelTextSize => 38;

  @override
  double get profileSubHeaderLabelTextSize => 24;

  @override
  double get profileUsernameLabelTextSize => 30;

  @override
  double get profileFavoriteCellSubTitleTextSize => 18;

  @override
  double get profileFavoriteCellTitleTextSize => 23;

  @override
  double get profileFavoriteCellIconSize => 35;

  @override
  double get profileFavoriteListTitleTextSize => 28;

  @override
  double get cinemaMapViewTitleTextSize => 30;
}
