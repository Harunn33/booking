import 'package:piton_test_case/features/language/presentation/pages/enums/app_languages.dart';

abstract class LanguageRepository {
  Future<void> setLanguage(AppLanguages language);
  Future<AppLanguages> getLanguage();
}
