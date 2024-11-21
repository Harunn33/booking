import 'package:piton_test_case/core/helpers/validators_helpers.dart';

enum InputType { text, email, password }

extension InputTypeExt on InputType {
  String? getValidator(String? value) {
    if (value == null) {
      return null;
    }
    switch (this) {
      case InputType.text:
        return null;
      case InputType.email:
        return ValidatorsHelpers.instance.emailValidator(value);
      case InputType.password:
        return ValidatorsHelpers.instance.passwordValidator(value);
    }
  }
}
