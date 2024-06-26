import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/app/features/movies/models/models.dart';

import '../core.dart';

extension MovieDataExtension on MovieData {
  String get getImageURL =>
      "${dotenv.get(EnvConstants.imageUrl)}${moviePosterPath ?? ""}";

  String getGenres(List<GenreData>? genre) {
    if (genre == null) {
      return "";
    }
    List<GenreData> filteredList =
        genre.where((e) => genres!.contains(e.id)).toList();
    List<String?> stringList = filteredList.map((e) => e.name).toList();
    return stringList.join(', ');
  }

  String get getVoteAvarage => voteAvarage!.toStringAsPrecision(2);
}
