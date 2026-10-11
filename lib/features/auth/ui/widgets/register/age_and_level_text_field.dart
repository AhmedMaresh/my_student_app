import 'package:flutter/material.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/helpers/validators.dart';
import 'package:my_student_app/features/auth/ui/widgets/auth_text_field.dart';

class AgeAndLevelTextField extends StatelessWidget {
  const AgeAndLevelTextField({
    super.key,
    required this.ageController,
    required this.levelController,
  });

  final TextEditingController ageController;
  final TextEditingController levelController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AuthTextField(
            labelText: 'Age',
            icon: Icons.calendar_month_outlined,
            obscureText: false,
            controller: ageController,
            keyboardType: TextInputType.number,
            validator: Validators.validateAge,
          ),
        ),
        horizontalSpace(20),
        Expanded(
          child: AuthTextField(
            labelText: 'Level',
            icon: Icons.school_outlined,
            obscureText: false,
            controller: levelController,
            keyboardType: TextInputType.number,
            validator: Validators.validateLevel,
          ),
        ),
      ],
    );
  }
}
