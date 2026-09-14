import 'package:flutter/material.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_screen/greeting_header.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_screen/student_card_list_view.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_screen/student_search_bar.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_screen/student_section_header.dart';

class StudentsScreen extends StatelessWidget {
  const StudentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GreetingHeader(),
            verticalSpace(10),
            const StudentSearchBar(),
            verticalSpace(10),
            const StudentsSectionHeader(studentCount: 5),
            verticalSpace(10),
            const Expanded(child: StudentCardListView()),
          ],
        ),
      ),
    );
  }
}
