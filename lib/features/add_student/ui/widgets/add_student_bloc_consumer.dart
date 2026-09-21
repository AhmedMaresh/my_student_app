import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  const AddStudentBlocConsumer({
    super.key,
    required this.nameController,
    required this.ageController,
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

        return Column(
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
              isLoading: isLoading,
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

                final request = AddStudentRequest(name: name, age: age);

                context.read<AddStudentCubit>().addStudent(request);
              },
            ),
          ],
        );
      },
    );
  }
}
