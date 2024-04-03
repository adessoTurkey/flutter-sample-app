part of 'genre_bloc.dart';

final class GenreState extends Equatable {
  final List<GenreData>? tvGenres;
  final List<GenreData>? movieGenres;

  const GenreState({
    this.tvGenres,
    this.movieGenres,
  });

  GenreState copyWith({
    List<GenreData>? tvGenres,
    List<GenreData>? movieGenres,
  }) {
    return GenreState(
      tvGenres: tvGenres ?? this.tvGenres,
      movieGenres: movieGenres ?? this.movieGenres,
    );
  }

  @override
  List<Object?> get props => [
        tvGenres,
        movieGenres,
      ];
}
