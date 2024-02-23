import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'value')
enum CastJobEnum {
  director("Director"),
  producer("Producer");

  const CastJobEnum(this.value);
  final String? value;
}
