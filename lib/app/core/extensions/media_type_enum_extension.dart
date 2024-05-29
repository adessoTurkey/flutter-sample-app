import 'package:flutter/material.dart';
import 'package:flutter_movie_app/localization/app_localization.dart';

import '../enums/enums.dart';

extension MediaTypeEnumExtensionn on BuildContext {
  String localizeMediaTypeTitle(MediaTypeEnum mediaTypeEnum) {
    switch (mediaTypeEnum) {
      case MediaTypeEnum.movie:
        return localization.search_page_cell_type_movie;
      case MediaTypeEnum.tv:
        return localization.search_page_cell_type_tv;
      case MediaTypeEnum.person:
        return localization.search_page_cell_type_person;
    }
  }
}
