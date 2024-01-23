import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/dependency_injection.dart';
import '../localization_helper.dart';


part 'localization_event.dart';
part 'localization_state.dart';

/// BLoC class for handling localization events
class LocalizationsBloc extends Bloc<LocalizationsEvent, LocalizationsState> {
  LocalizationsBloc() : super(const LocalizationLoading()) {
    on<LoadLocale>(_loadLocaleEventToState);
    on<ChangeLocale>(_changeLocaleEventToState);
  }

  final _localizationHelper = getIt<LocalizationHelper>();

  /// Handles the event to load the current locale
  Future<void> _loadLocaleEventToState(
    LoadLocale event,
    Emitter<LocalizationsState> emit,
  ) async {
    try {
      emit(const LocalizationLoading());

      // Fetch the current locale from SharedPreferences
      final currentLocaleFromSharedPref = await _localizationHelper.locale;
      if (currentLocaleFromSharedPref == null) {
        return;
      }

      emit(
        LocalizationSuccess(
          locale: currentLocaleFromSharedPref,
        ),
      );

      // Save the current locale to SharedPreferences
      await _localizationHelper
          .saveLocale(Locale(currentLocaleFromSharedPref.languageCode));
    } catch (e) {
      _localizationError(emit, e);
    }
  }

  void _localizationError(Emitter<LocalizationsState> emit, Object e) {
    emit(
      LocalizationError(
        errorMessage: e.toString(),
      ),
    );
  }

  /// Handles the event to change the current locale
  Future<void> _changeLocaleEventToState(
    ChangeLocale event,
    Emitter<LocalizationsState> emit,
  ) async {
    try {
      emit(const LocalizationLoading());
      // Save the new locale to SharedPreferences
      await _localizationHelper.saveLocale(event.locale);
      emit(LocalizationSuccess(locale: event.locale));

    } catch (e) {
      emit(
        LocalizationError(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
