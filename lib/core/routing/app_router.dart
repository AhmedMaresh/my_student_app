import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_student_app/core/networking/api_services.dart';
import 'package:my_student_app/core/networking/dio_factory.dart';
import 'package:my_student_app/core/routing/routes.dart';
import 'package:my_student_app/features/add_student/ui/add_student_screen.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';
import 'package:my_student_app/features/manage_student/data/repos/student_repo.dart';
import 'package:my_student_app/features/manage_student/logic/cubit/students_cubit.dart';
import 'package:my_student_app/features/manage_student/ui/student_details_screen.dart';
import 'package:my_student_app/features/manage_student/ui/student_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.studentsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<StudentsCubit>(
            create: (_) =>
                StudentsCubit(StudentRepo(ApiServices(DioFactory.getDio())))
                  ..getStudents(),
            child: const StudentsScreen(),
          ),
        );
      case Routes.studentDetailsScreen:
        final student = settings.arguments as StudentModel;
        return MaterialPageRoute(
          builder: (_) => StudentDetailsScreen(student: student),
        );
      case Routes.addStudentScreen:
        return MaterialPageRoute(builder: (_) => AddStudentScreen());
      default:
        return null;
    }
  }
}
