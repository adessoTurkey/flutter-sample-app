import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_movie_app/localization/localization_delegate.dart';

class AppLocalization {
  static AppLocalizations get instance => AppLocalizationsDelegate.instance;
}

extension Localization on BuildContext {
  
  AppLocalizations get localization => AppLocalizations.of(this)!;
}
