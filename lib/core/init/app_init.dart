import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:piton_test_case/core/cache/category_cache.dart';
import 'package:piton_test_case/core/cache/product_cache.dart';
import 'package:piton_test_case/core/routing/app_router.dart';
import 'package:piton_test_case/core/services/local/local_storage_service_impl.dart';
import 'package:piton_test_case/core/services/network/dio_service_impl.dart';
import 'package:piton_test_case/features/auth/data/repository/auth_repository_impl.dart';
import 'package:piton_test_case/features/auth/domain/repository/auth_repository.dart';
import 'package:piton_test_case/features/home/data/repository/home_repository_impl.dart';
import 'package:piton_test_case/features/home/domain/repository/home_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.I;

/// Product initialization manager class
@immutable
final class AppInitialization {
  const AppInitialization._();

  static Future<void> mainInit() async {
    WidgetsFlutterBinding.ensureInitialized();
    _getItInit();
  }

  static Future<void> _getItInit() async {
    GetIt.I.registerSingleton<AppRouter>(AppRouter());
    GetIt.I.registerSingleton<DioServiceImpl>(DioServiceImpl.instance);
    final sharedPreferences = await SharedPreferences.getInstance();

    // LocalStorageService kaydı
    getIt.registerSingleton<LocalStorageService>(
      LocalStorageServiceImpl(sharedPreferences),
    );
    GetIt.I.registerSingleton<AuthRepository>(
      AuthRepositoryImpl(
        GetIt.I<DioServiceImpl>(),
      ),
    );
    GetIt.I.registerSingleton<HomeRepository>(
      HomeRepositoryImpl(GetIt.I<DioServiceImpl>()),
    );
    GetIt.I.registerSingleton(
      CategoryCacheService(
        GetIt.I<LocalStorageService>(),
      ),
    );
    GetIt.I.registerSingleton(
      ProductCacheService(
        GetIt.I<LocalStorageService>(),
      ),
    );
  }
}
