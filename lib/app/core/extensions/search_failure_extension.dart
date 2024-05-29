import 'package:flutter/material.dart';
import 'package:flutter_movie_app/localization/app_localization.dart';

import '../enums/enums.dart';

extension SearchFailureEnumExtension on BuildContext {
  String localizeSearchFailure(SearchFailureEnum searchFailureEnum) {
    switch (searchFailureEnum) {
      case SearchFailureEnum.shortSearchTextErrorMessage:
        return localization.search_page_short_search_text_error;
    }
  }
}
