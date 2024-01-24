import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MoviesPage extends StatelessWidget{
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Movies Page"),
    );
  }
}