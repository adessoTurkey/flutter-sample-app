import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/core/constants/m_colors.dart';
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movie_detail/bloc/movie_detail_bloc.dart';
import 'package:flutter_movie_app/app/features/tv_series_detail/bloc/tv_series_detail_bloc.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPageImageSection extends StatefulWidget {
  final String? imageUrl;
  final String? voteAverage;
  final int? id;
  final FavoriteEntityType favoriteEntityType;
  const DetailPageImageSection(
      {super.key,
      required this.imageUrl,
      required this.voteAverage,
      required this.id,
      required this.favoriteEntityType});

  @override
  State<DetailPageImageSection> createState() =>
      _DetailPageImageSectionState();
}

class _DetailPageImageSectionState
    extends State<DetailPageImageSection> {
  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return SizedBox(
          height: configuration.detailPageImageContainerHeight,
          child: Stack(
            children: [
              Stack(
                children: [
                  if(widget.imageUrl != null)
                  SizedBox(
                    height: configuration.detailPageImageViewHeight,
                    width: context.screenSize.width,
                    child:
                    ImageContainerView(
                      imageURL: widget.imageUrl!,
                      placeholderImage: MovieAssets.images.poster1.path,
                    ),
                  ),
                  topRow(context,
                      configuration.detailPageRateAndShareIconSize),
                ],
              ),
              if(widget.voteAverage != null)
              Positioned(
                bottom: configuration.detailPageRatingViewPositionedBottom,
                left: configuration.detailPageRatingViewPositionedLeft,
                child: RatingView(
                  rating: widget.voteAverage!,
                  type: RatingViewType.carousel,
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget topRow(BuildContext context, double iconSize) {
    return SafeArea(
      child: Padding(
        padding: 12.all,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircularButtonWidget(
              radiusSize: iconSize,
              onTap: () {
                context.popRoute();
              },
              iconData: FontAwesomeIcons.arrowLeft,
              backgroundColor: MColors.transparent,
              iconColor: MColors.white,
            ),
            switch(widget.favoriteEntityType){
              FavoriteEntityType.tv => _getTvDetailFavoriteButton(iconSize),
              FavoriteEntityType.movie => _getMovieDetailFavoriteButton(iconSize),
            }
          ],
        ),
      ),
    );
  }


  BlocBuilder<MovieDetailBloc, MovieDetailState> _getMovieDetailFavoriteButton(double iconSize){
    return BlocBuilder<MovieDetailBloc, MovieDetailState>(
      builder: (context, state) {
        return CircularButtonWidget(
          radiusSize: iconSize,
          onTap: () {
            context.read<MovieDetailBloc>().add(
                MovieDetailAddFavoriteEvent(
                    movieId: widget.id ?? 0));
          },
          iconData: state.isFavorite
              ? FontAwesomeIcons.solidHeart
              : FontAwesomeIcons.heart,
          backgroundColor: MColors.white,
          iconColor: MColors.tomato,
        );
      },
    );
  }

  BlocBuilder<TvSeriesDetailBloc, TvSeriesDetailState> _getTvDetailFavoriteButton(double iconSize){
    return BlocBuilder<TvSeriesDetailBloc, TvSeriesDetailState>(
      builder: (context, state) {
        return CircularButtonWidget(
          radiusSize: iconSize,
          onTap: () {
            context.read<TvSeriesDetailBloc>().add(
                TvSeriesDetailAddFavoriteEvent(
                    tvSeriesId: widget.id ?? 0));
          },
          iconData: state.isFavorite
              ? FontAwesomeIcons.solidHeart
              : FontAwesomeIcons.heart,
          backgroundColor: MColors.white,
          iconColor: MColors.tomato,
        );
      },
    );
  }
}
