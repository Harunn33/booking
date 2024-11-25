import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:local_auth/local_auth.dart';
import 'package:piton_test_case/core/constants/api_constants.dart';
import 'package:piton_test_case/core/enums/local_storage_key.dart';
import 'package:piton_test_case/core/extensions/context_ext.dart';
import 'package:piton_test_case/core/init/app_init.dart';
import 'package:piton_test_case/core/routing/route_paths.dart';
import 'package:piton_test_case/core/services/local/local_storage_service_impl.dart';
import 'package:piton_test_case/features/auth/data/model/login/req/login_request_model.dart';
import 'package:piton_test_case/features/auth/data/model/register/req/register_request_model.dart';
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

  Future<bool> handleLogin(
    BuildContext context, {
    required LoginRequestModel loginRequestModel,
  }) async {
    if (state.loginFormKey.currentState!.validate()) {
      state = state.copyWith(isLoading: true);
      try {
        final resultLogin = await getIt<AuthRepository>().handleLogin(
          context,
          endpoint: ApiConstants.instance.baseUrl + ApiConstants.instance.login,
          loginRequestModel: loginRequestModel,
        );
        if (resultLogin.actionLogin.token.isNotEmpty) {
          state = state.copyWith(token: resultLogin.actionLogin.token);
          if (state.isRememberMe) {
            GetIt.instance<LocalStorageService>().saveData<String>(
              LocalStorageKey.token.value,
              resultLogin.actionLogin.token,
            );
          }
          unawaited(
            context.router.replaceNamed(RoutePaths.instance.home),
          );
        }
        return true;
      } on DioException catch (e) {
        context.showSnackBar(
          e.response?.statusMessage ?? '',
        );
      } finally {
        state = state.copyWith(isLoading: false);
      }
      return false;
    }
    return false;
  }

  Future<bool> handleRegister(
    BuildContext context, {
    required RegisterRequestModel registerRequestModel,
  }) async {
    if (state.registerFormKey.currentState!.validate()) {
      state = state.copyWith(isLoading: true);
      try {
        final resultRegister = await getIt<AuthRepository>().handleRegister(
          context,
          endpoint:
              ApiConstants.instance.baseUrl + ApiConstants.instance.register,
          registerRequestModel: registerRequestModel,
        );
        if (resultRegister.actionRegister.token.isNotEmpty) {
          unawaited(
            context.router.replaceNamed(RoutePaths.instance.home),
          );
        }
        return true;
      } on DioException catch (e) {
        context.showSnackBar(
          e.response?.statusMessage ?? '',
        );
      } finally {
        state = state.copyWith(isLoading: false);
      }
      return false;
    }
    return false;
  }

  Future<void> localAuth(BuildContext context) async {
    final localAuth = LocalAuthentication();
    state = state.copyWith(isLoading: true);
    try {
      final canAuth = await localAuth.canCheckBiometrics;
      if (canAuth) {
        final isAuth = await localAuth.authenticate(
          localizedReason: context.l10n.localAuthReason,
          options: const AuthenticationOptions(
            biometricOnly: true,
          ),
        );
        if (isAuth) {
          unawaited(
            context.router.replaceNamed(RoutePaths.instance.home),
          );
        }
      }
    } catch (e) {
      context.showSnackBar(
        e.toString(),
      );
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }
}
