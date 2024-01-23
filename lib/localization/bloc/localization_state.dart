part of 'localization_bloc.dart';

/// State representing the attempt to change localization
abstract class LocalizationsState extends Equatable {
  const LocalizationsState({required this.locale});

  final Locale? locale;

  @override
  List<Object?> get props => [locale];
}

/// State when localization is in the process of changing
class LocalizationLoading extends LocalizationsState {
  const LocalizationLoading() : super(locale: null);
}

/// State when localization change is successful
class LocalizationSuccess extends LocalizationsState {
  const LocalizationSuccess({required Locale? locale}) : super(locale: locale);
}

/// State when an error occurs during localization change
class LocalizationError extends LocalizationsState {
  const LocalizationError({required this.errorMessage}) : super(locale: null);

  final String? errorMessage;

  @override
  List<Object?> get props => [locale, errorMessage];
}
