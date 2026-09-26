import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_student_app/core/helpers/app_regex.dart';
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
  final formKey = GlobalKey<FormState>();

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
          content: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                UpdateStudentTextField(
                  controller: nameController,
                  labelText: 'Name',
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Student name is required';
                    }

                    if (!AppRegex.isNameValid(value.trim())) {
                      return 'Please enter a valid name';
                    }

                    return null;
                  },
                ),
                verticalSpace(12),
                UpdateStudentTextField(
                  controller: ageController,
                  labelText: 'Age',
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Age is required';
                    }

                    final age = int.tryParse(value.trim());

                    if (age == null) {
                      return 'Age must be a valid number';
                    }

                    if (age <= 0 || age > 50) {
                      return 'Please enter a valid age';
                    }

                    return null;
                  },
                ),
              ],
            ),
          ),
          actions: [
            UpdateStudentTextButton(
              buttonText: 'Cancel',
              color: Theme.of(context).colorScheme.onSurface,
              onPressed: isLoading
                  ? null
                  : () {
                      context.pop();
                    },
            ),
            UpdateStudentTextButton(
              isLoading: isLoading,
              buttonText: 'Update',
              color: ColorsManager.primaryBlue,
              onPressed: isLoading
                  ? null
                  : () {
                      if (!formKey.currentState!.validate()) {
                        return;
                      }

                      final name = nameController.text.trim();
                      final age = int.parse(ageController.text.trim());

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
