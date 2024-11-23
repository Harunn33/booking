import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:piton_test_case/core/constants/app_strings.dart';
import 'package:piton_test_case/core/init/app_init.dart';
import 'package:piton_test_case/core/routing/app_router.dart';
import 'package:piton_test_case/core/themes/custom_theme.dart';
import 'package:piton_test_case/features/language/data/repository/language_repository_impl.dart';
import 'package:piton_test_case/features/language/presentation/pages/enums/app_languages.dart';

Future<void> main() async {
  await AppInitialization.mainInit();
  final container = ProviderContainer();
  final language =
      await container.read(languageRepositoryProvider).getLanguage();
  runApp(
    ProviderScope(
      overrides: [
        languageProvider.overrideWith(
          (ref) => language,
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final language = ref.watch(languageProvider);
    return LayoutBuilder(
      builder: (context, constraints) {
        final designSize = Size(
          constraints.maxWidth,
          constraints.maxHeight,
        );
        return ScreenUtilInit(
          designSize: designSize,
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, _) {
            return MaterialApp.router(
              title: AppStrings.instance.appName,
              theme: CustomTheme.instance.lightTheme,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: Locale(language.code),
              routerConfig: GetIt.instance<AppRouter>().config(),
            );
          },
        );
      },
    );
  }
}
