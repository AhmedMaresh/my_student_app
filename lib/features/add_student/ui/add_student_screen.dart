import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';
import 'package:my_student_app/core/themes/styles.dart';
import 'package:my_student_app/features/add_student/ui/widgets/add_student_bloc_consumer.dart';

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({super.key});

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  final formKey = GlobalKey<FormState>();

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
        backgroundColor: ColorsManager.primaryBlue,
        foregroundColor: ColorsManager.white,
        elevation: 0,
        title: Text('Add Student', style: Styles.font20PrimaryBlueBold),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: AddStudentBlocConsumer(
          nameController: nameController,
          ageController: ageController,
          formKey: formKey,
        ),
      ),
    );
  }
}
