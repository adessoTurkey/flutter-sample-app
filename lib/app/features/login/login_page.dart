import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/extensions/sized_box_extensions.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';

import '../../core/config/app_router.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  var passwordVisible = false;
  var loginBg = MovieAssets.images.loginBg.path;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConfigurationWidget(
        onConfigurationReady: (config, theme) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(loginBg), fit: BoxFit.cover),
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
                  64.horizontalSizedBox,
                  TextField(
                    style: theme.whiteTextStyle(),
                    decoration: InputDecoration(
                      hintStyle: theme.whiteTextStyle(),
                      hintText: "Enter your email",
                      labelText: "Email",
                      labelStyle: theme.whiteTextStyle(),
                    ),
                  ),
                  10.verticalSizedBox,
                  TextField(
                    obscureText: !passwordVisible,
                    style: theme.whiteTextStyle(),
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      hintStyle: theme.whiteTextStyle(),
                      labelText: "Password",
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
                  ),
                  10.verticalSizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgat Password?",
                          style: theme
                              .forgatPassword(config.forgatPasswordTextSize),
                        ),
                      )
                    ],
                  ),
                  16.verticalSizedBox,
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MColors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      elevation: 0,
                      minimumSize: const Size.fromHeight(40),
                    ),
                    onPressed: () {
                      context.pushRoute(
                        const HomeRoute(),
                      );
                    },
                    child: Text(
                      "Login",
                      style: theme.login(config.loginTextSize),
                    ),
                  ),
                  10.verticalSizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: theme
                            .dontHaveAccount(config.dontHaveAccountTextSize),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Register Now",
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
