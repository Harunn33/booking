import 'package:flutter/cupertino.dart';
import 'package:piton_test_case/core/extensions/context_ext.dart';

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

  String? emailValidator(String? value, {required BuildContext context}) {
    if (value == null) return null;
    if (value.isEmpty) return context.l10n.fieldIsRequired;
    if (!isEmailValid(value)) return context.l10n.invalidEmail;
    return null;
  }

  String? passwordValidator(String? value, {required BuildContext context}) {
    if (value == null) return null;
    if (value.isEmpty) return context.l10n.fieldIsRequired;
    if (!isPasswordValid(value)) return context.l10n.invalidPassword;
    return null;
  }
}
