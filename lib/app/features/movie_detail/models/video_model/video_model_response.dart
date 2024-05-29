import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';

part 'video_model_response.freezed.dart';
part 'video_model_response.g.dart';

@freezed
class VideoModelResponse with _$VideoModelResponse {
  const factory VideoModelResponse({int? id, List<VideoResults>? results}) =
      _VideoModelResponse;

  factory VideoModelResponse.fromJson(Map<String, Object?> json) =>
      _$VideoModelResponseFromJson(json);
}