import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/api_call/api_repositories/api_repositories.dart';
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/features/movies/models/models.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final RemoteDataSource remoteDataSource;
  MoviesBloc(this.remoteDataSource) : super(MoviesInitial()) {
    on<MoviesFetching>(_moviesFetched);
    on<MovieCarouselSliding>(_carouselSliding);
  }

  late List<MovieData> list;

  Future<void> _moviesFetched(
      MoviesFetching event, Emitter<MoviesState> emit) async {
    try {
      emit(MoviesLoading());

      List<MovieData> movieList =
          await remoteDataSource.getMovieList(event.categoryType);
      list = movieList;
      emit(MoviesSuccess(movieList: movieList, movie: movieList.first));
    } catch (e) {
      emit(MoviesError(errorMessage: e.toString()));
    }
  }

  void _carouselSliding(MovieCarouselSliding event, Emitter<MoviesState> emit) {
    emit(MovieCarouselSlideSuccess(movieModel: list[event.currentIndex]));
  }
}
