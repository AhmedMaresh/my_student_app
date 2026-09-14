import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_screen/student_card.dart';

class StudentCardListView extends StatelessWidget {
  const StudentCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
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
            child: StudentCard(name: 'Student $index', age: 20 + index),
          ),
        );
      },
    );
  }
}
