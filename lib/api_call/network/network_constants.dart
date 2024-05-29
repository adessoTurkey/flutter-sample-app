import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../app/core/constants/constants.dart';

abstract final class NetworkConstants {
  static Duration connectTimeout = const Duration(milliseconds: 5000);
  static Duration receiveTimeout = const Duration(milliseconds: 3000);
  static String contentType = 'application/json; charset=utf-8';
  static Map<String, String> headers = {"accept": "application/json"};
  static Map<String, String> googlePlacesHeader = {
    "Content-Type": "application/json",
    "X-Goog-FieldMask":
        dotenv.get(EnvConstants.googlePlacesApiSearchByFieldMask),
    "X-Goog-Api-Key": dotenv.get(EnvConstants.googlePlacesApiKey),
  };
}
