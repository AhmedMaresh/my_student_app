import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';

class EmptyStudentsState extends StatelessWidget {
  const EmptyStudentsState({super.key});

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).textTheme.bodyLarge?.color;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.school_outlined,
          size: 70.sp,
          color: ColorsManager.primaryBlue,
        ),
        SizedBox(height: 16.h),
        Text(
          'No students yet',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          'Add your first student to get started',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.sp,
            color: textColor?.withValues(alpha: 0.6),
          ),
        ),
      ],
    );
  }
}
