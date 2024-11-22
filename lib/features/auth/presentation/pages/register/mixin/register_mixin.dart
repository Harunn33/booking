import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:piton_test_case/core/constants/app_paddings.dart';
import 'package:piton_test_case/core/constants/app_strings.dart';
import 'package:piton_test_case/features/auth/data/model/register/req/register_request_model.dart';
import 'package:piton_test_case/features/auth/presentation/pages/register/register_screen.dart';
import 'package:piton_test_case/features/auth/presentation/providers/auth_notifier.dart';

mixin RegisterMixin on State<RegisterScreen> {
  final appStrings = AppStrings.instance;
  final appPaddings = AppPaddings.instance;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void navigateToLogin(BuildContext context) {
    context.router.back();
  }

  Future<void> handleRegister(
    BuildContext context, {
    required AuthNotifier notifier,
  }) async {
    await notifier.handleRegister(
      context,
      registerRequestModel: RegisterRequestModel(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    clearControllers();
  }

  void clearControllers() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
  }
}
