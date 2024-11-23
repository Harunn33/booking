import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/enums/app_icons.dart';
import 'package:piton_test_case/core/enums/input_type.dart';
import 'package:piton_test_case/core/extensions/context_ext.dart';
import 'package:piton_test_case/core/widgets/buttons/custom_primary_button.dart';
import 'package:piton_test_case/core/widgets/buttons/custom_text_button.dart';
import 'package:piton_test_case/core/widgets/inputs/custom_primary_input.dart';
import 'package:piton_test_case/features/auth/presentation/pages/register/mixin/register_mixin.dart';
import 'package:piton_test_case/features/auth/presentation/providers/auth_notifier.dart';
import 'package:piton_test_case/features/language/presentation/pages/language_popup_menu.dart';

@RoutePage()
class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen>
    with RegisterMixin {
  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(authProvider.notifier);
    final state = ref.watch(authProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.instance.white,
        elevation: 0,
        actions: [
          Padding(
            padding: appPaddings.horizontal,
            child: const LanguagePopupMenu(),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Form(
            key: state.registerFormKey,
            child: Padding(
              padding: appPaddings.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: AppIcons.icLogo.svgWithAttiributes(
                      color: AppColors.instance.majorelleBlue,
                      height: 65.h,
                    ),
                  ),
                  20.verticalSpace,
                  Text(
                    context.l10n.welcome,
                    style: appTextStyle.manropeSemiBold16.copyWith(
                      color: AppColors.instance.cosmicVoid.withOpacity(.6),
                    ),
                  ),
                  10.verticalSpace,
                  Text(
                    context.l10n.registerForAnAccount,
                    style: appTextStyle.manropeBold20,
                  ),
                  20.verticalSpace,
                  CustomPrimaryInput(
                    label: context.l10n.name,
                    hintText: appStrings.hintName,
                    controller: nameController,
                  ),
                  20.verticalSpace,
                  CustomPrimaryInput(
                    label: context.l10n.email,
                    hintText: appStrings.hintEmail,
                    controller: emailController,
                    inputType: InputType.email,
                  ),
                  20.verticalSpace,
                  CustomPrimaryInput(
                    label: context.l10n.password,
                    hintText: appStrings.hintPassword,
                    controller: passwordController,
                    inputType: InputType.password,
                  ),
                  10.verticalSpace,
                  Align(
                    alignment: Alignment.centerRight,
                    child: CustomTextButton(
                      text: context.l10n.login,
                      textStyle: appTextStyle.manropeBold12,
                      onPressed: () => navigateToLogin(context),
                    ),
                  ),
                  60.verticalSpace,
                  CustomPrimaryButton(
                    text: context.l10n.register,
                    isLoading: state.isLoading,
                    onPressed: () => handleRegister(
                      context,
                      notifier: notifier,
                    ),
                  ),
                  36.verticalSpace,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
