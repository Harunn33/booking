import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:piton_test_case/core/routing/route_paths.dart';
import 'package:piton_test_case/features/auth/presentation/pages/splash/splash_screen.dart';

mixin SplashMixin on State<SplashScreen> {
  final routePaths = RoutePaths.instance;

  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 3), navigateToLogin);
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  void navigateToLogin() {
    if (_timer.isActive) {
      _timer.cancel();
    }
    context.router.pushNamed(routePaths.login);
  }
}
