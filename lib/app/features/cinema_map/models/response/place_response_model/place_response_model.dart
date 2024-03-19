import 'package:flutter_movie_app/app/features/cinema_map/models/response/place_display_name_model/place_display_name_model.dart';
import 'package:flutter_movie_app/app/features/cinema_map/models/response/place_location_model/place_location_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'place_response_model.freezed.dart';
part 'place_response_model.g.dart';

@freezed
class PlaceResponseModel with _$PlaceResponseModel {
  const factory PlaceResponseModel({
    String? formattedAddress,
    PlaceDisplayNameModel? displayName,
    PlaceLocationModel? location,
    String? websiteUri,
  }) = _PlaceResponseModel;
  factory PlaceResponseModel.fromJson(Map<String, Object?> json) =>
      _$PlaceResponseModelFromJson(json);
}
