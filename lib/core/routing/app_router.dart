import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:piton_test_case/core/routing/route_paths.dart';
import 'package:piton_test_case/features/auth/presentation/pages/login/login_screen.dart';
import 'package:piton_test_case/features/auth/presentation/pages/register/register_screen.dart';
import 'package:piton_test_case/features/auth/presentation/pages/splash/splash_screen.dart';
import 'package:piton_test_case/features/home/data/model/product/resp/product_response_model.dart';
import 'package:piton_test_case/features/home/presentation/pages/home_screen.dart';
import 'package:piton_test_case/features/product/presentation/pages/product_detail/product_detail_screen.dart';
import 'package:piton_test_case/features/product/presentation/pages/view_all/view_all_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: RoutePaths.instance.splash,
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: RoutePaths.instance.login,
          page: LoginRoute.page,
        ),
        AutoRoute(
          path: RoutePaths.instance.register,
          page: RegisterRoute.page,
        ),
        AutoRoute(
          path: RoutePaths.instance.home,
          page: HomeRoute.page,
        ),
        AutoRoute(
          path: RoutePaths.instance.viewAll,
          page: ViewAllRoute.page,
        ),
        AutoRoute(
          path: RoutePaths.instance.productDetail,
          page: ProductDetailRoute.page,
        ),
      ];
}
