import 'package:flutter/material.dart';
import 'package:my_student_app/core/helpers/extensions.dart';
import 'package:my_student_app/core/routing/routes.dart';

class DoNotHaveAccount extends StatelessWidget {
  const DoNotHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          context.pushNamed(Routes.registerScreen);
        },
        child: const Text("Don't have an account? Register"),
      ),
    );
  }
}
