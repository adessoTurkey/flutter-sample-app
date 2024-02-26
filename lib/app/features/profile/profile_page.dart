import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/custom_scroll_view_app_bar_widget.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

import 'profile.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    color: theme.themeData.primaryColorDark,
                    height: context.screenSize.width - 100,
                    width: context.screenSize.width,
                  ),
                  const _ProfileHeaderView()
                ],
              ),
              const _FavoriteListView(),
            ],
          ),
        );
      },
    );
  }
}

class _ProfileHeaderView extends StatelessWidget {
  const _ProfileHeaderView();

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Padding(
          padding: 10.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              85.verticalSizedBox,
              Text(
                context.localization.profile_header_text,
                style: theme.profileHeaderLabelTextStyle(
                  configuration.profileHeaderLabelTextSize,
                ),
              ),
              50.verticalSizedBox,
              Text(
                context.localization.profile_sub_header_text,
                style: theme.profileSubHeaderLabelTextStyle(
                  configuration.profileSubHeaderLabelTextSize,
                ),
              ),
              Text(
                "Jessie Doe",
                style: theme.profileUsernameLabelTextStyle(
                  configuration.profileUsernameLabelTextSize,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _FavoriteListView extends StatelessWidget {
  const _FavoriteListView();

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Expanded(
          child: Padding(
            padding: 10.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: 10.onlyTop,
                  child: Text(
                    context.localization.profile_favorite_title_text,
                    style: theme.profileFavoriteListTitleTextStyle(
                      configuration.profileFavoriteListTitleTextSize,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: favoritesMock.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: 10.onlyVertical,
                        child: FavoritesCell(
                          favoriteModel: favoritesMock[index],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class BaseView extends StatelessWidget {
  final String largeTitle;
  final String appBarTitle;
  final Widget child;
  const BaseView({
    super.key,
    required this.child,
    required this.largeTitle,
    required this.appBarTitle,
  });

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Scaffold(
          body: Stack(
            children: [
              Container(
                color: theme.themeData.primaryColorDark,
                height: context.screenSize.width,
                width: context.screenSize.width,
              ),
              SafeArea(
                child: CustomScrollView(
                  slivers: [
                    CustomScrollViewAppBar(
                      largeTitle: largeTitle,
                      largeTitleStyle: theme.moviesViewHeaderTextStyle(
                        configuration.headerTextSize,
                      ),
                      appBarTitle: appBarTitle,
                      appBarTitleStyle: theme.moviesPageAppBarTitleTextStyle(
                          configuration.moviePageAppBarTitleTextSize),
                      backgroundColor: theme.themeData.primaryColorDark,
                      expandedHeight:
                          configuration.movieDetailSliverAppBarExpandableHeight,
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: 10.symmetric(horizontal: 20),
                        child: child,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
