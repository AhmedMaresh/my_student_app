import 'package:get_it/get_it.dart';
import 'package:my_student_app/core/networking/api_services.dart';
import 'package:my_student_app/core/networking/dio_factory.dart';
import 'package:my_student_app/features/add_student/data/repos/add_student_repo.dart';
import 'package:my_student_app/features/auth/data/repos/auth_repo.dart';
import 'package:my_student_app/features/manage_student/data/repos/delete_student_repo.dart';
import 'package:my_student_app/features/manage_student/data/repos/student_repo.dart';
import 'package:my_student_app/features/update_student/data/repos/update_student_repo.dart';

final getIt = GetIt.instance;
void setupGetIt() {
  getIt.registerLazySingleton<ApiServices>(
    () => ApiServices(DioFactory.getDio()),
  );

  getIt.registerLazySingleton<AuthRepo>(() => AuthRepo(getIt<ApiServices>()));

  getIt.registerLazySingleton<StudentRepo>(
    () => StudentRepo(getIt<ApiServices>()),
  );

  getIt.registerLazySingleton<DeleteStudentRepo>(
    () => DeleteStudentRepo(getIt<ApiServices>()),
  );

  getIt.registerLazySingleton<AddStudentRepo>(
    () => AddStudentRepo(getIt<ApiServices>()),
  );

  getIt.registerLazySingleton<UpdateStudentRepo>(
    () => UpdateStudentRepo(getIt<ApiServices>()),
  );
}
