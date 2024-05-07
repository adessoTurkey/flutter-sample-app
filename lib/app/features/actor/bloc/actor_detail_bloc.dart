import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/api_call/api_repositories/remote_data_source.dart';
import 'package:flutter_movie_app/app/core/enums/network_fetch_status.dart';
import '../model/actor_detail_model.dart';

part 'actor_detail_event.dart';
part 'actor_detail_state.dart';

class ActorDetailBloc extends Bloc<ActorDetailEvent, ActorDetailState> {
  final RemoteDataSource remoteDataSource;

  ActorDetailBloc({required this.remoteDataSource})
      : super(const ActorDetailState()) {
    on<ActorDetailInitialEvent>(_actorDetailInitialEvent);
  }

  Future<void> _actorDetailInitialEvent(
      ActorDetailInitialEvent event, Emitter<ActorDetailState> emit) async {
    emit(state.copyWith(status: NetworkFetchStatus.loading));
    late ActorDetailModel actorDetailModel;

    try {
        await remoteDataSource
            .getActorDetail(event.actorId)
            .then((value) => actorDetailModel = value);

      emit(state.copyWith(
        status: NetworkFetchStatus.success,
        actorDetailModel: actorDetailModel,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: NetworkFetchStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }
}
