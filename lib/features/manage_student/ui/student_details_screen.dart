import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';
import 'package:my_student_app/core/themes/styles.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_details_screen/student_details_card.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_details_screen/student_info.dart';

class StudentDetailsScreen extends StatelessWidget {
  final StudentModel student;
  const StudentDetailsScreen({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.darkGreen,
        foregroundColor: ColorsManager.beige,
        elevation: 0,
        title: Text('Student Details', style: Styles.font20Bold),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            verticalSpace(20),
            Center(child: StudentInfo(student: student)),
            verticalSpace(40),
            StudentDetailsCard(student: student),
          ],
        ),
      ),
    );
  }
}
