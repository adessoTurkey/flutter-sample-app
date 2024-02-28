part of 'profile_bloc.dart';

sealed class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object?> get props => [];
}

final class ProfileInitial extends ProfileState {}

final class ProfileLoading extends ProfileState {}

final class ProfileSuccess extends ProfileState {
  const ProfileSuccess({required this.accountDetail, required this.favorites});

  final AccountDetail accountDetail;
  final List<FavoriteData> favorites;

  @override
  List<Object?> get props => [accountDetail, favorites];
}

final class ProfileError extends ProfileState {
  const ProfileError({required this.errorMessage});

  final String? errorMessage;

  @override
  List<Object?> get props => [errorMessage];
}
