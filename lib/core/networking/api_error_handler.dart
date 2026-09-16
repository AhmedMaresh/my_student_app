import 'package:dio/dio.dart';
import 'package:my_student_app/core/networking/api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ApiErrorModel(errMessage: 'Connection Timeout');

      case DioExceptionType.sendTimeout:
        return ApiErrorModel(errMessage: 'Send Timeout');

      case DioExceptionType.receiveTimeout:
        return ApiErrorModel(errMessage: 'Receive Timeout');

      case DioExceptionType.connectionError:
        return ApiErrorModel(errMessage: 'No Internet connection');

      case DioExceptionType.badResponse:
        return _handleBadResponse(error);

      default:
        return ApiErrorModel(errMessage: 'Something went wrong');
    }
  }

  static ApiErrorModel _handleBadResponse(DioException error) {
    return ApiErrorModel(
      statusCode: error.response?.statusCode,
      errMessage: 'Server error',
    );
  }
}
