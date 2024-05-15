part of 'rating_bloc.dart';

sealed class RatingEvent extends Equatable {
  const RatingEvent();

  @override
  List<Object> get props => [];
}

final class AddRatingEvent extends RatingEvent {
  const AddRatingEvent({
    required this.id,
    required this.endPoint,
    required this.ratingValue,
  });

  final int ratingValue;
  final int id;
  final RatingEnpoints endPoint;

  @override
  List<Object> get props => [ratingValue];
}

final class RatingCollapsedEvent extends RatingEvent {
  const RatingCollapsedEvent({
    required this.isCollapsed,
  });

  final bool isCollapsed;

  @override
  List<Object> get props => [isCollapsed];
}

final class RatingInitialEvent extends RatingEvent {
  const RatingInitialEvent({
    required this.id,
  });

  final int id;

  @override
  List<Object> get props => [id];
}
