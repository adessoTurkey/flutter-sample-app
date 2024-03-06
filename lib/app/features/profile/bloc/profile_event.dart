part of 'profile_bloc.dart';

sealed class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

final class ProfileFetchingEvent extends ProfileEvent {
  const ProfileFetchingEvent();
}
