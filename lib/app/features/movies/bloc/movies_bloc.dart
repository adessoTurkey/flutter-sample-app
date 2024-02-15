import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/api_call/api_repositories/api_repositories.dart';
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/features/movies/models/movie_models.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final RemoteDataSource remoteDataSource;
  MoviesBloc(this.remoteDataSource) : super(MoviesInitial()) {
    on<MoviesFetching>(_moviesFetched);
    on<CarouselSliding>(_carouselSliding);
  }

  late List<MovieData> list;

  _moviesFetched(MoviesFetching event, Emitter<MoviesState> emit) async {
    try {
      emit(MoviesLoading());

      List<MovieData> movieList =
          await remoteDataSource.getMovieList(event.categoryType);
      list = movieList;
      emit(MoviesSuccess(movieList: movieList, movie: movieList[0]));
    } catch (e) {
      emit(MoviesError(errorMessage: e.toString()));
    }
  }

  //ayrı ayrı event tetikle
  // ... STATE den çekilebilir list
  _carouselSliding(CarouselSliding event, Emitter<MoviesState> emit) {
    emit(CarouselSlideSuccess(movieModel: list[event.currentIndex]));
  }
}
