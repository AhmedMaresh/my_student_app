import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_student_app/core/di/service_locator.dart';
import 'package:my_student_app/core/routing/routes.dart';
import 'package:my_student_app/features/add_student/data/repos/add_student_repo.dart';
import 'package:my_student_app/features/add_student/logic/cubit/add_student_cubit.dart';
import 'package:my_student_app/features/add_student/ui/add_student_screen.dart';
import 'package:my_student_app/features/auth/data/repos/auth_repo.dart';
import 'package:my_student_app/features/auth/logic/cubit/login/login_cubit.dart';
import 'package:my_student_app/features/auth/logic/cubit/register/register_cubit.dart';
import 'package:my_student_app/features/auth/ui/login_screen.dart';
import 'package:my_student_app/features/auth/ui/register_screen.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';
import 'package:my_student_app/features/manage_student/data/repos/delete_student_repo.dart';
import 'package:my_student_app/features/manage_student/data/repos/student_repo.dart';
import 'package:my_student_app/features/manage_student/logic/cubit/delete_student_cubit/cubit/delete_student_cubit.dart';
import 'package:my_student_app/features/manage_student/logic/cubit/student_cubit/students_cubit.dart';
import 'package:my_student_app/features/manage_student/ui/student_details_screen.dart';
import 'package:my_student_app/features/manage_student/ui/student_screen.dart';
import 'package:my_student_app/features/settings/ui/settings_screen.dart';
import 'package:my_student_app/features/splash/ui/splash_screen.dart';
import 'package:my_student_app/features/update_student/data/repos/update_student_repo.dart';
import 'package:my_student_app/features/update_student/logic/cubit/update_student_cubit.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //Students Screen -----------------------------------------------
      case Routes.studentsScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<StudentsCubit>(
                create: (_) =>
                    StudentsCubit(getIt<StudentRepo>())..getStudents(),
              ),
              BlocProvider<DeleteStudentCubit>(
                create: (_) => DeleteStudentCubit(getIt<DeleteStudentRepo>()),
              ),
            ],
            child: const StudentsScreen(),
          ),
        );
      // Student Details Screen -----------------------------------------------
      case Routes.studentDetailsScreen:
        final student = settings.arguments as StudentModel;
        return MaterialPageRoute(
          builder: (_) => BlocProvider<UpdateStudentCubit>(
            create: (_) => UpdateStudentCubit(getIt<UpdateStudentRepo>()),
            child: StudentDetailsScreen(student: student),
          ),
        );
      // Add Student Screen -----------------------------------------------
      case Routes.addStudentScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<AddStudentCubit>(
            create: (_) => AddStudentCubit(getIt<AddStudentRepo>()),
            child: const AddStudentScreen(),
          ),
        );
      // Settings Screen -----------------------------------------------
      case Routes.settingsScreen:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      // Login Screen -----------------------------------------------
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<LoginCubit>(
            create: (context) => LoginCubit(getIt<AuthRepo>()),
            child: const LoginScreen(),
          ),
        );
      // Register Screen -----------------------------------------------
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<RegisterCubit>(
            create: (_) => RegisterCubit(getIt<AuthRepo>()),
            child: const RegisterScreen(),
          ),
        );
      // Splash Screen -----------------------------------------------
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return null;
    }
  }
}
