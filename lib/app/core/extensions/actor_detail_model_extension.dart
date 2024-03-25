import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/app/features/actor/model/actor_detail_model.dart';

import '../constants/env_constants.dart';

extension ActorDetailModelExtension on ActorDetailModel{
  String get getImageURL =>
      "${dotenv.get(EnvConstants.imageUrl)}${profilePath ?? ""}";

  String get getBornInfo => " $birthday in $placeOfBirth";
}