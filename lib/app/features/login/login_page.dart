import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/features/home/home.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/login_bg.jpg"),
                    fit: BoxFit.cover)),
            child: Padding(
                padding: const EdgeInsets.only(
                    left: 32, right: 32, top: 64, bottom: 32),
                child: Column(
                  children: [
                    const SizedBox(height: 64),
                    SvgPicture.asset(
                      "assets/images/logo.svg",
                      width: 106,
                      height: 149,
                    ),
                    const SizedBox(height: 64),
                    const TextField(
                      style: TextStyle(color: MColors.white),
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: MColors.white),
                          hintText: "Enter your email",
                          labelText: "Email",
                          labelStyle: TextStyle(color: MColors.white)),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      obscureText: !passwordVisible,
                      style: const TextStyle(color: MColors.white),
                      decoration: InputDecoration(
                          hintText: "Enter your password",
                          hintStyle: const TextStyle(color: MColors.white),
                          labelText: "Password",
                          labelStyle: const TextStyle(color: MColors.white),
                          suffixIcon: IconButton(
                              icon: SvgPicture.asset("assets/images/eye.svg"),
                              onPressed: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              })),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forgat Password?",
                              style:
                                  TextStyle(color: MColors.white, fontSize: 12),
                            ))
                      ],
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MColors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        elevation: 0,
                        minimumSize: const Size.fromHeight(40),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const HomePage()));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: MColors.vibrantBlue,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?",
                            style: TextStyle(
                                color: MColors.lightGrey, fontSize: 12)),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Register Now",
                                style: TextStyle(
                                    fontSize: 12, color: MColors.white),
                              )),
                        )
                      ],
                    ),
                  ],
                ))));
  }
}
