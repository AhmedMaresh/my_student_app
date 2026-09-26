import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';
import 'package:my_student_app/core/themes/styles.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';

class StudentInfo extends StatelessWidget {
  final StudentModel student;

  const StudentInfo({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).textTheme.bodyLarge?.color;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: ColorsManager.primaryBlue,
          child: Icon(Icons.person, size: 60.sp, color: ColorsManager.white),
        ),
        verticalSpace(16),
        Text(
          student.name,
          style: Styles.font28PrimaryBlueBold.copyWith(color: textColor),
        ),
        verticalSpace(8),
        Text(
          'Age: ${student.age}',
          style: Styles.font16PrimaryBlueRegular.copyWith(
            color: textColor?.withValues(alpha: 0.6),
          ),
        ),
      ],
    );
  }
}
