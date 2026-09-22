import 'package:dio/dio.dart';
import 'package:my_student_app/core/networking/api_error_handler.dart';
import 'package:my_student_app/core/networking/api_error_model.dart';
import 'package:my_student_app/core/networking/api_result.dart';
import 'package:my_student_app/core/networking/api_services.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';
import 'package:my_student_app/features/update_student/data/models/update_student_request.dart';

class UpdateStudentRepo {
  final ApiServices apiServices;

  UpdateStudentRepo(this.apiServices);

  Future<ApiResult<StudentModel>> updateStudent(
    int id,
    UpdateStudentRequest updateStudentRequest,
  ) async {
    try {
      final response = await apiServices.updateStudent(
        id,
        updateStudentRequest,
      );

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
