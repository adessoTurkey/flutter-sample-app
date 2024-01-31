import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/m_colors.dart';
import 'package:flutter_movie_app/app/features/login/login.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => const LoginPage())));
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: MColors.vibrantBlue),
        child: Stack(
          children: [
            Align(
              alignment: FractionalOffset.center,
              child: SvgPicture.asset(
                "assets/images/logo.svg",
                width: 106,
                height: 149,
              ),
            ),
            Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 48),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "We",
                        style: TextStyle(fontSize: 15, color: MColors.white),
                      ),
                      const SizedBox(width: 5),
                      Image.asset(
                        "assets/images/heart.png",
                        width: 19,
                        height: 19,
                      ),
                      const SizedBox(width: 5),
                      const Text("movie",
                          style: TextStyle(fontSize: 15, color: MColors.white))
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
