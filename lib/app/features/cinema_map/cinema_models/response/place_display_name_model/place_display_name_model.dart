import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_display_name_model.freezed.dart';
part 'place_display_name_model.g.dart';

@freezed
class PlaceDisplayNameModel with _$PlaceDisplayNameModel {
  const factory PlaceDisplayNameModel({
    String? text,
    String? languageCode,
  }) = _PlaceDisplayNameModel;
  factory PlaceDisplayNameModel.fromJson(Map<String, Object?> json) =>
      _$PlaceDisplayNameModelFromJson(json);
}
