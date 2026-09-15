import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';
import 'package:my_student_app/core/themes/styles.dart';

class StudentInfo extends StatelessWidget {
  final String name;
  final int age;
  const StudentInfo({super.key, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: ColorsManager.darkGreen,
          child: Icon(Icons.person, size: 60.sp, color: ColorsManager.beige),
        ),
        verticalSpace(16),
        Text(name, style: Styles.font28DarkGreenBold),
        verticalSpace(8),
        Text('Age: $age', style: Styles.font16DarkGreenRegular),
      ],
    );
  }
}
