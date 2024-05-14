part of 'rating_bloc.dart';

final class RatingState extends Equatable {
  final NetworkFetchStatus status;
  final String? errorMessage;
  final int ratingValue;
  final bool isCollapsed;
  final RatingResponseModel? ratingResponseModel;

  const RatingState({
    this.status = NetworkFetchStatus.initial,
    this.errorMessage,
    this.ratingValue = 0,
    this.isCollapsed = false,
    this.ratingResponseModel,
  });

  @override
  List<Object?> get props => [
    status,
    errorMessage,
    ratingValue,
    isCollapsed,
    ratingResponseModel
  ];

  RatingState copyWith({
    NetworkFetchStatus? status,
    String? errorMessage,
    int? ratingValue,
    bool? isCollapsed,
    RatingResponseModel? ratingResponseModel
  }) {
    return RatingState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      ratingValue: ratingValue ?? this.ratingValue,
      isCollapsed: isCollapsed ?? this.isCollapsed,
      ratingResponseModel: ratingResponseModel ?? this.ratingResponseModel,
    );
  }
}
