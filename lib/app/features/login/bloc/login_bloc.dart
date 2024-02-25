import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';
class PasswordBloc extends Bloc<PasswordEvent, PasswordState> {
  PasswordBloc() : super(PasswordHidden()){
    on<TogglePasswordVisibility>(_togglePasswordVisibility);
  }

  void _togglePasswordVisibility(TogglePasswordVisibility event, Emitter<PasswordState> emit) {
    if(state is PasswordHidden){
      emit(PasswordVisible());
    }
    else{
      emit(PasswordHidden());
    }
  }
}
