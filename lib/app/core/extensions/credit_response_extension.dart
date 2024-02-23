import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/features/movie_detail/models/credits/credit_response.dart';

extension CreditResponseExtension on CreditResponse {
  String? getActors() {
    List<String?>? actorList = cast?.where((e) {
      if (e.knownForDepartment == KnownForDepartmentEnum.acting) {
        return true;
      }
      return false;
    }).map((e) {
      return e.originalName;
    }).toList();
    return actorList?.join(", ");
  }

  String? getWriters() {
    List<String?>? writerList = crew?.where((e) {
      if (e.knownForDepartment == KnownForDepartmentEnum.writing) {
        return true;
      }
      return false;
    }).map((e) {
      return e.originalName;
    }).toList();

    return writerList?.join(", ");
  }

  String? getDirector() {
    List<String?>? directorList = crew?.where((e) {
      if (e.knownForDepartment == KnownForDepartmentEnum.directing &&
          e.job == CastJobEnum.director) {
        return true;
      }
      return false;
    }).map((e) {
      return e.originalName;
    }).toList();

    return directorList?.join(", ");
  }
}
