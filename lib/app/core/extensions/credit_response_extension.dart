import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/features/movie_detail/models/credits/credit_response.dart';


extension CreditResponseExtension on CreditResponse {
  String getActors() {
    List<String?> actorList = cast!.map((e) {
      if (e.knownForDepartment == KnownForDepartmentEnum.acting) {
        return e.originalName ?? "";
      }
    }).toList();
    return actorList.join(", ");
  }

  String getWriters() {
    List<String?> writerList = cast!.map((e) {
      if (e.knownForDepartment == KnownForDepartmentEnum.writing) {
        return e.originalName ?? "";
      }
    }).toList();
    return writerList.join(", ");
  }
}
