import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../features/tv_series/models/tv_series_data/tv_series_data.dart';
import '../core.dart';

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
