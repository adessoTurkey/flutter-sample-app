import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_bar_event.dart';
part 'navigation_bar_state.dart';

class NavigationBarBloc extends Bloc<NavigationBarEvent, NavigationBarState> {
  NavigationBarBloc() : super(NavigationBarBlocInitial()) {
    on<ChangeNavigationBarIndexEvent>(_changeNAvigationBarIndex);
  }

  Future<void> _changeNAvigationBarIndex(ChangeNavigationBarIndexEvent event,
      Emitter<NavigationBarState> emit) async {
        try{
            emit(NavigationBarChangeIndexState(index: event.index));
        }catch(e){
          emit(NavigationBarErrorState(error: e.toString()));
        }
      }
}
