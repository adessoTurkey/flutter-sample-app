import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'value')
enum KnownForDepartmentEnum {
  acting("Acting"),
  production("Production"),
  editing("Editing"),
  art("Art"),
  costume("Costume & Make-Up"),
  writing("Writing"),
  directing("Directing"),
  sound("Sound"),
  camera("Camera"),
  crew("Crew"),
  lighting("Lighting");

  const KnownForDepartmentEnum(this.value);
  final String value;
}
