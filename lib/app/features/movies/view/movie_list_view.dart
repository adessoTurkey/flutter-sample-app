import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movies/models/movie_model.dart';

class MovieListView extends StatelessWidget {
  final List<MovieModel> movieList;
  const MovieListView({required this.movieList, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: movieList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: MovieCellView(
            movie: movieList[index],
          ),
        );
      },
    );
  }
}
