import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import '../profile.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class FavoritesCell extends StatelessWidget {
  final FavoriteModel favoriteModel;
  const FavoritesCell({super.key, required this.favoriteModel});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return CustomCard(
          elevation: configuration.movieCellCardElevation,
          shadowColor: theme.shadowColor,
          shapeBorder: RoundedRectangleBorder(
            side: BorderSide(
              color: theme.themeData.dividerColor,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: theme.themeData.scaffoldBackgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: ImageContainerView(
                  imageURL: favoriteModel.image,
                  placeholderImage: MovieAssets.images.poster1.path,
                ),
              ),
              10.horizontalSizedBox,
              Expanded(
                flex: 7,
                child: Padding(
                  padding: 10.topToBottom(bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        favoriteModel.title,
                        style: theme.profileFavoriteCellTitleTextStyle(
                          configuration.profileFavoriteCellTitleTextSize,
                        ),
                      ),
                      5.verticalSizedBox,
                      Text(
                        favoriteModel.actor,
                        style: theme.profileFavoriteCellSubTitleTextStyle(
                          configuration.profileFavoriteCellSubTitleTextSize,
                        ),
                      ),
                      10.verticalSizedBox,
                      ReleaseDateView(
                        releaseDate: favoriteModel.releaseDate,
                      ),
                    ],
                  ),
                ),
              ),
              10.horizontalSizedBox,
              Expanded(
                flex: 2,
                child: Padding(
                  padding: 10.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.favorite,
                    size: configuration.profileFavoriteCellIconSize,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
