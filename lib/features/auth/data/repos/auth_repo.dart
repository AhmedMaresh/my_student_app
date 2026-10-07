import 'package:dio/dio.dart';
import 'package:my_student_app/core/networking/api_error_handler.dart';
import 'package:my_student_app/core/networking/api_error_model.dart';
import 'package:my_student_app/core/networking/api_result.dart';
import 'package:my_student_app/core/networking/api_services.dart';
import 'package:my_student_app/features/auth/data/models/login_request.dart';
import 'package:my_student_app/features/auth/data/models/login_response.dart';
import 'package:my_student_app/features/auth/data/models/register_request.dart';
import 'package:my_student_app/features/auth/data/models/register_response.dart';

class AuthRepo {
  final ApiServices _apiServices;

  AuthRepo(this._apiServices);

  Future<ApiResult<RegisterResponse>> register(
    RegisterRequest registerRequest,
  ) async {
    try {
      final response = await _apiServices.register(registerRequest);
      return ApiResult.success(response);
    } on DioException catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    } catch (error) {
      return ApiResult.failure(
        ApiErrorModel(errMessage: 'Something went wrong'),
      );
    }
  }

  Future<ApiResult<LoginResponse>> login(LoginRequest loginRequest) async {
    try {
      final response = await _apiServices.login(loginRequest);
      return ApiResult.success(response);
    } on DioException catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    } catch (error) {
      return ApiResult.failure(
        ApiErrorModel(errMessage: 'Something went wrong'),
      );
    }
  }
}
