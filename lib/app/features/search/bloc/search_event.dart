part of 'search_bloc.dart';

sealed class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object?> get props => [];
}

class SearchFetchingEvent extends SearchEvent {
  final String searchQuery;

  const SearchFetchingEvent({required this.searchQuery});

  @override
  List<Object?> get props => [searchQuery];
}
