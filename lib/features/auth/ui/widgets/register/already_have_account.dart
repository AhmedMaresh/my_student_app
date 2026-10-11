import 'package:flutter/material.dart';
import 'package:my_student_app/core/helpers/extensions.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          context.pop();
        },
        child: const Text('Already have an account? Login'),
      ),
    );
  }
}
