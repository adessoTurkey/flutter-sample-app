part of 'search_bloc.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object?> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSuccess extends SearchState {
  const SearchSuccess({required this.searchResults});

  final List<SearchEntity> searchResults;

  @override
  List<Object?> get props => [searchResults];
}

final class SearchEmpty extends SearchState {}

final class SearchError extends SearchState {
  const SearchError({required this.errorMessage});

  final String? errorMessage;

  @override
  List<Object?> get props => [errorMessage];
}
