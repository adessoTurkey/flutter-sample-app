import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/config/app_router.dart';
import 'package:flutter_movie_app/app/core/extensions/padding_extension.dart';
import 'package:flutter_movie_app/app/core/widgets/widgets.dart';
import 'package:flutter_movie_app/app/features/movies/models/movie_models.dart';

class MovieListView extends StatelessWidget {
  final List<MovieData> movieList;
  const MovieListView({required this.movieList, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: movieList.length,
      itemBuilder: (context, index) {
        var movie = movieList[index];
        return Padding(
          padding: 8.onlyVertical,
          child: GestureDetector(
            onTap: () {
              context.pushRoute(MovieDetailRoute(movieId: movie.id!));
            },
            child: MovieCellView(
              movie: movie,
            ),
          ),
        );
      },
    );
  }
}
