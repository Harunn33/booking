import 'package:flutter/material.dart';
import 'package:piton_test_case/core/constants/app_paddings.dart';
import 'package:piton_test_case/core/constants/app_strings.dart';
import 'package:piton_test_case/features/auth/presentation/pages/login/login_screen.dart';

mixin LoginMixin on State<LoginScreen> {
  final appStrings = AppStrings.instance;
  final appPaddings = AppPaddings.instance;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
}
