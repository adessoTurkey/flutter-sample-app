import 'package:flutter_movie_app/app/features/movie_detail/models/video_model/video_results.dart/video_results.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'video_model_response.freezed.dart';
part 'video_model_response.g.dart';

@freezed
class VideoModelResponse with _$VideoModelResponse {
const factory VideoModelResponse({
  int? id,
  List<VideoResults>? results 
})= _VideoModelResponse;
factory VideoModelResponse.fromJson(Map<String,Object?> json)=> _$VideoModelResponseFromJson(json);
}