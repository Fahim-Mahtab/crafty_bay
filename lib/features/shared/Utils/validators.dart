class Validators {
  static String? validateText(String? value, String errorMessage) {
    if (value == null || value.isEmpty) {
      return errorMessage;
    }

    return null;
  }

  static String? emailValidate(String? value, String errorMessage) {
    final emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
    if ((value == null || value.isEmpty) || !emailRegex.hasMatch(value)) {
      return errorMessage;
    }
    return null;
  }

  static String? passwordValidate(String? value) {
    if (value == null || value.isEmpty) {
      return "Password Cant Be Empty";
    } else if (value.length < 6) {
      return "Password Must Be At Least 6 Characters";
    }
    return null;
  }

  static String? phoneNumberValidate(String? value) {
    final phoneRegex = RegExp(r'^01\d{9}$');
    if ((value == null || value.isEmpty)) {
      return "Phone Number Cant Be Empty";
    } else if (!phoneRegex.hasMatch(value)) {
      return "Invalid Phone Number";
    }
    return null;
  }
}
