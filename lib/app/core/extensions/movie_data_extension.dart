import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/features/movies/models/movie_models.dart';
import '../../features/genre_data/genre_data.dart';

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
