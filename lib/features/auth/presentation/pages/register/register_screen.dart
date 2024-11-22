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
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: appPaddings.horizontal,
            child: const LanguagePopupMenu(),
          ),
        ],
      ),
      body: SafeArea(
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
                const Spacer(),
                Text(
                  context.l10n.welcome,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.instance.cosmicVoid.withOpacity(.6),
                      ),
                ),
                10.verticalSpace,
                Text(
                  context.l10n.registerForAnAccount,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Spacer(),
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
                Row(
                  children: [
                    const Spacer(),
                    CustomTextButton(
                      text: context.l10n.login,
                      textStyle: Theme.of(context).textTheme.labelSmall,
                      onPressed: () => navigateToLogin(context),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 3,
                ),
                CustomPrimaryButton(
                  text: context.l10n.register,
                  isLoading: state.isLoading,
                  onPressed: () => handleRegister(
                    context,
                    notifier: notifier,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
