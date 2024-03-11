import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/app/features/cinema_map/models/map_request_dto/map_request_dto.dart';
import 'package:flutter_movie_app/app/features/cinema_map/models/response/map_response_model.dart/map_response_model.dart';

import '../../../../api_call/api_repositories/api_repositories.dart';

part 'cinema_map_event.dart';
part 'cinema_map_state.dart';

class CinemaMapBloc extends Bloc<CinemaMapEvent, CinemaMapState> {
  final RemoteDataSource remoteDataSource;
  CinemaMapBloc(this.remoteDataSource) : super(const CinemaMapState()) {
    on<CinemaFetching>(_cinemaFetchingHandler);
  }

  Future<void> _cinemaFetchingHandler(
      CinemaFetching event, Emitter<CinemaMapState> emit) async {
    emit(state.copyWith(status: CinemaMapStatusX.loading));
    try {
      MapResponseModel mapResponseModel =
          await remoteDataSource.getCinemaBySearchText(
        const MapRequestDto(
          textQuery: "cinema",
        ),
      );
      emit(
        state.copyWith(
          status: CinemaMapStatusX.success,
          mapResponseModel: mapResponseModel,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: CinemaMapStatusX.error));
    }
  }
}
