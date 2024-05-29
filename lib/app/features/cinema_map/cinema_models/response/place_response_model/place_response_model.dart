import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../cinema_map.dart';

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
