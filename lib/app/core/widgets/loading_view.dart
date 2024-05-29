import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  final Size size;

  const LoadingView({super.key, this.size = const Size(30, 30)});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
            width: size.width,
            height: size.height,
            child: const CircularProgressIndicator()));
  }
}
