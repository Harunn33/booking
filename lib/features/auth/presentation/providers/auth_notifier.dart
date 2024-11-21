import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:piton_test_case/core/constants/api_constants.dart';
import 'package:piton_test_case/core/extensions/context_ext.dart';
import 'package:piton_test_case/core/init/app_init.dart';
import 'package:piton_test_case/core/routing/route_paths.dart';
import 'package:piton_test_case/features/auth/data/model/login/req/login_request_model.dart';
import 'package:piton_test_case/features/auth/domain/repository/auth_repository.dart';
import 'package:piton_test_case/features/auth/presentation/states/auth_state.dart';

final authProvider =
    NotifierProvider.autoDispose<AuthNotifier, AuthState>(AuthNotifier.new);

class AuthNotifier extends AutoDisposeNotifier<AuthState> {
  AuthNotifier();

  @override
  AuthState build() {
    _init();
    return AuthState.initial();
  }

  Future<void> _init() async {}

  void onChanged(
    bool? value,
  ) {
    if (value == null) return;
    state = state.copyWith(isRememberMe: value);
  }

  void navigateToRegister(BuildContext context) {
    context.router.pushNamed(RoutePaths.instance.register);
  }

  Future<void> handleLogin(
    BuildContext context, {
    required LoginRequestModel loginRequestModel,
  }) async {
    if (state.formKey.currentState!.validate()) {
      state = state.copyWith(isLoading: true);
      try {
        final resultLogin = await getIt<AuthRepository>().handleLogin(
          context,
          endpoint: ApiConstants.instance.baseUrl + ApiConstants.instance.login,
          loginRequestModel: loginRequestModel,
        );
        if (resultLogin.actionLogin.token.isNotEmpty) {
          unawaited(
            context.router.pushNamed(RoutePaths.instance.home),
          );
        }
      } on DioException catch (e) {
        context.showSnackBar(
          e.response?.statusMessage ?? '',
        );
      } finally {
        state = state.copyWith(isLoading: false);
      }
    }
  }
}
