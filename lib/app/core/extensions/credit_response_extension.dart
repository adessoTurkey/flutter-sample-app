import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/features/actor/model/crew_model.dart';
import 'package:flutter_movie_app/app/features/movie_detail/models/credits/credit_response.dart';

extension CreditResponseExtension on CreditResponse {

  List<CrewModel>? getDirector() {
    if (crew == null) {
      return null;
    }
    List<CrewModel> directorList = [];

    crew!.where((e) => e.knownForDepartment == KnownForDepartmentEnum.directing &&
        e.job == CastJobEnum.director &&
        e.name != null)
        .fold<Set<String>>({}, (uniqueNames, e) {
      if (uniqueNames.add(e.name!)) {
        directorList.add(CrewModel(name: e.name, id: e.id));
      }
      return uniqueNames;
    });

    return directorList;
  }

  List<CrewModel>? getWriters() {
    if (crew == null) {
      return null;
    }

    List<CrewModel> writerList = [];

    crew!.where((e) => e.knownForDepartment == KnownForDepartmentEnum.writing && e.name != null)
        .fold<Set<String>>({}, (uniqueNames, e) {
      if (uniqueNames.add(e.name!)) {
        writerList.add(CrewModel(name: e.name, id: e.id));
      }
      return uniqueNames;
    });

    return writerList;
  }

  List<CrewModel>? getActors() {
    if (crew == null) {
      return null;
    }

    List<CrewModel> actorList = [];

    crew!.where((e) => e.knownForDepartment == KnownForDepartmentEnum.acting && e.name != null)
        .fold<Set<String>>({}, (uniqueNames, e) {
      if (uniqueNames.add(e.name!)) {
        actorList.add(CrewModel(name: e.name, id: e.id));
      }
      return uniqueNames;
    });

    return actorList;
  }
}
