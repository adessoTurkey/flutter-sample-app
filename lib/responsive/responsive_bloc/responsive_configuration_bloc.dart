import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/responsive/configuration/configuration.dart';
import 'package:flutter_movie_app/responsive/responsive_type_enum.dart';
part 'responsive_configuration_event.dart';
part 'responsive_configuration_state.dart';

class ResponsiveConfigurationBloc
    extends Bloc<ResponsiveConfigurationEvent, ResposiveConfigurationState> {
  ResponsiveConfigurationBloc() : super(ResponsiveConfigurationInitial()) {
    on<ChangeConfigurationEvent>(_changeConfiguration);
  }

  Future<void> _changeConfiguration(ChangeConfigurationEvent event,
      Emitter<ResposiveConfigurationState> emit) async{

          var configuration= ResponsiveConfigurationFactory.getConfigutation(event.responsiveType);
          emit(GetResponsiveconfigurationState(configuration: configuration));

      }
}
