final class RoutePaths {
  RoutePaths._();

  static final RoutePaths _instance = RoutePaths._();

  static RoutePaths get instance => _instance;

  final String splash = '/';
  final String login = '/login';
  final String register = '/register';
  final String home = '/home';
}
