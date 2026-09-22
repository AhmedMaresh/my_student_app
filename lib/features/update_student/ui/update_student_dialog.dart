import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_student_app/core/helpers/extensions.dart';
import 'package:my_student_app/core/helpers/snack_bar.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';
import 'package:my_student_app/features/update_student/data/models/update_student_request.dart';
import 'package:my_student_app/features/update_student/logic/cubit/update_student_cubit.dart';
import 'package:my_student_app/features/update_student/ui/widgets/update_student_text_button.dart';
import 'package:my_student_app/features/update_student/ui/widgets/update_student_text_field.dart';

class UpdateStudentDialog extends StatefulWidget {
  final StudentModel studentModel;
  const UpdateStudentDialog({super.key, required this.studentModel});

  @override
  State<UpdateStudentDialog> createState() => _UpdateStudentDialogState();
}

class _UpdateStudentDialogState extends State<UpdateStudentDialog> {
  late final TextEditingController nameController;
  late final TextEditingController ageController;

  @override
  void initState() {
    super.initState();

    nameController = TextEditingController(text: widget.studentModel.name);

    ageController = TextEditingController(
      text: widget.studentModel.age.toString(),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdateStudentCubit, UpdateStudentState>(
      listener: (context, state) {
        state.maybeWhen(
          updateStudentStateSuccess: (student) {
            debugPrint('UPDATED STUDENT: $student');
            context.pop(student);
          },
          updateStudentStateFailure: (errMessage) {
            showSnackBar(context, errMessage);
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          updateStudentStateLoading: () => true,
          orElse: () => false,
        );
        return AlertDialog(
          title: const Text('Edit Student'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              UpdateStudentTextField(
                controller: nameController,
                labelText: 'Name',
              ),
              verticalSpace(12),
              UpdateStudentTextField(
                controller: ageController,
                labelText: 'Age',
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            UpdateStudentTextButton(
              buttonText: 'Cancel',
              color: ColorsManager.black,
              onPressed: isLoading
                  ? null
                  : () {
                      context.pop();
                    },
            ),
            UpdateStudentTextButton(
              isLoading: isLoading,
              buttonText: 'Update',
              color: ColorsManager.darkGreen,
              onPressed: isLoading
                  ? null
                  : () {
                      final name = nameController.text.trim();
                      final age = int.tryParse(ageController.text.trim());

                      if (name.isEmpty || age == null) {
                        showSnackBar(context, 'Please enter valid data');
                        return;
                      }

                      final request = UpdateStudentRequest(
                        name: name,
                        age: age,
                      );

                      context.read<UpdateStudentCubit>().updateStudent(
                        widget.studentModel.id,
                        request,
                      );
                    },
            ),
          ],
        );
      },
    );
  }
}
