import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../cinema_map.dart';

part 'map_response_model.freezed.dart';
part 'map_response_model.g.dart';

@freezed
class MapResponseModel with _$MapResponseModel {
  const factory MapResponseModel({
    List<PlaceResponseModel>? places,
  }) = _MapResponseModel;

  factory MapResponseModel.fromJson(Map<String, Object?> json) =>
      _$MapResponseModelFromJson(json);
}
