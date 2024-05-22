import 'package:freezed_annotation/freezed_annotation.dart';
part 'tv_series_creator_model.freezed.dart';
part 'tv_series_creator_model.g.dart';

@freezed
class TvSeriesCreatorModel with _$TvSeriesCreatorModel {
  const factory TvSeriesCreatorModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "credit_id") String? creditId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "profile_path") String? profilePath,
  }) = _TvSeriesCreatorModel;
  factory TvSeriesCreatorModel.fromJson(Map<String, Object?> json) =>
      _$TvSeriesCreatorModelFromJson(json);
}
