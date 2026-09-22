import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';
import 'package:my_student_app/core/themes/styles.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';
import 'package:my_student_app/features/update_student/logic/cubit/update_student_cubit.dart';
import 'package:my_student_app/features/update_student/ui/update_student_dialog.dart';

class StudentDetailsCard extends StatelessWidget {
  final StudentModel student;
  const StudentDetailsCard({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(16.r),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        borderRadius: BorderRadius.circular(16.r),
        onLongPress: () {
          showDialog(
            context: context,
            builder: (_) {
              return BlocProvider.value(
                value: context.read<UpdateStudentCubit>(),
                child: UpdateStudentDialog(studentModel: student),
              );
            },
          );
        },
        child: Ink(
          width: double.infinity,
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: ColorsManager.beige,
            borderRadius: BorderRadius.circular(16.r),
            boxShadow: [
              BoxShadow(
                color: ColorsManager.darkGreen.withValues(alpha: 0.2),
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Student Information', style: Styles.font16BlackBold),
              Divider(color: ColorsManager.black),
              verticalSpace(5),
              Text(
                'Name: ${student.name}',
                style: Styles.font16DarkGreenRegular,
              ),
              verticalSpace(8),
              Text('Age: ${student.age}', style: Styles.font16DarkGreenRegular),
            ],
          ),
        ),
      ),
    );
  }
}
