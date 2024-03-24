import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/features/movie_detail/models/credits/cast/cast_results.dart';

import '../constants/env_constants.dart';

extension CastResultExtension on CastResults {
  String get getImageURL =>
      "${dotenv.get(EnvConstants.imageUrl)}${profilePath.emptyIfNull}";
}