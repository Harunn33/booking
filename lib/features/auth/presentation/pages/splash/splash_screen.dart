import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/constants/app_paddings.dart';
import 'package:piton_test_case/core/enums/app_icons.dart';
import 'package:piton_test_case/core/extensions/context_ext.dart';
import 'package:piton_test_case/core/widgets/buttons/custom_primary_button.dart';
import 'package:piton_test_case/core/widgets/buttons/custom_text_button.dart';
import 'package:piton_test_case/features/auth/presentation/pages/splash/mixin/splash_mixin.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> with SplashMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.instance.flyByNight,
      body: Padding(
        padding: AppPaddings.instance.horizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            AppIcons.icLogo.svg,
            const Spacer(),
            CustomPrimaryButton(
              text: context.l10n.login,
              onPressed: navigateToLogin,
            ),
            CustomTextButton(
              onPressed: navigateToLogin,
              text: context.l10n.skip,
            ),
            20.verticalSpace,
          ],
        ),
      ),
    );
  }
}
