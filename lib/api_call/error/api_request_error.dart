import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_request_error.freezed.dart';
part 'api_request_error.g.dart';

@freezed
class ApiRequestError with _$ApiRequestError {
  const factory ApiRequestError(
      {required bool success,
      required int statusCode,
      required String statusMessage}) = _ApiRequestError;
  factory ApiRequestError.fromJson(Map<String, Object?> json) =>
      _$ApiRequestErrorFromJson(json);
}
