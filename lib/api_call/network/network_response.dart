import 'package:freezed_annotation/freezed_annotation.dart';
part 'network_response.freezed.dart';

@freezed
class NetworkResponse<Model> with _$NetworkResponse {
  const factory NetworkResponse.ok(Model data) = Ok;
  const factory NetworkResponse.invalidParameters(int errorCode,String message) = InvalidParameters;
  const factory NetworkResponse.noAuth(int errorCode,String message) = NoAuth; //401
  const factory NetworkResponse.noAccess(int errorCode,String message) = NoAccess; //403
  const factory NetworkResponse.badRequest(int errorCode,String message) = BadRequest; //400
  const factory NetworkResponse.notFound(int errorCode,String message) = NotFound; //404
  const factory NetworkResponse.conflict(int errorCode,String message) = Conflict; //409
  const factory NetworkResponse.noData(int errorCode,String message) = NoData; //500
}
