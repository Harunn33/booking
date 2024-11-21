import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/constants/app_strings.dart';
import 'package:piton_test_case/core/enums/app_icons.dart';
import 'package:piton_test_case/core/enums/input_type.dart';
import 'package:piton_test_case/core/widgets/buttons/custom_primary_button.dart';
import 'package:piton_test_case/core/widgets/buttons/custom_text_button.dart';
import 'package:piton_test_case/core/widgets/inputs/custom_primary_input.dart';
import 'package:piton_test_case/features/auth/data/model/login/req/login_request_model.dart';
import 'package:piton_test_case/features/auth/presentation/pages/login/mixin/login_mixin.dart';
import 'package:piton_test_case/features/auth/presentation/providers/auth_notifier.dart';

part 'widgets/custom_checkbox.dart';

@RoutePage()
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> with LoginMixin {
  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(authProvider.notifier);
    final state = ref.watch(authProvider);
    return Scaffold(
      body: Form(
        key: state.formKey,
        child: SafeArea(
          child: Padding(
            padding: appPaddings.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Center(
                  child: AppIcons.icLogo.svgWithAttiributes(
                    color: AppColors.instance.majorelleBlue,
                    height: 65.h,
                  ),
                ),
                const Spacer(),
                Text(
                  appStrings.welcomeBack,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.instance.cosmicVoid.withOpacity(.6),
                      ),
                ),
                10.verticalSpace,
                Text(
                  appStrings.loginToYourAccount,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Spacer(),
                CustomPrimaryInput(
                  label: appStrings.email,
                  hintText: appStrings.hintEmail,
                  controller: emailController,
                  inputType: InputType.email,
                ),
                20.verticalSpace,
                CustomPrimaryInput(
                  label: appStrings.password,
                  hintText: appStrings.hintPassword,
                  controller: passwordController,
                  inputType: InputType.password,
                ),
                10.verticalSpace,
                Row(
                  children: [
                    const _CustomCheckbox(),
                    const Spacer(),
                    CustomTextButton(
                      text: appStrings.register,
                      textStyle: Theme.of(context).textTheme.labelSmall,
                      onPressed: () => notifier.navigateToRegister(context),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 3,
                ),
                CustomPrimaryButton(
                  text: appStrings.login,
                  isLoading: state.isLoading,
                  onPressed: () {
                    notifier.handleLogin(
                      context,
                      loginRequestModel: LoginRequestModel(
                        email: emailController.text,
                        password: passwordController.text,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
