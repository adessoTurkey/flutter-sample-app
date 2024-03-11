part of 'cinema_map_bloc.dart';

enum CinemaMapStatusX { initial, loading, success, error }

final class CinemaMapState extends Equatable {
  final CinemaMapStatusX status;
  final MapResponseModel? mapResponseModel;
  
  const CinemaMapState({
    this.status = CinemaMapStatusX.initial,
    this.mapResponseModel,
  });

  @override
  List<Object?> get props => [
        status,
        mapResponseModel,
      ];

  CinemaMapState copyWith({
    CinemaMapStatusX? status,
    MapResponseModel? mapResponseModel,
  }) {
    return CinemaMapState(
      status: status ?? this.status,
      mapResponseModel: mapResponseModel ?? this.mapResponseModel,
    );
  }
}
