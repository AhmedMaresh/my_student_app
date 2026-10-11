import 'package:dio/dio.dart';
import 'package:my_student_app/core/networking/api_error_handler.dart';
import 'package:my_student_app/core/networking/api_error_model.dart';
import 'package:my_student_app/core/networking/api_result.dart';
import 'package:my_student_app/core/networking/api_services.dart';
import 'package:my_student_app/features/add_student/data/models/add_student_request.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';

class AddStudentRepo {
  final ApiServices apiServices;

  AddStudentRepo(this.apiServices);

  Future<ApiResult<StudentModel>> addStudent(
    AddStudentRequest addStudentRequest,
  ) async {
    try {
      final response = await apiServices.addStudent(addStudentRequest);

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
