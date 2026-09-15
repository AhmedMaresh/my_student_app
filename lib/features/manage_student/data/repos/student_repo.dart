import 'package:my_student_app/core/networking/api_services.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';

class StudentRepo {
  final ApiServices apiServices;

  StudentRepo(this.apiServices);

  Future<List<StudentModel>> getStudents() {
    return apiServices.getStudents();
  }
}
