part of 'localization_bloc.dart';

/// Events related to localization
abstract class LocalizationsEvent extends Equatable {
  const LocalizationsEvent();

  @override
  List<Object?> get props => [];
}

/// Event for loading the current locale
class LoadLocale extends LocalizationsEvent {
  const LoadLocale();

  @override
  List<Object?> get props => [];
}

/// Event for changing the current locale
class ChangeLocale extends LocalizationsEvent {
  const ChangeLocale(this.locale);

  final Locale locale;

  @override
  List<Object> get props => [locale];
}
