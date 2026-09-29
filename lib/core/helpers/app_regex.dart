class AppRegex {
  static bool isNameValid(String name) {
    return RegExp(r'^[a-zA-Z\u0600-\u06FF\s]+$').hasMatch(name);
  }

  static bool isEmailValid(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  static bool isPasswordValid(String password) {
    return RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$').hasMatch(password);
  }
}
