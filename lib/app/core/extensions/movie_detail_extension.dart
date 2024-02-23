import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/features/movie_detail/models/movie_detail/movie_detail_model.dart';

extension MovieDetailModelExtension on MovieDetailModel {
  String get getImageURL =>
      "${dotenv.get(EnvConstants.imageUrl)}${posterPath ?? ""}";

  String getGenres() {
    List<String?> strList = genres!.map((element) => element.name).toList();
    return strList.join(', ');
  }
  
  String get getVoteAvarage => voteAverage!.toStringAsPrecision(2);
}
