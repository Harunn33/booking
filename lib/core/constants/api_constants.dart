final class ApiConstants {
  ApiConstants._();
  static final ApiConstants instance = ApiConstants._();

  final baseUrl = 'https://assign-api.piton.com.tr/api/rest/';
  final connectTimeout = const Duration(seconds: 5);
  final receiveTimeout = const Duration(seconds: 5);
  final login = 'login';
  final register = 'register';
  final categories = 'categories';
  final products = 'products';
  final coverImage = 'cover_image';
}
