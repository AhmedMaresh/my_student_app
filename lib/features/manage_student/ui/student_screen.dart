import 'package:flutter/material.dart';
import 'package:my_student_app/core/helpers/extensions.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/routing/routes.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_screen/greeting_header.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_screen/student_search_bar.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_screen/students_bloc_builder.dart';

class StudentsScreen extends StatelessWidget {
  const StudentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsManager.darkGreen,
        shape: const CircleBorder(),
        onPressed: () {
          context.pushNamed(Routes.addStudentScreen);
        },
        child: Icon(Icons.add, color: ColorsManager.beige),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GreetingHeader(),
            verticalSpace(10),
            const StudentSearchBar(),
            verticalSpace(10),
            const StudentsBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
