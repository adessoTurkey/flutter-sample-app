import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/api_call/models/models.dart';
import 'package:flutter_movie_app/api_call/network/network.dart';
import 'package:flutter_movie_app/app/core/constants/constants.dart';
import 'package:flutter_movie_app/app/core/enums/enums.dart';
import 'package:flutter_movie_app/app/core/enums/tv_series_category_enum.dart';
import 'package:flutter_movie_app/app/features/movie_detail/models/movie_detail_models.dart';
import 'package:flutter_movie_app/app/features/movies/models/movie_models.dart';
import 'package:flutter_movie_app/app/features/profile/models/account_detail/account_detail.dart';
import 'package:flutter_movie_app/app/features/profile/models/favorites/favorites_movie/favorite_movie_data.dart';
import 'package:flutter_movie_app/app/features/profile/models/favorites/favorites_tv/favorite_tv_data.dart';
import '../../app/features/tv_series/models/tv_series_data/tv_series_data.dart';

abstract class RemoteDataSource {
  Future<RequestTokenModel> getRequestToken();
  Future<List<MovieData>> getMovieList(MovieCategoriesEnum categoryEndpoint);
  Future<MovieDetailModel> getMovieDetail(int movieId);
  Future<VideoModelResponse> getMovieVideos(int movieId);
  Future<CreditResponse> getMovieCredits(int movieId);
  Future<AccountDetail> getAccountDetail();
  Future<List<FavoriteMovieData>> getFavoriteMovies();
  Future<List<FavoriteTvData>> getFavoriteTVs();
  Future<List<TvSeriesData>> getTvSeries(TvSeriesCategory categoryEndpoint);
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
  Future<List<TvSeriesData>> getTvSeries(
      TvSeriesCategory categoryEndpoint) async {
    try {
      var networkRequest = NetworkRequest(
          type: NetworkRequestType.get,
          path:
          "${dotenv.get(EnvConstants.tvSeriesPath)}/${categoryEndpoint.value}",
          data: const NetworkRequestBody.empty());
      var tvSeriesDataList = await networkService.execute(
        networkRequest,
            (response) {
          List<TvSeriesData> tvSeriesList = (response['results'] as List)
              .map((e) => TvSeriesData.fromJson(e))
              .toList();
          return tvSeriesList;
        },
      );

      return (tvSeriesDataList as Ok<List<TvSeriesData>>).data;
    } catch (_) {
      rethrow;
    }
  }
}
