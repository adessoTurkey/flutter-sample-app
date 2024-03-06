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
  SearchBloc(this.remoteDataSource) : super(const SearchState()) {
    on<SearchTextChanged>(_searchTextChanged);
    on<SearchButtonClicked>(_searchButtonClicked);
  }

  Future<void> _searchButtonClicked(
      SearchButtonClicked event, Emitter<SearchState> emit) async {
    if (state.isValid == true) {
      emit(state.copyWith(status: SearchStateX.loading));
      try {
        String searchText = state.searchText!;
        List<SearchMultiData> movies =
            await remoteDataSource.searchMulti(searchText);
        List<SearchEntity> searchResults = DataMapper.searchMovieMapper(movies);
        emit(state.copyWith(
            status: SearchStateX.success, searchList: searchResults));
      } catch (e) {
        emit(state.copyWith(
            status: SearchStateX.error, errorMessage: e.toString()));
      }
    } else {
      emit(
          state.copyWith(errorMessage: "Please search more than 3 characters"));
    }
  }

  Future<void> _searchTextChanged(
      SearchTextChanged event, Emitter<SearchState> emit) async {
    emit(
      state.copyWith(
        searchText: event.searchText,
        isValid: event.searchText.isNotEmpty && event.searchText.length >= 3,
      ),
    );
  }
}
