import 'package:flutter_movie_app/responsive/configuration/configuration.dart';
import 'package:flutter_movie_app/responsive/responsive_type_enum.dart';
import '../../di/dependency_injection.dart';

class ResponsiveConfigurationFactory {
  static ResponsiveConfiguration getConfigutation(ResponsiveType type) {
    switch (type) {
      case ResponsiveType.largeMobile:
        return  getIt<LargeConfiguration>();
      case ResponsiveType.mediumMobile:
        return getIt<MediumConfiguration>();
      case ResponsiveType.smallMobile:
        return getIt<SmallConfiguration>();
    }
  }
}
