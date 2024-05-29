import 'dart:ui';

import 'package:flutter_movie_app/l10n/i10n.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Class for handling localization
class LocalizationHelper {
  static const String defaultLocale = "tr";
  String currentLocale = 'en';
  static const String localeLanguageCodeKey = 'localeLanguageCode';

  /// Save the locale to [SharedPreferences]
  Future<void> saveLocale(Locale locale) async {
    try {
      final prefs = await SharedPreferences.getInstance();

      await prefs.setString(localeLanguageCodeKey, locale.languageCode);
      currentLocale = locale.languageCode;
    } catch (e) {}
  }

  /// Get the locale from [SharedPreferences]
  Future<Locale?> get locale async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final languageCode = prefs.getString(localeLanguageCodeKey);

      if (languageCode != null) {
        currentLocale = languageCode;
        return Locale(languageCode);
      }

      return L10n.en.toLocale();
    } catch (e) {
      return L10n.en.toLocale();
    }
  }

  /// Clear the saved localization from [SharedPreferences]
  Future<void> clearLocalization() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(localeLanguageCodeKey);
    } catch (e) {}
  }

  static String platformLocale = "en";
  static const String queryLanguage = "en-US";
}
