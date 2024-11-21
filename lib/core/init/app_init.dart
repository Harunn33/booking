import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:piton_test_case/core/routing/app_router.dart';
import 'package:piton_test_case/core/services/network/dio_service.dart';
import 'package:piton_test_case/features/auth/data/repository/auth_repository_impl.dart';
import 'package:piton_test_case/features/auth/domain/repository/auth_repository.dart';

final getIt = GetIt.I;

/// Product initialization manager class
@immutable
final class AppInitialization {
  const AppInitialization._();

  static Future<void> mainInit() async {
    WidgetsFlutterBinding.ensureInitialized();
    _getItInit();
  }

  static void _getItInit() {
    GetIt.I.registerSingleton<AppRouter>(AppRouter());
    GetIt.I.registerSingleton<DioService>(DioService.instance);
    GetIt.I.registerSingleton<AuthRepository>(
      AuthRepositoryImpl(GetIt.I<DioService>()),
    );
  }
}
