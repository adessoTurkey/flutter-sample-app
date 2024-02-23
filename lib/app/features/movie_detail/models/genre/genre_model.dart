// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'genre_model.freezed.dart';
part 'genre_model.g.dart';

@freezed
class GenreModel with _$GenreModel {
const factory GenreModel(
  @JsonKey(name:"id") int? id,
  @JsonKey(name:"name") String? name
)= _GenreModel;
factory GenreModel.fromJson(Map<String,Object?> json)=> _$GenreModelFromJson(json);
}
