part of 'search_bloc.dart';

enum SearchStateX { initial, loading, success, error }

final class SearchState extends Equatable {
  const SearchState({
    this.status = SearchStateX.initial,
    this.searchText,
    this.searchList,
    this.errorMessage,
    this.isValid,
  });

  final SearchStateX status;
  final String? searchText;
  final List<SearchEntity>? searchList;
  final String? errorMessage;
  final bool? isValid;

  SearchState copyWith({
    SearchStateX? status,
    String? searchText,
    List<SearchEntity>? searchList,
    String? errorMessage,
    bool? isValid,
  }) {
    return SearchState(
      status: status ?? this.status,
      searchText: searchText ?? this.searchText,
      searchList: searchList ?? this.searchList,
      errorMessage: errorMessage ?? this.errorMessage,
      isValid: isValid ?? this.isValid,
    );
  }

  @override
  List<Object?> get props =>
      [status, searchText, searchList, errorMessage, isValid];
}
