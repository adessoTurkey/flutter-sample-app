import 'package:freezed_annotation/freezed_annotation.dart';
part 'request_token_model.freezed.dart';
part 'request_token_model.g.dart';

@freezed
class RequestTokenModel with _$RequestTokenModel {
  const factory RequestTokenModel(
      {required bool success,
      required String expiresAt,
      required String requestToken}) = _RequestTokenModel;

  factory RequestTokenModel.fromJson(Map<String, Object?> json) =>
      RequestTokenModel(
        success: json['success'] as bool,
        expiresAt: json['expires_at'] as String? ?? '',
        requestToken: json['request_token'] as String? ?? '',
      );
}
