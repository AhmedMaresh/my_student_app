import 'package:dio/dio.dart';
import 'package:my_student_app/core/networking/api_constants.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String? baseUrl}) = _ApiServices;

  @GET(ApiConstants.students)
  Future<List<StudentModel>> getStudents();
}
