import 'package:dio/dio.dart';
import 'package:my_student_app/core/networking/api_constants.dart';
import 'package:my_student_app/features/add_student/data/models/add_student_request.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String? baseUrl}) = _ApiServices;

  @GET(ApiConstants.students)
  Future<List<StudentModel>> getStudents();

  @POST(ApiConstants.students)
  Future<StudentModel> addStudent(@Body() AddStudentRequest addStudentRequest);

  @DELETE('${ApiConstants.students}/{id}')
  Future<StudentModel> deleteStudent(@Path('id') int id);
}
