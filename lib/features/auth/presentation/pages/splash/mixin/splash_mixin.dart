import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:piton_test_case/core/enums/local_storage_key.dart';
import 'package:piton_test_case/core/routing/route_paths.dart';
import 'package:piton_test_case/core/services/local/local_storage_service_impl.dart';
import 'package:piton_test_case/features/auth/domain/repository/auth_repository.dart';
import 'package:piton_test_case/features/auth/presentation/pages/splash/splash_screen.dart';

mixin SplashMixin on State<SplashScreen> {
  final routePaths = RoutePaths.instance;

  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 3), onTapSkipOrLogin);
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  Future<void> onTapSkipOrLogin({
    bool isLoginButton = false,
  }) async {
    if (_timer.isActive) {
      _timer.cancel();
    }
    if (isLoginButton) {
      GetIt.instance<LocalStorageService>().removeData(
        LocalStorageKey.token.value,
      );
    }
    final authService = GetIt.instance<AuthRepository>();
    final token = await authService.isRememberMe();

    if (token.isNotEmpty) {
      context.router.replaceNamed(routePaths.home);
    } else {
      context.router.replaceNamed(routePaths.login);
    }
  }
}
