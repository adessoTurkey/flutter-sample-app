part of 'profile_bloc.dart';

sealed class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

final class ProfileFetchingEvent extends ProfileEvent {
  const ProfileFetchingEvent();
}

final class AddFavoriteEvent extends ProfileEvent {
  final int id;
  final bool isFavorite;
  final FavoriteEntityType favoriteType;
  final String title;
  final String releaseDate;
  final String posterPath;

  const AddFavoriteEvent(
      {required this.title,
      required this.releaseDate,
      required this.posterPath,
      required this.id,
      required this.favoriteType,
      required this.isFavorite});

  @override
  List<Object> get props => [id, favoriteType];
}

final class RemoveFavoriteEvent extends ProfileEvent {
  final int id;
  final bool isFavorite;
  final FavoriteEntityType favoriteType;

  const RemoveFavoriteEvent(
      {required this.id, required this.favoriteType, required this.isFavorite});

  @override
  List<Object> get props => [id, favoriteType];
}
