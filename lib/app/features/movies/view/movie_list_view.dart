import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/app.dart';

class MovieListView extends StatelessWidget {
  final List<MovieData> movieList;

  const MovieListView({required this.movieList, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenreBloc, GenreState>(
      builder: (context, state) {
        return ListView.builder(
          shrinkWrap: true,
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
                  genres: state.movieGenres,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
