class AppRegex {
  static bool isNameValid(String name) {
    return RegExp(r'[a-zA-Z\u0600-\u06FF]').hasMatch(name);
  }
}
