import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/localization/app_localization.dart';

enum L10n {
  en('en'),
  tr('tr');

  const L10n(this.value);

  factory L10n.fromLanguageCode(String code) {
    return values.firstWhereOrNull(
          (element) => element.value == code.toLowerCase(),
        ) ??
        L10n.tr;
  }

  final String value;

  Locale toLocale() {
    return Locale.fromSubtags(languageCode: value);
  }

  static final all = [
    L10n.en.toLocale(),
    L10n.tr.toLocale(),
  ];

  @override
  String toString() {
    switch (this) {
      case en:
        return AppLocalization.instance.localeName;
      case tr:
        return AppLocalization.instance.localeName;
      default:
        return '';
    }
  }

  bool get isCurrentLocaleTR => this == L10n.tr;
}
