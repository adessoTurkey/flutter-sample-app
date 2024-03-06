import 'package:flutter_movie_app/app/features/movies/models/genre_data/genre_data.dart';
import 'package:flutter_movie_app/di/dependency_injection.dart';

import '../../../../../api_call/api_repositories/api_repositories.dart';
import '../../../../core/enums/enums.dart';

class GenreMock {
  static GenreMock? _instance;
  // Avoid self instance
  GenreMock._({required this.remoteDataSource});
  static GenreMock get instance =>
      _instance ??= GenreMock._(remoteDataSource: getIt<RemoteDataSource>());

  final RemoteDataSource remoteDataSource;
  late List<GenreData> tvGenres;
  late List<GenreData> movieGenres;

  Future<void> init() async {
    await getGenres();
  }

  Future<void> getGenres() async {
    tvGenres = await remoteDataSource.getGenres(GenreType.tv);
    movieGenres = await remoteDataSource.getGenres(GenreType.movie);
  }
}
