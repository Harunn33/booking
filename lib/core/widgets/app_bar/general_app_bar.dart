import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/constants/app_paddings.dart';
import 'package:piton_test_case/core/constants/app_text_style.dart';
import 'package:piton_test_case/core/extensions/context_ext.dart';
import 'package:piton_test_case/features/language/presentation/pages/language_popup_menu.dart';

class GeneralAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GeneralAppBar({
    this.pageTitle,
    super.key,
    this.leading,
  });
  final Widget? leading;
  final String? pageTitle;

  @override
  Widget build(BuildContext context) {
    final appPaddings = AppPaddings.instance;
    final appColors = AppColors.instance;
    final appTextStyle = AppTextStyle.instance;
    return AppBar(
      leadingWidth: .2.sw,
      leading: leading,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          color: appColors.maWhite,
          height: 1,
        ),
      ),
      actions: [
        Padding(
          padding: appPaddings.horizontal,
          child: Row(
            children: [
              Text(
                pageTitle ?? context.l10n.catalog,
                textAlign: TextAlign.right,
                style: appTextStyle.manropeBold20,
              ),
              12.horizontalSpace,
              const LanguagePopupMenu(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight.h);
}
