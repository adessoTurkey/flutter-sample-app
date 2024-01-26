part of 'responsive_configuration_bloc.dart';

sealed class ResposiveConfigurationState extends Equatable {
  const ResposiveConfigurationState();

  @override
  List<Object> get props => [];
}

final class ResponsiveConfigurationInitial extends ResposiveConfigurationState {}

final class GetResponsiveconfigurationState
    extends ResposiveConfigurationState {
  final ResponsiveConfiguration configuration;

  const GetResponsiveconfigurationState({required this.configuration});
}
