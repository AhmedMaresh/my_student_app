import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_screen/student_card.dart';

class StudentCardListView extends StatelessWidget {
  final List<StudentModel> students;
  const StudentCardListView({super.key, required this.students});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: students.length,
      itemBuilder: (context, index) {
        final student = students[index];

        return TweenAnimationBuilder<double>(
          tween: Tween(begin: 0.5, end: 1),
          duration: Duration(milliseconds: 500 + (index * 200)),
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: Transform.translate(
                offset: Offset(0, 40 * (1 - value)),
                child: child,
              ),
            );
          },
          child: Padding(
            padding: EdgeInsets.only(bottom: 6.h),
            child: StudentCard(student: student),
          ),
        );
      },
    );
  }
}
