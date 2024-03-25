part of 'actor_detail_bloc.dart';

enum ActorDetailStatus {
  initial,
  loading,
  success,
  error,
}

final class ActorDetailState extends Equatable {
  final ActorDetailStatus status;
  final ActorDetailModel? actorDetailModel;
  final String? errorMessage;

  const ActorDetailState({
    this.status = ActorDetailStatus.initial,
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
    ActorDetailStatus? status,
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
