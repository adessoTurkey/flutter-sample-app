import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/core/themes/themes.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<ChangeThemeEvent>(_changeTheme);
  }

  Future<void> _changeTheme(
      ChangeThemeEvent event, Emitter<ThemeState> emit) async {
    try {
      var themeType = event.themeType;

      ATheme theme = ThemeFactory.getTheme(themeType);
      emit(GetThemeState(theme: theme));
    } catch (e) {
      emit(ErrorThemeState(errorText: e.toString()));
    }
  }
}
