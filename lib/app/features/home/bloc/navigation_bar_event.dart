part of 'navigation_bar_bloc.dart';

sealed class NavigationBarEvent extends Equatable {
  const NavigationBarEvent();

  @override
  List<Object> get props => [];
}


class ChangeNavigationBarIndexEvent extends NavigationBarEvent{
  final int index;
  const ChangeNavigationBarIndexEvent({required this.index});

  @override
  List<Object> get props => [index];
}