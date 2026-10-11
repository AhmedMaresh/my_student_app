import 'package:my_student_app/core/helpers/app_regex.dart';

class Validators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }

    if (!AppRegex.isEmailValid(value)) {
      return 'Please enter a valid email';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }

    if (!AppRegex.isPasswordValid(value)) {
      return 'Password must be at least 8 characters, include uppercase, lowercase and a number';
    }

    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }

    if (!AppRegex.isNameValid(value)) {
      return 'Please enter a valid name';
    }

    return null;
  }

  static String? validateAge(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your age';
    }

    final age = int.tryParse(value);

    if (age == null) {
      return 'Please enter a valid age';
    }

    if (age < 5 || age > 100) {
      return 'Please enter a valid age';
    }

    return null;
  }

  static String? validateLevel(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your level';
    }

    final level = int.tryParse(value);

    if (level == null) {
      return 'Please enter a valid level';
    }

    if (level < 1 || level > 10) {
      return 'Level must be between 1 and 10';
    }

    return null;
  }
}
