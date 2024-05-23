part of 'profile_bloc.dart';

sealed class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

final class ProfileFetchingEvent extends ProfileEvent {
  const ProfileFetchingEvent();
}

final class RemoveFromFavoriteEvent extends ProfileEvent{
  final FavoriteEntity favorite;
  const RemoveFromFavoriteEvent(this.favorite);

  @override
  // TODO: implement props
  List<Object> get props => [favorite];
}

