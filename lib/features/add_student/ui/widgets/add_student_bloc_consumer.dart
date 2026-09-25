import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_student_app/core/helpers/app_regex.dart';
import 'package:my_student_app/core/helpers/extensions.dart';
import 'package:my_student_app/core/helpers/snack_bar.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/features/add_student/data/models/add_student_request.dart';
import 'package:my_student_app/features/add_student/logic/cubit/add_student_cubit.dart';
import 'package:my_student_app/features/add_student/ui/widgets/add_student_button.dart';
import 'package:my_student_app/features/add_student/ui/widgets/add_student_text_field.dart';

class AddStudentBlocConsumer extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController ageController;
  final GlobalKey<FormState> formKey;

  const AddStudentBlocConsumer({
    super.key,
    required this.nameController,
    required this.ageController,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddStudentCubit, AddStudentState>(
      buildWhen: (previous, current) =>
          current.maybeWhen(addStudentLoading: () => true, orElse: () => false),
      listener: (context, state) {
        state.maybeWhen(
          addStudentSuccess: (student) {
            showSnackBar(context, 'Student Added Successfully');
            context.pop();
          },
          addStudentFailure: (errMessage) {
            showSnackBar(context, errMessage);
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          addStudentLoading: () => true,
          orElse: () => false,
        );

        return Form(
          key: formKey,
          child: Column(
            children: [
              verticalSpace(15),
              AddStudentTextField(
                controller: nameController,
                labelText: 'Student Name',
                hintText: 'Enter Student Name',
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
              verticalSpace(15),
              AddStudentTextField(
                controller: ageController,
                labelText: 'Age',
                hintText: 'Enter Student Age',
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
              verticalSpace(25),
              AddStudentButton(
                isLoading: isLoading,
                onPressed: () {
                  if (!formKey.currentState!.validate()) {
                    return;
                  }
                  final name = nameController.text.trim();
                  final ageText = ageController.text.trim();

                  final age = int.parse(ageText);

                  final request = AddStudentRequest(name: name, age: age);

                  context.read<AddStudentCubit>().addStudent(request);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
