import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton_test_case/features/language/data/repository/language_repository_impl.dart';
import 'package:piton_test_case/features/language/presentation/pages/enums/app_languages.dart';

class LanguagePopupMenu extends ConsumerWidget {
  const LanguagePopupMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final language = ref.watch(languageProvider);
    return PopupMenuButton(
      itemBuilder: (context) => AppLanguages.values
          .map(
            (language) => PopupMenuItem(
              value: language,
              child: Row(
                children: [
                  language.flag.svg,
                  8.horizontalSpace,
                  Text(language.name),
                ],
              ),
            ),
          )
          .toList(),
      onSelected: ref.read(languageRepositoryProvider).setLanguage,
      child: language.flag.svg,
    );
  }
}
