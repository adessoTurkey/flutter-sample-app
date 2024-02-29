import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/config/app_router.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/profile/models/favorites/favorite_data.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class FavoritesCell extends StatelessWidget {
  final FavoriteData favoriteModel;
  const FavoritesCell({super.key, required this.favoriteModel});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return InkWell(
          onTap: () {
            if (favoriteModel.favoriteDataType == FavoriteDataType.movie) {
              context.pushRoute(MovieDetailRoute(movieId: favoriteModel.id ?? 0));
            }
          },
          child: CustomCard(
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
                    imageURL: favoriteModel.posterPath ?? "",
                    placeholderImage: MovieAssets.images.poster1.path,
                  ),
                ),
                10.horizontalSizedBox,
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: 10.topToBottom(bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          favoriteModel.title ?? "",
                          style: theme.profileFavoriteCellTitleTextStyle(
                            configuration.profileFavoriteCellTitleTextSize,
                          ),
                          maxLines: 1,
                        ),
                        20.verticalSizedBox,
                        ReleaseDateView(
                          releaseDate: favoriteModel.releaseDate ?? "",
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
                      color: MColors.tomato,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
