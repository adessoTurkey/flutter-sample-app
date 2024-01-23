part of 'navigation_bar_bloc.dart';

sealed class NavigationBarState extends Equatable {
  const NavigationBarState();

  @override
  List<Object> get props => [];
}

final class NavigationBarBlocInitial extends NavigationBarState {}

final class NavigationBarChangeIndexState extends NavigationBarState {
  final int index;

  const NavigationBarChangeIndexState({required this.index});

  @override
  List<Object> get props => [index];
}

final class NavigationBarErrorState extends NavigationBarState{
  final String error;

  const NavigationBarErrorState({required this.error});

  @override
  List<Object> get props => [error];

}