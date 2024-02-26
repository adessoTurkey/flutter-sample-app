import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/api_call/models/login_credentials_request_model.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/extensions/sized_box_extensions.dart';
import 'package:flutter_movie_app/app/features/login/bloc/login_event.dart';
import 'package:flutter_movie_app/app/features/login/views/login_button.dart';
import 'package:flutter_movie_app/app/features/login/views/login_password_field.dart';
import 'package:flutter_movie_app/app/features/login/views/login_text_field.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_movie_app/gen/assets.gen.dart';

import '../../core/config/app_router.dart';
import 'bloc/login_bloc.dart';
import 'bloc/login_state.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: ConfigurationWidget(
        onConfigurationReady: (config, theme) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(MovieAssets.images.loginBg.path),
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
                    controller: usernameController,
                    textStyle: theme.whiteTextStyle(),
                    hintText: context.localization.enterEmail,
                    hintTextStyle: theme.whiteTextStyle(),
                    labelText: context.localization.email,
                    labelTextStyle: theme.whiteTextStyle(),
                  ),
                  10.verticalSizedBox,
                  CustomLoginPasswordField(
                    controller: passwordController,
                    textStyle: theme.whiteTextStyle(),
                    hintText: context.localization.enterPassword,
                    hintTextStyle: theme.whiteTextStyle(),
                    labelText: context.localization.password,
                    labelTextStyle: theme.whiteTextStyle(),
                  ),
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
                  BlocConsumer<LoginBloc, LoginState>(
                    buildWhen: (previous, current) => current is LoginError,
                    builder: (context, state) {
                      if (state is LoginError) {
                        return Text(
                          state.errorMessage.toString(),
                        );
                      }
                      return const SizedBox.shrink();
                    },
                    listenWhen: (previous, current) => current is LoginSuccess,
                    listener: (context, state) {
                      context.pushRoute(const HomeRoute());
                    },
                  ),
                  CustomLoginButton(
                    onPressed: () {
                      var username = usernameController.text;
                      var password = passwordController.text;
                      if(username.isNotEmpty && password.isNotEmpty){
                        BlocProvider.of<LoginBloc>(context).add(
                          SigningIn(
                              loginCredentialsRequest: LoginCredentialsRequestModel(
                                  username: username,
                                  password: password,
                                  requestToken: ""
                              )
                          ),
                        );
                      }
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
