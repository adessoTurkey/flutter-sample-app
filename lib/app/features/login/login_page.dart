import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/extensions/sized_box_extensions.dart';
import 'package:flutter_movie_app/app/features/login/views/login_button.dart';
import 'package:flutter_movie_app/app/features/login/views/login_password_field.dart';
import 'package:flutter_movie_app/app/features/login/views/login_text_field.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';

import '../../core/config/app_router.dart';
import 'bloc/login_bloc.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => PasswordBloc(),
        child:  ConfigurationWidget(
          onConfigurationReady: (config, theme) {
            return Container(
              decoration: BoxDecoration(
                color: MColors.vibrantBlue,
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(MColors.vibrantBlue.withOpacity(0.2), BlendMode.dstATop),
                    image: AssetImage(MovieAssets.images.splashBg.path),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: config.loginPagePadding,
                child: Column(
                  children: [
                    64.verticalSizedBox,
                    SvgPicture.asset(
                      MovieAssets.images.logo,
                      width: config.loginLogoSize.width,
                      height: config.loginLogoSize.height,
                    ),
                    64.verticalSizedBox,
                    const CustomLoginTextField(),
                    10.verticalSizedBox,
                    const CustomLoginPasswordField(),
                    10.verticalSizedBox,
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          context.localization.forgatPassword,
                          style: theme
                              .forgetPassword(config.forgatPasswordTextSize),
                        ),
                      ),
                    ),
                    16.verticalSizedBox,
                    CustomLoginButton(
                      onPressed: () {
                        context.pushRoute(const HomeRoute());
                      },
                    ),
                    10.verticalSizedBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          context.localization.dontHaveAccount,
                          style: theme
                              .dontHaveAccount(config.dontHaveAccountTextSize),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              context.localization.registerNow,
                              style:
                              theme.registerNow(config.registerNowTextSize),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      )


    );
  }
}
