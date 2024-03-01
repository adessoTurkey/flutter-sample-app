import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/api_call/api_repositories/remote_data_source.dart';
import 'package:flutter_movie_app/app/core/utils/data_mapper.dart';
import 'package:flutter_movie_app/app/features/search/models/search_entity.dart';
import 'package:flutter_movie_app/app/features/search/models/search_multi/search_multi_data.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final RemoteDataSource remoteDataSource;
  SearchBloc(this.remoteDataSource) : super(SearchInitial()) {
    on<SearchFetchingEvent>(_searchFetchingHandler);
  }

  Future<void> _searchFetchingHandler(
      SearchFetchingEvent event, Emitter<SearchState> emit) async {
    emit(SearchLoading());
    try {
      List<SearchMultiData> movies =
          await remoteDataSource.searchMulti(event.searchQuery);
      List<SearchEntity> searchResults = DataMapper.searchMovieMapper(movies);
      emit(SearchSuccess(searchResults: searchResults));
      if (movies.isEmpty) {
        emit(SearchEmpty());
      }
    } catch (e) {
      emit(SearchError(errorMessage: e.toString()));
    }
  }
}
