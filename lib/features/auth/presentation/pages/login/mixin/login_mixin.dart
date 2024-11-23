import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/constants/app_paddings.dart';
import 'package:piton_test_case/core/constants/app_strings.dart';
import 'package:piton_test_case/core/constants/app_text_style.dart';
import 'package:piton_test_case/core/routing/route_paths.dart';
import 'package:piton_test_case/features/auth/data/model/login/req/login_request_model.dart';
import 'package:piton_test_case/features/auth/presentation/pages/login/login_screen.dart';
import 'package:piton_test_case/features/auth/presentation/providers/auth_notifier.dart';

mixin LoginMixin on State<LoginScreen> {
  final appStrings = AppStrings.instance;
  final appPaddings = AppPaddings.instance;
  final appTextStyle = AppTextStyle.instance;
  final appColors = AppColors.instance;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void navigateToRegister(BuildContext context) {
    context.router.pushNamed(RoutePaths.instance.register);
  }

  Future<void> handleLogin(
    BuildContext context, {
    required AuthNotifier notifier,
  }) async {
    final result = await notifier.handleLogin(
      context,
      loginRequestModel: LoginRequestModel(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    if (result) {
      clearControllers();
    }
  }

  void clearControllers() {
    emailController.clear();
    passwordController.clear();
  }
}
