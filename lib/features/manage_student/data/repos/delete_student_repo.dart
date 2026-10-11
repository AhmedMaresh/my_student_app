import 'package:dio/dio.dart';
import 'package:my_student_app/core/networking/api_error_handler.dart';
import 'package:my_student_app/core/networking/api_error_model.dart';
import 'package:my_student_app/core/networking/api_result.dart';
import 'package:my_student_app/core/networking/api_services.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';

class DeleteStudentRepo {
  final ApiServices apiServices;

  DeleteStudentRepo(this.apiServices);

  Future<ApiResult<StudentModel>> deleteStudent(int id) async {
    try {
      final response = await apiServices.deleteStudent(id);

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
