import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';
import 'package:my_student_app/core/themes/styles.dart';

class StudentDetailsCard extends StatelessWidget {
  final String name;
  final int age;
  const StudentDetailsCard({super.key, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text('Name: $name', style: Styles.font16DarkGreenRegular),
          verticalSpace(8),
          Text('Age: $age', style: Styles.font16DarkGreenRegular),
        ],
      ),
    );
  }
}
