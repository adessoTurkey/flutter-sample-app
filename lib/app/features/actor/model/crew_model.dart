import 'package:freezed_annotation/freezed_annotation.dart';
part 'crew_model.freezed.dart';
part 'crew_model.g.dart';

@freezed
class CrewModel with _$CrewModel {
  const factory CrewModel({
    String? name,
   int? id,
  })= _CrewModel;
  factory CrewModel.fromJson(Map<String,Object?> json)=> _$CrewModelFromJson(json);
}