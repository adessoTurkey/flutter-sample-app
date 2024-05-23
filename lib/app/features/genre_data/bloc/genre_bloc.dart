import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import '../../../../../../api_call/api_repositories/api_repositories.dart';
import '../genre_data.dart';

part 'genre_event.dart';
part 'genre_state.dart';

class GenreBloc extends Bloc<GenreEvent, GenreState> {
  GenreBloc(this.remoteDataSource) : super(const GenreState()) {
    on<GenreFetching>(_genreFetchingHandler);
  }

  final RemoteDataSource remoteDataSource;

  Future<void> _genreFetchingHandler(
      GenreFetching event, Emitter<GenreState> emit) async {
    try {
      late List<GenreData> tvGenres;
      late List<GenreData> movieGenres;
      await Future.wait([
        remoteDataSource
            .getGenres(GenreType.tv)
            .then((value) => tvGenres = value),
        remoteDataSource
            .getGenres(GenreType.movie)
            .then((value) => movieGenres = value),
      ]);
      emit(state.copyWith(tvGenres: tvGenres, movieGenres: movieGenres));
    } catch (e) {}
  }
}
