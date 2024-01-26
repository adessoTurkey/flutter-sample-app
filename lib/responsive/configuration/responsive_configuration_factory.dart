import 'package:flutter_movie_app/responsive/configuration/configuration.dart';
import 'package:flutter_movie_app/responsive/configuration/large_configuration.dart';
import 'package:flutter_movie_app/responsive/configuration/medium_configuration.dart';
import 'package:flutter_movie_app/responsive/configuration/small_configuration.dart';
import 'package:flutter_movie_app/responsive/responsive_type_enum.dart';

class ResponsiveConfigurationFactory {
  static ResponsiveConfiguration getConfigutation(ResponsiveType type) {
    switch (type) {
      case ResponsiveType.largeMobile:
        return LargeConfiguration();
      case ResponsiveType.mediumMobile:
        return MediumConfiguration();
      case ResponsiveType.smallMobile:
        return SmallConfiguration();
    }
  }
}
