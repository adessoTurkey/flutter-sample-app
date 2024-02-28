// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'account_detail.freezed.dart';
part 'account_detail.g.dart';

@freezed
class AccountDetail with _$AccountDetail {
  const factory AccountDetail({
    int? id,
    @JsonKey(name: "iso_639_1") String? iso6391,
    @JsonKey(name: "iso_3166_1") String? iso31661,
    String? name,
    @JsonKey(name: "include_adult") bool? includeAdult,
    String? username,
  }) = _AccountDetail;
  factory AccountDetail.fromJson(Map<String, Object?> json) =>
      _$AccountDetailFromJson(json);
}
