part of 'responsive_configuration_bloc.dart';

sealed class ResponsiveConfigurationEvent extends Equatable {
  const ResponsiveConfigurationEvent();

  @override
  List<Object> get props => [];
}

final class ChangeConfigurationEvent extends ResponsiveConfigurationEvent{
  final ResponsiveType responsiveType;
  const ChangeConfigurationEvent({required this.responsiveType});

  @override
  List<Object> get props => [responsiveType];
}
