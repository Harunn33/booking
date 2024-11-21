final class AppStrings {
  AppStrings._();

  static final AppStrings _instance = AppStrings._();

  static AppStrings get instance => _instance;

  String get appName => 'Piton Catalog';
  // Splash Screen
  String get login => 'Login';
  String get skip => 'Skip';
  // Login Screen
  String get welcomeBack => 'welcomeBack';
  String get loginToYourAccount => 'loginToYourAccount';
  String get email => 'email';
  String get hintEmail => 'john@mail.com';
  String get password => 'password';
  String get hintPassword => '········';
  String get rememberMe => 'rememberMe';
  // Register Screen
  String get register => 'register';
  // Error Messages
  String get noResultFound => 'noResultFound';
  String get fieldIsRequired => 'fieldIsRequired';
  String get invalidEmail => 'invalidEmail';
  String get invalidPassword => 'invalidPassword';
}
