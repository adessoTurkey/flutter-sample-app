// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/api_call/models/login_credentials_request_model.dart';
import 'package:flutter_movie_app/api_call/models/models.dart';
import 'package:flutter_movie_app/api_call/models/session_request_model.dart';
import 'package:flutter_movie_app/api_call/models/session_response_model.dart';
import 'package:flutter_movie_app/api_call/network/network.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/features/movie_detail/models/movie_detail_models.dart';
import 'package:flutter_movie_app/app/features/movies/models/movie_models.dart';
import 'package:flutter_movie_app/app/features/profile/models/account_detail/account_detail.dart';
import 'package:flutter_movie_app/app/features/profile/models/favorites/favorites_movie/favorite_movie_data.dart';
import 'package:flutter_movie_app/app/features/profile/models/favorites/favorites_tv/favorite_tv_data.dart';

import '../models/favorite/dto/add_to_favorite_dto.dart';
import '../models/favorite/response/add_to_favorite_response.dart';

abstract class RemoteDataSource {
  Future<RequestTokenModel> getRequestToken();
  Future<List<MovieData>> getMovieList(MovieCategoriesEnum categoryEndpoint);
  Future<RequestTokenModel> loginWithCredentials(LoginCredentialsRequestModel requestBody);
  Future<SessionResponseModel> openSession(SessionRequestModel requestBody);
  Future<MovieDetailModel> getMovieDetail(int movieId);
  Future<VideoModelResponse> getMovieVideos(int movieId);
  Future<CreditResponse> getMovieCredits(int movieId);
  Future<AccountDetail> getAccountDetail();
  Future<List<FavoriteMovieData>> getFavoriteMovies();
  Future<List<FavoriteTvData>> getFavoriteTVs();
  Future<AddToFavoriteResponse> addToFavorite(
      AddToFavoriteDto addToFavoriteDto);
  Future<List<GenreData>> getGenres(GenreType genreType);
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

  @override
  Future<RequestTokenModel> loginWithCredentials(
      LoginCredentialsRequestModel requestBody) async {
    try {
      var networkRequest = NetworkRequest(
          type: NetworkRequestType.post,
          path: dotenv.get(EnvConstants.loginWithCredentialsPath),
          data: NetworkRequestBody.json(requestBody.toJson()));
      var requestTokenResponse = await networkService.execute(
         networkRequest, (json) => RequestTokenModel.fromJson(json));
      return (requestTokenResponse as Ok<RequestTokenModel>).data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<SessionResponseModel> openSession(
      SessionRequestModel requestBody) async {
    try {
      var networkRequest = NetworkRequest(
          type: NetworkRequestType.post,
          path: dotenv.get(EnvConstants.openSessionPath),
          data: NetworkRequestBody.json(requestBody.toJson()));
      var sessionResponse = await networkService.execute(
          networkRequest, (json) => SessionResponseModel.fromJson(json));
      return (sessionResponse as Ok<SessionResponseModel>).data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<MovieDetailModel> getMovieDetail(int movieId) async {
    try {
      var movieDetailResponse = await networkService.execute(
          NetworkRequest(
              type: NetworkRequestType.get,
              path: "${dotenv.get(EnvConstants.moviePath)}/$movieId",
              data: const NetworkRequestBody.empty()),
          (json) => MovieDetailModel.fromJson(json));

      return (movieDetailResponse as Ok<MovieDetailModel>).data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<VideoModelResponse> getMovieVideos(int movieId) async {
    try {
      var movieDetailVideoResponse = await networkService.execute(
          NetworkRequest(
              type: NetworkRequestType.get,
              path:
                  "${dotenv.get(EnvConstants.moviePath)}/$movieId/${dotenv.get(EnvConstants.videoPath)}",
              data: const NetworkRequestBody.empty()),
          (json) => VideoModelResponse.fromJson(json));

      return (movieDetailVideoResponse as Ok<VideoModelResponse>).data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<CreditResponse> getMovieCredits(int movieId) async {
    try {
      var movieDetailCreditResponse = await networkService.execute(
          NetworkRequest(
              type: NetworkRequestType.get,
              path:
                  "${dotenv.get(EnvConstants.moviePath)}/$movieId/${dotenv.get(EnvConstants.creditPath)}",
              data: const NetworkRequestBody.empty()),
          (json) => CreditResponse.fromJson(json));

      return (movieDetailCreditResponse as Ok<CreditResponse>).data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<AccountDetail> getAccountDetail() async {
    try {
      var accountDetailResponse = await networkService.execute(
          NetworkRequest(
              type: NetworkRequestType.get,
              path: dotenv.get(EnvConstants.accountPath),
              data: const NetworkRequestBody.empty()),
          (json) => AccountDetail.fromJson(json));

      return (accountDetailResponse as Ok<AccountDetail>).data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<FavoriteMovieData>> getFavoriteMovies() async {
    try {
      var favoriteMoviesResponse = await networkService.execute(
          NetworkRequest(
              type: NetworkRequestType.get,
              path:
                  "${dotenv.get(EnvConstants.accountPath)}${dotenv.get(EnvConstants.favoriteMoviesPath)}",
              data: const NetworkRequestBody.empty()), (json) {
        List<FavoriteMovieData> favoriteList = (json['results'] as List)
            .map((e) => FavoriteMovieData.fromJson(e))
            .toList();

        return favoriteList;
      });

      return (favoriteMoviesResponse as Ok<List<FavoriteMovieData>>).data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<FavoriteTvData>> getFavoriteTVs() async {
    try {
      var favoriteTVsResponse = await networkService.execute(
          NetworkRequest(
              type: NetworkRequestType.get,
              path:
                  "${dotenv.get(EnvConstants.accountPath)}${dotenv.get(EnvConstants.favoriteTVPath)}",
              data: const NetworkRequestBody.empty()), (json) {
        List<FavoriteTvData> favoriteList = (json['results'] as List)
            .map((e) => FavoriteTvData.fromJson(e))
            .toList();

        return favoriteList;
      });

      return (favoriteTVsResponse as Ok<List<FavoriteTvData>>).data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<GenreData>> getGenres(GenreType genreType) async {
    try {
      var genreRequest = NetworkRequest(
        type: NetworkRequestType.get,
        path: "${dotenv.get(EnvConstants.genrePath)}${genreType.endpoint}",
        data: const NetworkRequestBody.empty(),
      );
      var genreResponse = await networkService.execute(
        genreRequest,
        (json) =>
            (json['genres'] as List).map((e) => GenreData.fromJson(e)).toList(),
      );
      return (genreResponse as Ok<List<GenreData>>).data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<AddToFavoriteResponse> addToFavorite(
      AddToFavoriteDto addToFavoriteDto) async {
    try {
      var networkRequest = NetworkRequest(
        type: NetworkRequestType.post,
        path: dotenv.get(EnvConstants.favoriteAddPath),
        data: NetworkRequestBody.json(
          addToFavoriteDto.toJson(),
        ),
      );
      var addToFavoriteResponse =
          await networkService.execute(networkRequest, (json) {
        AddToFavoriteResponse favoriteresponse =
            AddToFavoriteResponse.fromJson(json);

        return favoriteresponse;
      });
      return (addToFavoriteResponse as Ok<AddToFavoriteResponse>).data;
    } catch (_) {
      rethrow;
    }
  }
}
