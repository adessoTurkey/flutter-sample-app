import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';

import 'responsive_type_enum.dart';

extension ConfigurationExtension on BuildContext {
  
  ResponsiveType  responsiveType (){
    if (screenSize.width <= ResponsiveType.smallMobile.maxwidth) {
      return ResponsiveType.smallMobile;
    } else if (screenSize.width <= ResponsiveType.mediumMobile.maxwidth) {
      return ResponsiveType.mediumMobile;
    } else  {
      return ResponsiveType.largeMobile;
    }

  }
}
