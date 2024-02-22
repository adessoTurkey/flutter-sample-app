import 'package:flutter_movie_app/app/features/movie_detail/models/credits/cast/cast_results.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'credit_response.freezed.dart';
part 'credit_response.g.dart';

@freezed
class CreditResponse with _$CreditResponse {
  const factory CreditResponse({
    int? id,
    List<CastResults>? cast,
  }) = _CreditResponse;
  factory CreditResponse.fromJson(Map<String, Object?> json) =>
      _$CreditResponseFromJson(json);
}
