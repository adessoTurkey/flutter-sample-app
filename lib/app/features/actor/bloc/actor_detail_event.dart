part of 'actor_detail_bloc.dart';

sealed class ActorDetailEvent extends Equatable {
  const ActorDetailEvent();

  @override
  List<Object> get props => [];
}

final class ActorDetailInitialEvent extends ActorDetailEvent {
  final int actorId;
  const ActorDetailInitialEvent({required this.actorId});

  @override
  List<Object> get props => [actorId];
}