import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/helpers/snack_bar.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/helpers/validators.dart';
import 'package:my_student_app/features/auth/data/models/register_request.dart';
import 'package:my_student_app/features/auth/logic/cubit/register/register_cubit.dart';
import 'package:my_student_app/features/auth/ui/widgets/auth_button.dart';
import 'package:my_student_app/features/auth/ui/widgets/auth_text_field.dart';
import 'package:my_student_app/features/auth/ui/widgets/register/age_and_level_text_field.dart';
import 'package:my_student_app/features/auth/ui/widgets/register/already_have_account.dart';
import 'package:my_student_app/features/auth/ui/widgets/register/register_header.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();
  final levelController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        state.whenOrNull(
          registerSuccess: (_) {
            nameController.clear();
            emailController.clear();
            passwordController.clear();
            ageController.clear();
            levelController.clear();

            _formKey.currentState!.reset();

            showSnackBar(context, 'Registration successful');
          },
          registerFailure: (errorMessage) {
            showSnackBar(context, errorMessage);
          },
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpace(60),
                    const RegisterHeader(),
                    verticalSpace(40),
                    AuthTextField(
                      labelText: 'Name',
                      icon: Icons.person_outline,
                      obscureText: false,
                      controller: nameController,
                      validator: Validators.validateName,
                    ),
                    verticalSpace(20),
                    AuthTextField(
                      labelText: 'Email',
                      icon: Icons.email_outlined,
                      obscureText: false,
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: Validators.validateEmail,
                    ),
                    verticalSpace(20),
                    AuthTextField(
                      labelText: 'Password',
                      icon: Icons.lock_outline_rounded,
                      obscureText: true,
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      validator: Validators.validatePassword,
                    ),
                    verticalSpace(30),
                    AgeAndLevelTextField(
                      ageController: ageController,
                      levelController: levelController,
                    ),
                    verticalSpace(30),
                    BlocBuilder<RegisterCubit, RegisterState>(
                      builder: (context, state) {
                        final isLoading = state.maybeWhen(
                          registerLoading: () => true,
                          orElse: () => false,
                        );
                        return AuthButton(
                          text: 'Register',
                          isLoading: isLoading,
                          onPressed: () {
                            FocusScope.of(context).unfocus();
                            if (_formKey.currentState!.validate()) {
                              final registerRequest = RegisterRequest(
                                name: nameController.text.trim(),
                                email: emailController.text.trim(),
                                password: passwordController.text,
                                age: int.parse(ageController.text.trim()),
                                level: int.parse(levelController.text.trim()),
                              );

                              context.read<RegisterCubit>().register(
                                registerRequest,
                              );
                            }
                          },
                        );
                      },
                    ),
                    verticalSpace(20),
                    const AlreadyHaveAccount(),
                    verticalSpace(20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    ageController.dispose();
    levelController.dispose();
    super.dispose();
  }
}
