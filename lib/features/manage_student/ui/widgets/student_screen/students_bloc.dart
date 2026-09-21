import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_student_app/core/helpers/snack_bar.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';
import 'package:my_student_app/features/manage_student/logic/cubit/delete_student_cubit/cubit/delete_student_cubit.dart';
import 'package:my_student_app/features/manage_student/logic/cubit/student_cubit/students_cubit.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_screen/student_card_list_view.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_screen/student_section_header.dart';

class StudentsBloc extends StatelessWidget {
  const StudentsBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeleteStudentCubit, DeleteStudentState>(
      listener: (context, state) {
        state.maybeWhen(
          deleteStudentSuccess: (_) {
            showSnackBar(context, 'Student Deleted Successfully');
            context.read<StudentsCubit>().getStudents();
          },
          deleteStudentFailure: (errMessage) {
            showSnackBar(context, errMessage);
          },
          orElse: () {},
        );
      },
      child: BlocBuilder<StudentsCubit, StudentsState>(
        buildWhen: (previous, current) => current.maybeWhen(
          studentsLoading: () => true,
          studentsSuccess: (_) => true,
          studentsError: (_) => true,
          orElse: () => false,
        ),

        builder: (context, state) {
          return state.maybeWhen(
            studentsLoading: () {
              return setupLoading();
            },
            studentsSuccess: (students) {
              return setupSuccess(students);
            },
            studentsError: (errMessage) {
              return setupError(errMessage);
            },
            orElse: () {
              return const SizedBox.shrink();
            },
          );
        },
      ),
    );
  }

  Widget setupLoading() {
    return const Expanded(
      child: Center(
        child: CircularProgressIndicator(color: ColorsManager.darkGreen),
      ),
    );
  }

  Widget setupSuccess(List<StudentModel> students) {
    return Expanded(
      child: Column(
        children: [
          verticalSpace(10),
          StudentsSectionHeader(studentCount: students.length),
          verticalSpace(10),
          Expanded(child: StudentCardListView(students: students)),
        ],
      ),
    );
  }

  Widget setupError(String errMessage) {
    return Expanded(child: Center(child: Text(errMessage)));
  }
}
