import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';

class MovieListView extends StatelessWidget {
  final List<String> list;
  const MovieListView({required this.list, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return const MovieCellView();
      },
    );
  }
}
