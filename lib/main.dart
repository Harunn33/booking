import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:piton_test_case/core/constants/app_strings.dart';
import 'package:piton_test_case/core/init/app_init.dart';
import 'package:piton_test_case/core/routing/app_router.dart';
import 'package:piton_test_case/core/themes/custom_theme.dart';

void main() async {
  await AppInitialization.mainInit();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
              routerConfig: GetIt.instance<AppRouter>().config(
                  // reevaluateListenable: GetIt.I<AuthManager>(),
                  ),
            );
          },
        );
      },
    );
  }
}
