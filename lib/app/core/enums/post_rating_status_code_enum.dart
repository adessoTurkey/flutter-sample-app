import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'value')
enum PostRatingStatusCodeEnum {
  updated(12),
  posted(1);

  const PostRatingStatusCodeEnum(this.value);
  final int value;
}
