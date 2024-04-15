import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import '../../features/genre_data/genre_data.dart';
import '../../features/tv_series/models/tv_series_data/tv_series_data.dart';

extension TvSeriesDataExtension on TvSeriesData {
  String get getImageURL =>
      "${dotenv.get(EnvConstants.imageUrl)}${tvSeriesPosterPath ?? ""}";

  String getGenres(List<GenreData>? genre) {
    if (genre == null) {
      return "";
    }
    List<GenreData> filteredList =
    genre.where((e) => genres!.contains(e.id)).toList();
    List<String?> stringList = filteredList.map((e) => e.name).toList();
    return stringList.join(', ');
  }

  String? get getVoteAverage => voteAverage?.toStringAsPrecision(2);
}
