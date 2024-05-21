part of 'search_bloc.dart';

final class SearchState extends Equatable {
  const SearchState({
    this.status = NetworkFetchStatus.initial,
    this.searchText,
    this.searchList,
    this.errorMessage,
    this.isValid,
  });

  final NetworkFetchStatus status;
  final String? searchText;
  final List<SearchEntity>? searchList;
  final String? errorMessage;
  final bool? isValid;

  SearchState copyWith({
    NetworkFetchStatus? status,
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
