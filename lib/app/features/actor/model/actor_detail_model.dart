import 'package:freezed_annotation/freezed_annotation.dart';
part 'actor_detail_model.freezed.dart';
part 'actor_detail_model.g.dart';

@freezed
class ActorDetailModel with _$ActorDetailModel {
const factory ActorDetailModel({
  @JsonKey(name: "name")String? name,
  @JsonKey(name: "biography")String? biography,
  @JsonKey(name: "birthday")String? birthday,
  @JsonKey(name: "place_of_birth")String? placeOfBirth,
  @JsonKey(name: "profile_path")String? profilePath,
})= _ActorDetailModel;
factory ActorDetailModel.fromJson(Map<String,Object?> json)=> _$ActorDetailModelFromJson(json);
}