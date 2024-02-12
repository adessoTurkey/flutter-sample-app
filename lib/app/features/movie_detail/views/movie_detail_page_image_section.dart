import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movies/models/movie_model.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MovieDetailPageImageSection extends StatefulWidget {
  final MovieModel movieModel;
  const MovieDetailPageImageSection({super.key, required this.movieModel});

  @override
  State<MovieDetailPageImageSection> createState() =>
      _MovieDetailPageImageSectionState();
}

class _MovieDetailPageImageSectionState
    extends State<MovieDetailPageImageSection> {
  bool _isFavorite = false;

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
                      imageURL: widget.movieModel.imageURL,
                      placeholderImage: MovieAssets.images.poster1.path,
                    ),
                  ),
                  topRow(context, configuration.movieDetailTopRowPaddingAll),
                ],
              ),
              Positioned(
                bottom: configuration.movieDetailRatingViewPositionedBottom,
                left: 30,
                child: RatingView(
                  rating: widget.movieModel.rating,
                  type: RatingViewType.carousel,
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget topRow(BuildContext context, double padding) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircularButtonWidget(
              onTap: () {
                context.popRoute();
              },
              iconData: FontAwesomeIcons.arrowLeft,
              backgroundColor: Colors.transparent,
              iconColor: Colors.white,
            ),
            CircularButtonWidget(
              onTap: () {
                setState(() {
                  _isFavorite = !_isFavorite;
                });
              },
              iconData: _isFavorite
                  ? FontAwesomeIcons.solidHeart
                  : FontAwesomeIcons.heart,
              backgroundColor: Colors.white,
              iconColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
