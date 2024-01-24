import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SearchPage extends StatelessWidget{
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Search Page"),
    );
  }
}