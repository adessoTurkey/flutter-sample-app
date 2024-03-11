import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/extensions/movie_detail_extension.dart';
import 'package:flutter_movie_app/app/core/extensions/padding_extension.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movie_detail/bloc/movie_detail_bloc.dart';
import 'package:flutter_movie_app/app/features/movie_detail/models/movie_detail/movie_detail_model.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MovieDetailPageImageSection extends StatefulWidget {
  final MovieDetailModel? movieDetailModel;
  const MovieDetailPageImageSection(
      {super.key, required this.movieDetailModel});

  @override
  State<MovieDetailPageImageSection> createState() =>
      _MovieDetailPageImageSectionState();
}

class _MovieDetailPageImageSectionState
    extends State<MovieDetailPageImageSection> {
  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return SizedBox(
          height: configuration.movieDetailImageContainerHeight,
          child: Stack(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: configuration.movieDetailImageViewHeight,
                    width: context.screenSize.width,
                    child: ImageContainerView(
                      imageURL: widget.movieDetailModel?.getImageURL ?? "", 
                      placeholderImage: MovieAssets.images.poster1.path,
                    ),
                  ),
                  topRow(context,
                      configuration.movieDetailPageRateAndShareIconSize),
                ],
              ),
              Positioned(
                bottom: configuration.movieDetailRatingViewPositionedBottom,
                left: 30,
                child: RatingView(
                  rating: widget.movieDetailModel?.getVoteAvarage ?? "",
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
              backgroundColor: Colors.transparent,
              iconColor: Colors.white,
            ),
            BlocBuilder<MovieDetailBloc, MovieDetailState>(
              builder: (context, state) {
                return CircularButtonWidget(
                  radiusSize: iconSize,
                  onTap: () {
                    context.read<MovieDetailBloc>().add(
                        MovieDetailAddFavoriteEvent(
                            movieId: widget.movieDetailModel?.id ?? 0));
                  },
                  iconData: state.isFavorite
                      ? FontAwesomeIcons.solidHeart
                      : FontAwesomeIcons.heart,
                  backgroundColor: Colors.white,
                  iconColor: Colors.red,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
