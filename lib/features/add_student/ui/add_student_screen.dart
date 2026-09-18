import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';
import 'package:my_student_app/core/themes/styles.dart';
import 'package:my_student_app/features/add_student/ui/widgets/add_student_button.dart';
import 'package:my_student_app/features/add_student/ui/widgets/add_student_text_field.dart';

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({super.key});

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.darkGreen,
        foregroundColor: ColorsManager.beige,
        elevation: 0,
        title: Text('Add Student', style: Styles.font20Bold),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            verticalSpace(15),
            AddStudentTextField(
              controller: nameController,
              labelText: 'Student Name',
              hintText: 'Enter Student Name',
            ),
            verticalSpace(15),
            AddStudentTextField(
              controller: ageController,
              labelText: 'Age',
              hintText: 'Enter Student Age',
              keyboardType: TextInputType.number,
            ),
            verticalSpace(25),
            AddStudentButton(
              onPressed: () {
                final name = nameController.text.trim();
                final ageText = ageController.text.trim();

                if (name.isEmpty || ageText.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please enter student name and age'),
                    ),
                  );
                  return;
                }

                final age = int.parse(ageText);
                print(name);
                print(age);
              },
            ),
          ],
        ),
      ),
    );
  }
}
