final class ApiConstants {
  ApiConstants._();
  static final ApiConstants instance = ApiConstants._();

  final String baseUrl = 'https://assign-api.piton.com.tr/api/rest/';
  final Duration connectTimeout = const Duration(seconds: 5);
  final Duration receiveTimeout = const Duration(seconds: 5);
  final String login = 'login';
  final String register = 'register';
}
