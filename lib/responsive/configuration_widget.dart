import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/core/themes/themes.dart';
import 'package:flutter_movie_app/responsive/configuration/configuration.dart';
import 'package:flutter_movie_app/responsive/responsive_bloc/responsive_configuration_bloc.dart';

class ConfigurationWidget extends StatelessWidget {
  final Widget Function(ResponsiveConfiguration configuration, ATheme theme)
      onConfigurationReady;
  const ConfigurationWidget({super.key, required this.onConfigurationReady});

  @override
  Widget build(BuildContext context) {

    return Builder(builder: (context) {
      final stateResponsiveConfiguration =
          context.watch<ResponsiveConfigurationBloc>().state;
      final themeState = context.watch<ThemeBloc>().state;

      late ATheme theme;

      if (themeState is GetThemeState) {
        theme = themeState.theme;

     
      }

      if (stateResponsiveConfiguration is GetResponsiveconfigurationState) {
        Widget child = onConfigurationReady(
            stateResponsiveConfiguration.configuration, theme);
        return child;
      }

      return Container();
    });
  }
}
