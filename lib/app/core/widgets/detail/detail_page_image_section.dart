import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPageImageSection extends StatefulWidget {
  final String? imageUrl;
  final String? voteAverage;
  final int id;
  final String title;
  final String releaseDate;
  final FavoriteEntityType favoriteEntityType;

  const DetailPageImageSection({
    super.key,
    required this.imageUrl,
    required this.voteAverage,
    required this.id,
    required this.favoriteEntityType,
    required this.title,
    required this.releaseDate,
  });

  @override
  State<DetailPageImageSection> createState() => _DetailPageImageSectionState();
}

class _DetailPageImageSectionState extends State<DetailPageImageSection> {
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
                  if (widget.imageUrl != null)
                    SizedBox(
                      height: configuration.detailPageImageViewHeight,
                      width: context.screenSize.width,
                      child: ImageContainerView(
                        imageURL: widget.imageUrl!,
                        placeholderImage: MovieAssets.images.poster1.path,
                      ),
                    ),
                  topRow(context, configuration.detailPageRateAndShareIconSize,
                      theme.appbarBackButtonColor),
                ],
              ),
              if (widget.voteAverage != null)
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

  Widget topRow(BuildContext context, double iconSize, Color backButtonColor) {
    return SafeArea(
      child: Padding(
        padding: 12.all,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppbarBackButton(
                iconColor: backButtonColor,
                onPressed: () {
                  context.popRoute();
                }),
            switch (widget.favoriteEntityType) {
              FavoriteEntityType.tv => _getTvDetailFavoriteButton(iconSize),
              FavoriteEntityType.movie =>
                _getMovieDetailFavoriteButton(iconSize),
            }
          ],
        ),
      ),
    );
  }

  BlocBuilder<MovieDetailBloc, MovieDetailState> _getMovieDetailFavoriteButton(
      double iconSize) {
    return BlocBuilder<MovieDetailBloc, MovieDetailState>(
      builder: (context, state) {
        return CircularButtonWidget(
          radiusSize: iconSize,
          onTap: () {
            if (state.isFavorite) {
              context.read<ProfileBloc>().add(RemoveFavoriteEvent(
                  posterPath: widget.imageUrl!,
                  title: widget.title,
                  releaseDate: widget.releaseDate,
                  id: widget.id,
                  isFavorite: !state.isFavorite,
                  favoriteType: FavoriteEntityType.movie));
            } else {
              context.read<ProfileBloc>().add(AddFavoriteEvent(
                  posterPath: widget.imageUrl!,
                  title: widget.title,
                  releaseDate: widget.releaseDate,
                  id: widget.id,
                  isFavorite: !state.isFavorite,
                  favoriteType: FavoriteEntityType.movie));
            }
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

  BlocBuilder<TvSeriesDetailBloc, TvSeriesDetailState>
      _getTvDetailFavoriteButton(double iconSize) {
    return BlocBuilder<TvSeriesDetailBloc, TvSeriesDetailState>(
      builder: (context, state) {
        return CircularButtonWidget(
          radiusSize: iconSize,
          onTap: () {
            if (state.isFavorite) {
              context.read<ProfileBloc>().add(RemoveFavoriteEvent(
                  posterPath: widget.imageUrl!,
                  title: widget.title,
                  releaseDate: widget.releaseDate,
                  id: widget.id,
                  isFavorite: !state.isFavorite,
                  favoriteType: FavoriteEntityType.tv));
            } else {
              context.read<ProfileBloc>().add(AddFavoriteEvent(
                  posterPath: widget.imageUrl!,
                  title: widget.title,
                  releaseDate: widget.releaseDate,
                  id: widget.id,
                  isFavorite: !state.isFavorite,
                  favoriteType: FavoriteEntityType.tv));
            }
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
