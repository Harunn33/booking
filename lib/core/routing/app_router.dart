import 'package:auto_route/auto_route.dart';
import 'package:piton_test_case/features/auth/presentation/pages/login/login_screen.dart';
import 'package:piton_test_case/features/auth/presentation/pages/register/register_screen.dart';
import 'package:piton_test_case/features/auth/presentation/pages/splash/splash_screen.dart';
import 'package:piton_test_case/features/home/home_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: '/login',
          page: LoginRoute.page,
        ),
        AutoRoute(
          path: '/register',
          page: RegisterRoute.page,
        ),
        AutoRoute(
          path: '/home',
          page: HomeRoute.page,
        ),
      ];
}
