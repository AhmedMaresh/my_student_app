import 'package:flutter/material.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/greeting_header.dart';

class StudentsScreen extends StatelessWidget {
  const StudentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [GreetingHeader(), SizedBox(height: 20)]),
      ),
    );
  }
}
