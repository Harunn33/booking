import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:piton_test_case/core/enums/local_storage_key.dart';
import 'package:piton_test_case/features/language/domain/repository/language_repository.dart';
import 'package:piton_test_case/features/language/presentation/pages/enums/app_languages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageRepositoryImpl implements LanguageRepository {
  LanguageRepositoryImpl({required this.ref});
  final Ref ref;

  @override
  Future<void> setLanguage(AppLanguages language) async {
    final pref = await ref.read(sharedPreferencesProvider.future);
    await pref.setString(LocalStorageKey.languageCode.value, language.code);
    ref.read(languageProvider.notifier).update((state) => language);
  }

  @override
  Future<AppLanguages> getLanguage() async {
    final pref = await ref.read(sharedPreferencesProvider.future);
    final languageCode = pref.getString(LocalStorageKey.languageCode.value);
    if (languageCode == null) {
      return _getDeviceLanguage();
    }
    return AppLanguages.values.firstWhere(
      (element) => element.code == languageCode,
      orElse: () => AppLanguages.values.first,
    );
  }

  AppLanguages _getDeviceLanguage() {
    final deviceLocale = PlatformDispatcher.instance.locale.languageCode;

    return AppLanguages.values.firstWhere(
      (lang) => lang.code == deviceLocale,
      orElse: () => AppLanguages.english,
    );
  }
}

final sharedPreferencesProvider = FutureProvider<SharedPreferences>((ref) {
  return SharedPreferences.getInstance();
});

final languageRepositoryProvider = Provider<LanguageRepository>((ref) {
  return LanguageRepositoryImpl(ref: ref);
});
