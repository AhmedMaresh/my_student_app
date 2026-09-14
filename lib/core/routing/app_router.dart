import 'package:flutter/material.dart';
import 'package:my_student_app/core/routing/routes.dart';
import 'package:my_student_app/features/manage_student/ui/student_details_screen.dart';
import 'package:my_student_app/features/manage_student/ui/student_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.studentsScreen:
        return MaterialPageRoute(builder: (_) => const StudentsScreen());
      case Routes.studentDetailsScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        return MaterialPageRoute(
          builder: (_) => StudentDetailsScreen(
            name: args?['name'] ?? 'Unknown',
            age: args?['age'] ?? 0,
          ),
        );
      default:
        return null;
    }
  }
}
