import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/app/features/tv_series_detail/models/tv_series_detail_model.dart';
import '../constants/env_constants.dart';

extension TvSeriesDetailModelExtension on TvSeriesDetailModel {
  String get getImageURL =>
      "${dotenv.get(EnvConstants.imageUrl)}${posterPath ?? ""}";

  String getGenres() {
    List<String?> strList = genres!.map((element) => element.name).toList();
    return strList.join(', ');
  }

  String get getVoteAverage => voteAverage!.toStringAsPrecision(2);

  String getDates() {
    String first = (firstAirDate?.split("-")[0]) ?? "";
    String last = (lastAirDate?.split("-")[0]) ?? "";
    return "($first - $last)";
  }

  String get getDuration => (episodeRunTime?.first.toString()) ?? "-";

  String get getNumberOfSeasons => numberOfSeasons.toString();

  String? get getCreators => creators?.map((e) => e.name).toList().join(", ");
}
