import 'package:freezed_annotation/freezed_annotation.dart';
part 'request_token_model.freezed.dart';
part 'request_token_model.g.dart';

@freezed
class RequestTokenModel with _$RequestTokenModel {
  const factory RequestTokenModel(
      {required bool? success,
        @JsonKey(name: 'expires_at') required String? expiresAt,
      @JsonKey(name: 'request_token') required String? requestToken}) = _RequestTokenModel;

  factory RequestTokenModel.fromJson(Map<String, Object?> json) =>
      _$RequestTokenModelFromJson(json);
}
