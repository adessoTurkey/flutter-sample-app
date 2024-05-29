import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/localization/app_localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                          height: context.heightFactor(.30),
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
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 80, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.localization.profile_header_text,
                    style: theme.profileHeaderLabelTextStyle(
                      configuration.profileHeaderLabelTextSize,
                    ),
                  ),
                  25.verticalSizedBox,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        context.localization.profile_sub_header_text,
                        style: theme.profileSubHeaderLabelTextStyle(
                          configuration.profileSubHeaderLabelTextSize,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Icon(
                        Icons.waving_hand_sharp,
                        color: Colors.yellow,
                      )
                    ],
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
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    context.read<AuthenticationBloc>().add(LogoutRequested());
                    context.replaceRoute(const LoginRoute());
                  },
                  icon: const FaIcon(
                    Icons.logout,
                    color: MColors.white,
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
