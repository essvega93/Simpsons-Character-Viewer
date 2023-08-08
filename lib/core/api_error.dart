import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';

@freezed
class ApiError with _$ApiError {
  const factory ApiError.httpInternalServerError(String errorBody) =
      HttpInternalServerError;

  const factory ApiError.httpUnAuthorizedError() = HttpUnAuthorizedError;

  const factory ApiError.httpUnknownError(String message) = HttpUnknownError;
}
