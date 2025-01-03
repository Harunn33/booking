import 'package:flutter/material.dart';
import 'package:piton_test_case/core/helpers/validators_helpers.dart';

enum InputType { text, email, password }

extension InputTypeExt on InputType {
  String? getValidator(String? value, {required BuildContext context}) {
    if (value == null) {
      return null;
    }
    switch (this) {
      case InputType.text:
        return ValidatorsHelpers.instance
            .textValidator(value, context: context);
      case InputType.email:
        return ValidatorsHelpers.instance
            .emailValidator(value, context: context);
      case InputType.password:
        return ValidatorsHelpers.instance
            .passwordValidator(value, context: context);
    }
  }
}
