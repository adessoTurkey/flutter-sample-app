import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/core/config/app_router.dart';
import 'package:flutter_movie_app/app/core/constants/m_colors.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/auth/bloc/authentication_bloc.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'profile.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Scaffold(
          body: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              if (state is ProfileLoading) {
                return const LoadingView();
              }
              if (state is ProfileSuccess) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          color: theme.themeData.primaryColorDark,
                          height: context.heightFactor(.35),
                          width: context.screenSize.width,
                        ),
                        _ProfileHeaderView(
                          username: state.accountDetail.username ?? "",
                        )
                      ],
                    ),
                    _FavoriteListView(
                      favorites: state.favorites,
                    ),
                  ],
                );
              }
              return const LoadingView();
            },
          ),
        );
      },
    );
  }
}

class _ProfileHeaderView extends StatelessWidget {
  final String username;
  const _ProfileHeaderView({required this.username});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Padding(
          padding: 10.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                    username,
                    style: theme.profileUsernameLabelTextStyle(
                      configuration.profileUsernameLabelTextSize,
                    ),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {
                    context.read<AuthenticationBloc>().add(LogoutRequested());
                    context.replaceRoute(const LoginRoute());
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.doorOpen,
                    color: MColors.tomato,
                  ))
            ],
          ),
        );
      },
    );
  }
}

class _FavoriteListView extends StatelessWidget {
  final List<FavoriteEntity> favorites;
  const _FavoriteListView({required this.favorites});

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
                    itemCount: favorites.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: 10.onlyVertical,
                        child: FavoritesCell(
                          favoriteModel: favorites[index],
                        ),
                      );
                    },
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
