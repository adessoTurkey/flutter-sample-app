import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
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
  double get profileHeaderLabelTextSize => 26;

  @override
  double get profileSubHeaderLabelTextSize => 20;

  @override
  double get profileUsernameLabelTextSize => 26;

  @override
  double get profileFavoriteCellSubTitleTextSize => 18;

  @override
  double get profileFavoriteCellTitleTextSize => 23;

  @override
  double get profileFavoriteCellIconSize => 35;

  @override
  double get profileFavoriteListTitleTextSize => 28;
}
