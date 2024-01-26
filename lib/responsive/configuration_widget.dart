import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/responsive/configuration/configuration.dart';
import 'package:flutter_movie_app/responsive/responsive_bloc/responsive_configuration_bloc.dart';

class ConfigurationWidget extends StatelessWidget {
  final Widget Function(ResponsiveConfiguration configuration)
      onConfigurationReady;
  const ConfigurationWidget({super.key, required this.onConfigurationReady});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResponsiveConfigurationBloc,
        ResposiveConfigurationState>(builder: (context, state) {
      if (state is GetResponsiveconfigurationState) {
        Widget child = onConfigurationReady(state.configuration);
        return child;
      }
      //TODO add error widget here
      return Container();
    });
  }
}
