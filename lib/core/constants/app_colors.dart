import 'dart:ui';

final class AppColors {
  AppColors._();

  static final AppColors _instance = AppColors._();

  static AppColors get instance => _instance;
  // Background Colors
  Color get white => const Color(0xFFFFFFFF);
  // Primary Colors
  Color get cosmicVoid => const Color(0xFF090937);
  // Other Colors
  Color get maWhite => const Color(0xFFF4F4FF);
  Color get majorelleBlue => const Color(0xFF6251DD);
  Color get entanRed => const Color(0xFFEF6B4A);
  Color get flyByNight => const Color(0xFF1D1D4E);
}
