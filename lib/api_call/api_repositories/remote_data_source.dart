import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/api_call/models/models.dart';
import 'package:flutter_movie_app/api_call/network/network.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/features/movies/models/movie_models.dart';

abstract class RemoteDataSource {
  Future<RequestTokenModel> getRequestToken();
  Future<List<MovieData>> getMovieList(MovieCategoriesEnum categoryEndpoint);
}

class RemoteDataSourceImpl extends RemoteDataSource {
  final NetworkService networkService;
  RemoteDataSourceImpl({required this.networkService});

  @override
  Future<RequestTokenModel> getRequestToken() async {
    try {
      var requestTokenResponse = await networkService.execute(
          NetworkRequest(
              type: NetworkRequestType.get,
              path: dotenv.get(EnvConstants.requestTokenPath),
              data: const NetworkRequestBody.empty()),
          (json) => RequestTokenModel.fromJson(json));

      return (requestTokenResponse as Ok<RequestTokenModel>).data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<MovieData>> getMovieList(
      MovieCategoriesEnum categoryEndpoint) async {
    try {
      var movieDataList = await networkService.execute(
        NetworkRequest(
            type: NetworkRequestType.get,
            path:
                "${dotenv.get(EnvConstants.moviePath)}/${categoryEndpoint.value}",
            data: const NetworkRequestBody.empty()),
        (response) {
          // BaseResponse baseResponse = BaseResponse.fromJson(response, (json) {
          //   return (json as List).map((e) => MovieData.fromJson(e)).toList();
          // });
          List<MovieData> movieList = (response['results'] as List)
              .map((e) => MovieData.fromJson(e))
              .toList();
          return movieList;
        },
      );

      return (movieDataList as Ok<List<MovieData>>).data;
    } catch (_) {
      rethrow;
    }
  }
}
