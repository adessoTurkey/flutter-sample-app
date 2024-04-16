// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingResponseModelImpl _$$RatingResponseModelImplFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['status_code'],
    disallowNullValues: const ['status_code'],
  );
  return _$RatingResponseModelImpl(
    success: json['success'] as bool?,
    statusCode: $enumDecodeNullable(
        _$PostRatingStatusCodeEnumEnumMap, json['status_code'],
        unknownValue: JsonKey.nullForUndefinedEnumValue),
    statusMessage: json['status_message'] as String?,
  );
}

Map<String, dynamic> _$$RatingResponseModelImplToJson(
    _$RatingResponseModelImpl instance) {
  final val = <String, dynamic>{
    'success': instance.success,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'status_code', _$PostRatingStatusCodeEnumEnumMap[instance.statusCode]);
  val['status_message'] = instance.statusMessage;
  return val;
}

const _$PostRatingStatusCodeEnumEnumMap = {
  PostRatingStatusCodeEnum.updated: 12,
  PostRatingStatusCodeEnum.posted: 1,
};
