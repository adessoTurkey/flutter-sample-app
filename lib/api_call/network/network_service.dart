import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'network_constants.dart';
import 'network_request.dart';
import 'network_response.dart';

class NetworkService {
  NetworkService({
    required this.baseUrl,
    dioClient,
    httpHeaders,
  })  : dio = dioClient,
        _headers = httpHeaders ?? NetworkConstants.headers;
  Dio? dio;
  final String baseUrl;
  final Map<String, String> _headers;

  Future<Dio> _getDefaultDioClient() async {
    _headers.addAll(NetworkConstants.headers);
    final dio = Dio()
      ..options.baseUrl = baseUrl
      ..options.headers = _headers
      ..options.connectTimeout = NetworkConstants.connectTimeout
      ..options.receiveTimeout = NetworkConstants.receiveTimeout;

    return dio;
  }

  void addBasicAuth(String accessToken) {
    _headers['Authorization'] = 'Bearer $accessToken';
  }

  Future<NetworkResponse<T>> execute<T>(
    NetworkRequest request,
    T Function(Map<String, dynamic>) parser, {
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    dio ??= await _getDefaultDioClient();
    final req = PreparedNetworkRequest<T>(
      request,
      parser,
      dio!,
      {..._headers, ...(request.headers ?? {})},
      onSendProgress,
      onReceiveProgress,
    );
    final result = await compute(
      _executeRequest<T>,
      req,
    );
    return result;
  }

  Future<NetworkResponse<T>> _executeRequest<T>(
    PreparedNetworkRequest request,
  ) async {
    try {
      dynamic body = request.request.data.whenOrNull(
        json: (data) => data,
        text: (data) => data,
      );
      final response = await request.dio.request(
        request.request.path,
        data: body,
        queryParameters: request.request.queryParams,
        options: Options(
          method: request.request.type.name,
          headers: request.headers,
        ),
        onSendProgress: request.onSendProgress,
        onReceiveProgress: request.onReceiveProgress,
      );
      return NetworkResponse.ok(request.parser(response.data));
    } on DioException catch (error) {
      final errorText = error.toString();
      if (error.requestOptions.cancelToken!.isCancelled) {
        return NetworkResponse.noData(-1, errorText);
      }
      switch (error.response?.statusCode) {
        case 400:
          return NetworkResponse.badRequest(400, errorText);
        case 401:
          return NetworkResponse.noAuth(401, errorText);
        case 403:
          return NetworkResponse.noAccess(403, errorText);
        case 404:
          return NetworkResponse.notFound(404, errorText);
        case 409:
          return NetworkResponse.conflict(409, errorText);
        default:
          return NetworkResponse.noData(-2, errorText);
      }
    } catch (error) {
      return NetworkResponse.noData(-3, error.toString());
    }
  }
}

class PreparedNetworkRequest<T> {
  const PreparedNetworkRequest(
    this.request,
    this.parser,
    this.dio,
    this.headers,
    this.onSendProgress,
    this.onReceiveProgress,
  );
  final NetworkRequest request;
  final T Function(Map<String, dynamic>) parser;
  final Dio dio;
  final Map<String, dynamic> headers;
  final ProgressCallback? onSendProgress;
  final ProgressCallback? onReceiveProgress;
}
