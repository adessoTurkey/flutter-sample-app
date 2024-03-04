import 'package:flutter/material.dart';
import 'package:flutter_movie_app/localization/localization.dart';

import '../enums/enums.dart';

extension ContextExtensions on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;

  double heightFactor(double heightFactor) => screenSize.height * heightFactor;

  double widthFactor(double widthFactor) => screenSize.width * widthFactor;
}

extension MediaTypeEnumExtensionn on BuildContext {
  String localizeMediaTypeTitle(MediaTypeEnum mediaTypeEnum) {
    switch (mediaTypeEnum) {
      case MediaTypeEnum.movie:
        return localization.search_page_cell_type_movie;
      case MediaTypeEnum.tv:
        return localization.search_page_cell_type_movie;
      case MediaTypeEnum.person:
        return localization.search_page_cell_type_movie;
    }
  }
}
