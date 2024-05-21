import 'package:freezed_annotation/freezed_annotation.dart';
part 'place_location_model.freezed.dart';
part 'place_location_model.g.dart';

@freezed
class PlaceLocationModel with _$PlaceLocationModel {
  const factory PlaceLocationModel({
    double? latitude,
    double? longitude,
  }) = _PlaceLocationModel;
  factory PlaceLocationModel.fromJson(Map<String, Object?> json) =>
      _$PlaceLocationModelFromJson(json);
}
