part of 'actor_detail_bloc.dart';

final class ActorDetailState extends Equatable {
  final NetworkFetchStatus status;
  final ActorDetailModel? actorDetailModel;
  final String? errorMessage;

  const ActorDetailState({
    this.status = NetworkFetchStatus.initial,
    this.actorDetailModel,
    this.errorMessage,
  });

  @override
  List<Object?> get props => [
    status,
    actorDetailModel,
    errorMessage,
  ];

  ActorDetailState copyWith({
    NetworkFetchStatus? status,
    ActorDetailModel? actorDetailModel,
    String? errorMessage,
  }) {
    return ActorDetailState(
      status: status ?? this.status,
      actorDetailModel: actorDetailModel ?? this.actorDetailModel,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
