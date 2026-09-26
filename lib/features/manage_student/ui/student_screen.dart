import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_student_app/core/helpers/extensions.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/routing/routes.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';
import 'package:my_student_app/features/manage_student/logic/cubit/student_cubit/students_cubit.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_screen/greeting_header.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_screen/student_search_bar.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_screen/students_bloc.dart';

class StudentsScreen extends StatelessWidget {
  const StudentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () async {
          await context.pushNamed(Routes.addStudentScreen);
          if (context.mounted) {
            context.read<StudentsCubit>().getStudents();
          }
        },
        child: Icon(Icons.add, color: ColorsManager.white),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GreetingHeader(),
            verticalSpace(10),
            const StudentSearchBar(),
            verticalSpace(10),
            const StudentsBloc(),
          ],
        ),
      ),
    );
  }
}
