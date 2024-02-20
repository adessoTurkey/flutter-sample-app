import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConfigurationWidget(
        onConfigurationReady: (config, theme) {
          return Container(
            decoration: BoxDecoration(
              
              image: DecorationImage(
                colorFilter: ColorFilter.mode(MColors.electricBlue.withOpacity(0.8), BlendMode.color),
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
                  CustomLoginTextField(
                    textStyle: theme.whiteTextStyle(),
                    hintText: context.localization.enterEmail,
                    hintTextStyle: theme.whiteTextStyle(),
                    labelText: context.localization.email,
                    labelTextStyle: theme.whiteTextStyle(),
                  ),
                  10.verticalSizedBox,
                  CustomLoginPasswordField(
                    textStyle: theme.whiteTextStyle(),
                    hintText: context.localization.enterPassword,
                    hintTextStyle: theme.whiteTextStyle(),
                    labelText: context.localization.password,
                    labelTextStyle: theme.whiteTextStyle(),
                  ),
                  /*TextField(
                    obscureText: !passwordVisible,
                    style: theme.whiteTextStyle(),
                    decoration: InputDecoration(
                      hintText: context.localization.enterPassword,
                      hintStyle: theme.whiteTextStyle(),
                      labelText: context.localization.password,
                      labelStyle: theme.whiteTextStyle(),
                      suffixIcon: IconButton(
                        icon: SvgPicture.asset(
                          MovieAssets.images.eye,
                        ),
                        onPressed: () {
                          setState(
                                () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        },
                      ),
                    ),
                  ),*/
                  10.verticalSizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          context.localization.forgatPassword,
                          style: theme
                              .forgatPassword(config.forgatPasswordTextSize),
                        ),
                      )
                    ],
                  ),
                  16.verticalSizedBox,
                  CustomLoginButton(
                    onPressed: () {
                      context.pushRoute(const HomeRoute());
                    },
                    text: context.localization.login,
                    textStyle: theme.login(config.loginTextSize),
                    backgroundColor: MColors.white,
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
    );
  }
}
