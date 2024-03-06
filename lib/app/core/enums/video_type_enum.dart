import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'value')
enum VideoTypeEnum {
  clip("Clip"),
  featurette("Featurette"),
  trailer("Trailer"),
  teaser("Teaser");

  const VideoTypeEnum(this.value);
  final String value;
}
