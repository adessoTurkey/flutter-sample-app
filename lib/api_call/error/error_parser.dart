import 'package:flutter/material.dart';
import 'package:flutter_movie_app/api_call/network/network.dart';
import 'package:flutter_movie_app/localization/localization.dart';

final class ErrorParser {
  static String? getErrorLocaleText(
      BuildContext context, NetworkResponse networkResponse) {
    if (networkResponse is InvalidParameters) {
      return context.localization
          .invalid_parameters_error(networkResponse.errorCode);
    } else if (networkResponse is NoAuth) {
      return context.localization.no_auth_error(networkResponse.errorCode);
    } else if (networkResponse is NoAccess) {
      return context.localization.no_access_error(networkResponse.errorCode);
    } else if (networkResponse is BadRequest) {
      return context.localization.bad_request_error(networkResponse.errorCode);
    } else if (networkResponse is NotFound) {
      return context.localization.not_found_error(networkResponse.errorCode);
    } else if (networkResponse is Conflict) {
      return context.localization.conflict_error(networkResponse.errorCode);
    } else if (networkResponse is NoData) {
      return context.localization.no_data_error(networkResponse.errorCode);
    }

    return null;
  }
}
