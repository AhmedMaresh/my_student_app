import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';
import 'package:my_student_app/core/themes/styles.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_details_screen/student_details_card.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_details_screen/student_info.dart';
import 'package:my_student_app/features/update_student/logic/cubit/update_student_cubit.dart';
import 'package:my_student_app/features/update_student/ui/update_student_dialog.dart';

class StudentDetailsScreen extends StatefulWidget {
  final StudentModel student;
  const StudentDetailsScreen({super.key, required this.student});

  @override
  State<StudentDetailsScreen> createState() => _StudentDetailsScreenState();
}

class _StudentDetailsScreenState extends State<StudentDetailsScreen> {
  late StudentModel student;

  @override
  void initState() {
    super.initState();
    student = widget.student;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.darkGreen,
        foregroundColor: ColorsManager.beige,
        elevation: 0,
        title: Text('Student Details', style: Styles.font20Bold),
        actions: [
          IconButton(
            onPressed: () async {
              final updatedStudent = await showDialog<StudentModel>(
                context: context,
                builder: (_) {
                  return BlocProvider.value(
                    value: context.read<UpdateStudentCubit>(),
                    child: UpdateStudentDialog(studentModel: student),
                  );
                },
              );
              debugPrint('UPDATED STUDENT FROM DIALOG: $updatedStudent');
              if (updatedStudent != null) {
                setState(() {
                  student = updatedStudent;
                });
              }
            },
            icon: const Icon(Icons.edit),
          ),
        ],
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
