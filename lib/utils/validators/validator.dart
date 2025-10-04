class AaliyahValidator {
  // =========================
  // Email Validation
  // =========================
  static String? validateEmail(String? value) {
    // Check if the field is empty
    if (value == null || value.isEmpty) {
      return "Email is required!";
    }

    // Regular expression (pattern) to match a valid email
    final emailRegExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    // Check if the input matches the email pattern
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address!';
    }

    // If everything is fine, return null (no error)
    return null;
  }

  // =========================
  // Password Validation
  // =========================
  static String? validatePassword(String? value) {
    // Check if the field is empty
    if (value == null || value.isEmpty) {
      return 'Password is required!';
    }

    // Check for minimum password length
    if (value.length < 8) {
      return 'Password must be at least 8 characters long!';
    }

    // Check for at least one uppercase letter
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter!';
    }

    // Check for at least one number
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number!';
    }

    // Check for at least one special character
    if (!value.contains(RegExp(r'[!@#$%^&(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character!';
    }

    // If all conditions are met, return null (no error)
    return null;
  }
}
