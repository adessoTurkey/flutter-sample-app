import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/config/app_router.dart';
import 'package:flutter_movie_app/app/core/constants/m_colors.dart';
import 'package:flutter_movie_app/app/core/extensions/sized_box_extensions.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3),
        () => context.pushRoute(const LoginRoute()));
    return Scaffold(body: ConfigurationWidget(
      onConfigurationReady: (config, theme) {
        return Container(
          decoration: const BoxDecoration(color: MColors.vibrantBlue),
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
                          style: theme.splashTextStyle(config.splashTextSize),
                        ),
                        5.horizontalSizedBox,
                        Image.asset(
                          MovieAssets.images.heart.path,
                          width: 19,
                          height: 19,
                        ),
                        5.horizontalSizedBox,
                        Text(
                          "movie",
                          style: theme.splashTextStyle(config.splashTextSize),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        );
      },
    ));
  }
}
