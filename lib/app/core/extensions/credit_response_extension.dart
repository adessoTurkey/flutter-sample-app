import 'package:flutter_movie_app/app/features/movie_detail/models/credits/cast/cast_results.dart';
import 'package:flutter_movie_app/app/features/movie_detail/models/credits/credit_response.dart';

extension CreditResponseExtension on CreditResponse {
  String getActors() {
    List<String?> actorList = cast!.map((e) {
      if (e.knownForDepartment == "Acting") {
        return e.originalName ?? "";
      }
    }).toList();
    return actorList.join(", ");
  }

  String getWriters() {
    List<CastResults> test = cast!.where((element) {
      if (element.job == "Production Design") {
        return true;
      }
      return false;
    }).toList();
    List<String> writerList = test.map((e) {

      return e.originalName ?? "";
    }).toList();
    return writerList.join(", ");
  }
}
