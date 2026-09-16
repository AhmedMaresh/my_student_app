import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_student_app/core/themes/colors_manager.dart';

class StudentsSectionHeader extends StatelessWidget {
  final int studentCount;

  const StudentsSectionHeader({super.key, required this.studentCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Text(
            'Students',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: ColorsManager.darkGreen,
            ),
          ),

          const Spacer(),

          Text(
            '$studentCount Students',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: ColorsManager.darkGreen.withValues(alpha: 0.6),
            ),
          ),
        ],
      ),
    );
  }
}
