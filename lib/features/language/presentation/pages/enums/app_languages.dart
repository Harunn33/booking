import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:piton_test_case/core/enums/app_icons.dart';

enum AppLanguages {
  english(flag: AppIcons.icUsFlag, name: 'English', code: 'en'),
  turkish(flag: AppIcons.icTrFlag, name: 'Türkçe', code: 'tr');

  const AppLanguages({
    required this.flag,
    required this.name,
    required this.code,
  });
  final AppIcons flag;
  final String name;
  final String code;
}

extension AppLanguagesExtension on AppLanguages {
  static List<Locale> get supportedLocales {
    return AppLanguages.values
        .map((language) => Locale(language.code))
        .toList();
  }
}

final languageProvider =
    StateProvider<AppLanguages>((ref) => AppLanguages.english);
