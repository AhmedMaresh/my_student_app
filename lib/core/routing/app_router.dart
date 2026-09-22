import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_student_app/core/networking/api_services.dart';
import 'package:my_student_app/core/networking/dio_factory.dart';
import 'package:my_student_app/core/routing/routes.dart';
import 'package:my_student_app/features/add_student/data/repos/add_student_repo.dart';
import 'package:my_student_app/features/add_student/logic/cubit/add_student_cubit.dart';
import 'package:my_student_app/features/add_student/ui/add_student_screen.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';
import 'package:my_student_app/features/manage_student/data/repos/delete_student_repo.dart';
import 'package:my_student_app/features/manage_student/data/repos/student_repo.dart';
import 'package:my_student_app/features/manage_student/logic/cubit/delete_student_cubit/cubit/delete_student_cubit.dart';
import 'package:my_student_app/features/manage_student/logic/cubit/student_cubit/students_cubit.dart';
import 'package:my_student_app/features/manage_student/ui/student_details_screen.dart';
import 'package:my_student_app/features/manage_student/ui/student_screen.dart';
import 'package:my_student_app/features/update_student/data/repos/update_student_repo.dart';
import 'package:my_student_app/features/update_student/logic/cubit/update_student_cubit.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //Students Screen
      case Routes.studentsScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<StudentsCubit>(
                create: (_) =>
                    StudentsCubit(StudentRepo(ApiServices(DioFactory.getDio())))
                      ..getStudents(),
              ),
              BlocProvider<DeleteStudentCubit>(
                create: (_) => DeleteStudentCubit(
                  DeleteStudentRepo(ApiServices(DioFactory.getDio())),
                ),
              ),
            ],
            child: const StudentsScreen(),
          ),
        );
      // Student Details Screen
      case Routes.studentDetailsScreen:
        final student = settings.arguments as StudentModel;
        return MaterialPageRoute(
          builder: (_) => BlocProvider<UpdateStudentCubit>(
            create: (_) => UpdateStudentCubit(
              UpdateStudentRepo(ApiServices(DioFactory.getDio())),
            ),
            child: StudentDetailsScreen(student: student),
          ),
        );
      // Add Student Screen
      case Routes.addStudentScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<AddStudentCubit>(
            create: (_) => AddStudentCubit(
              AddStudentRepo(ApiServices(DioFactory.getDio())),
            ),
            child: const AddStudentScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
