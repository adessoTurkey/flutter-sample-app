part of 'search_bloc.dart';

sealed class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object?> get props => [];
}

class SearchButtonClicked extends SearchEvent {
  const SearchButtonClicked();
}

final class SearchTextChanged extends SearchEvent {
  const SearchTextChanged(this.searchText);

  final String searchText;

  @override
  List<Object> get props => [searchText];
}
