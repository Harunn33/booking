import 'package:piton_test_case/core/constants/app_strings.dart';

final class ValidatorsHelpers {
  ValidatorsHelpers._();

  static final instance = ValidatorsHelpers._();

  final String _emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  final String _passwordPattern = r'^[a-zA-Z0-9]{6,20}$';

  bool isEmailValid(String email) {
    return RegExp(_emailPattern).hasMatch(email);
  }

  bool isPasswordValid(String password) {
    return RegExp(_passwordPattern).hasMatch(password);
  }

  String? emailValidator(String? value) {
    final strings = AppStrings.instance;
    if (value == null) return null;
    if (value.isEmpty) return strings.fieldIsRequired;
    if (!isEmailValid(value)) return strings.invalidEmail;
    return null;
  }

  String? passwordValidator(String? value) {
    final strings = AppStrings.instance;
    if (value == null) return null;
    if (value.isEmpty) return strings.fieldIsRequired;
    if (!isPasswordValid(value)) return strings.invalidPassword;
    return null;
  }
}
