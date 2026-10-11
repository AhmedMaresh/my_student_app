import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/di/service_locator.dart';
import 'package:my_student_app/core/helpers/extensions.dart';
import 'package:my_student_app/core/helpers/snack_bar.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/helpers/validators.dart';
import 'package:my_student_app/core/routing/routes.dart';
import 'package:my_student_app/core/storage/token_storage.dart';
import 'package:my_student_app/features/auth/data/models/login_request.dart';
import 'package:my_student_app/features/auth/logic/cubit/login/login_cubit.dart';
import 'package:my_student_app/features/auth/ui/widgets/auth_button.dart';
import 'package:my_student_app/features/auth/ui/widgets/auth_text_field.dart';
import 'package:my_student_app/features/auth/ui/widgets/login/do_not_have_account.dart';
import 'package:my_student_app/features/auth/ui/widgets/login/login_header.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          loginSuccess: (loginResponse) async {
            await getIt<TokenStorage>().saveToken(loginResponse.token);
            if (!context.mounted) return;

            emailController.clear();
            passwordController.clear();
            context.pushReplacementNamed(Routes.studentsScreen);
          },
          loginFailure: (errorMessage) {
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
                    const LoginHeader(),
                    verticalSpace(40),
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
                    BlocBuilder<LoginCubit, LoginState>(
                      builder: (context, state) {
                        final isLoading = state.maybeWhen(
                          loginLoading: () => true,
                          orElse: () => false,
                        );
                        return AuthButton(
                          text: 'Login',
                          isLoading: isLoading,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              FocusScope.of(context).unfocus();
                              final email = emailController.text.trim();
                              final password = passwordController.text;

                              final loginRequest = LoginRequest(
                                email: email,
                                password: password,
                              );

                              context.read<LoginCubit>().login(loginRequest);
                            }
                          },
                        );
                      },
                    ),
                    verticalSpace(20),
                    const DoNotHaveAccount(),
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
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
