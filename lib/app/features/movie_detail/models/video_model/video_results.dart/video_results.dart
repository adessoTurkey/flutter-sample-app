import 'package:freezed_annotation/freezed_annotation.dart';
part 'video_results.freezed.dart';
part 'video_results.g.dart';

@freezed
class VideoResults with _$VideoResults {
  const factory VideoResults({
    String? key,
    bool? offical,
    String? id,
  }) = _VideoResults;
  factory VideoResults.fromJson(Map<String, Object?> json) =>
      _$VideoResultsFromJson(json);
}
