part of 'theme_bloc.dart';

sealed class ThemeState extends Equatable {
  const ThemeState();

  @override
  List<Object> get props => [];
}

final class ThemeInitial extends ThemeState {}

final class GetThemeState extends ThemeState {
  final ATheme theme;
  const GetThemeState({required this.theme});

  @override
  List<Object> get props => [theme];
}

final class ErrorThemeState extends ThemeState{
  final String errorText;

  const ErrorThemeState({required this.errorText});

  @override
  List<Object> get props => [errorText];
}
