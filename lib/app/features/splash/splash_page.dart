import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';
import 'package:flutter_movie_app/localization/app_localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    var splashBg = MovieAssets.images.splashBg.path;
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        switch (state.status) {
          case AuthenticationStatus.authenticated:
            context.pushRoute(const HomeRoute());
          default:
            context.pushRoute(const LoginRoute());
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: ConfigurationWidget(
            onConfigurationReady: (config, theme) {
              return Container(
                decoration: BoxDecoration(
                  color: MColors.vibrantBlue,
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          MColors.vibrantBlue.withOpacity(0.2),
                          BlendMode.dstATop),
                      image: AssetImage(splashBg),
                      fit: BoxFit.cover),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: FractionalOffset.center,
                      child: SvgPicture.asset(
                        MovieAssets.images.logo,
                        width: config.splashLogoSize.width,
                        height: config.splashLogoSize.height,
                      ),
                    ),
                    Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Padding(
                        padding: config.splashBottomPadding,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              context.localization.we,
                              style:
                                  theme.splashTextStyle(config.splashTextSize),
                            ),
                            5.horizontalSizedBox,
                            Image.asset(
                              MovieAssets.images.heart.path,
                              width: config.splashHeartSize.width,
                              height: config.splashHeartSize.height,
                            ),
                            5.horizontalSizedBox,
                            Text(
                              context.localization.movie,
                              style:
                                  theme.splashTextStyle(config.splashTextSize),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
