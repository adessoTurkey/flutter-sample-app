// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoResultsImpl _$$VideoResultsImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['type'],
    disallowNullValues: const ['type'],
  );
  return _$VideoResultsImpl(
    key: json['key'] as String?,
    offical: json['offical'] as bool?,
    type: $enumDecodeNullable(_$VideoTypeEnumEnumMap, json['type'],
        unknownValue: JsonKey.nullForUndefinedEnumValue),
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$$VideoResultsImplToJson(_$VideoResultsImpl instance) {
  final val = <String, dynamic>{
    'key': instance.key,
    'offical': instance.offical,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', _$VideoTypeEnumEnumMap[instance.type]);
  val['id'] = instance.id;
  return val;
}

const _$VideoTypeEnumEnumMap = {
  VideoTypeEnum.clip: 'Clip',
  VideoTypeEnum.featurette: 'Featurette',
  VideoTypeEnum.trailer: 'Trailer',
  VideoTypeEnum.teaser: 'Teaser',
};
