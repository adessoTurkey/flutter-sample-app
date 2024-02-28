import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/search/models/search_entity.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class SearchListViewCell extends StatelessWidget {
  final SearchEntity searchEntity;
  const SearchListViewCell({super.key, required this.searchEntity});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return CustomCard(
          elevation: 8,
          shadowColor: MColors.almostBlack,
          backgroundColor: theme.themeData.scaffoldBackgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: ImageContainerView(
                  imageURL: searchEntity.imageURL,
                  placeholderImage: MovieAssets.images.poster1.path,
                ),
              ),
              10.horizontalSizedBox,
              Expanded(
                flex: 8,
                child: Padding(
                  padding: 10.topToBottom(bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        searchEntity.title,
                        style: theme.searchListCellViewTitleTextStyle(
                          configuration.searchListCellViewTitleTextSize,
                        ),
                        maxLines: 1,
                      ),
                      10.verticalSizedBox,
                      Text(
                        "Emilia Clarke, Peter Dinklag",
                        style: theme.searchListCellViewInfoTextStyle(
                            configuration.searchListCellViewInfoTextSize),
                        maxLines: 1,
                      ),
                      10.verticalSizedBox,
                      Row(
                        children: [
                          Icon(
                            searchEntity.type.iconName,
                            size: configuration.searchListCellViewTypeIconSize,
                            color: MColors.electricBlue,
                          ),
                          10.horizontalSizedBox,
                          Text(
                            searchEntity.type.title,
                            style: theme.searchListCellViewTypeTextStyle(
                                configuration.searchListCellViewTypeTextSize),
                          ),
                        ],
                      ),
                    ],
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
