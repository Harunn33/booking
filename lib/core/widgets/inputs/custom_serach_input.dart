import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/constants/app_text_style.dart';
import 'package:piton_test_case/core/enums/app_icons.dart';
import 'package:piton_test_case/core/extensions/padding_ext.dart';

class CustomSearchInput extends StatelessWidget {
  const CustomSearchInput({
    required this.hintText,
    required this.searchController,
    super.key,
    this.onChanged,
  });
  final String hintText;
  final void Function(String)? onChanged;
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();
    final appColors = AppColors.instance;
    return TextFormField(
      controller: searchController,
      onChanged: onChanged,
      onTapOutside: (event) => focusNode.unfocus(),
      focusNode: focusNode,
      cursorColor: appColors.majorelleBlue,
      style: AppTextStyle.instance.manropeRegular16,
      decoration: InputDecoration(
        contentPadding: 10.padAll,
        prefixIconConstraints: BoxConstraints(
          minHeight: 40.h,
          minWidth: 40.w,
        ),
        suffixIconConstraints: BoxConstraints(
          minHeight: 40.h,
          minWidth: 40.w,
        ),
        prefixIcon: Padding(
          padding: 10.padHorizontal,
          child: AppIcons.icSearch.svgWithAttiributes(
            color: appColors.cosmicVoid.withOpacity(.4),
          ),
        ),
        suffixIcon: Padding(
          padding: 10.padHorizontal,
          child: AppIcons.icFilter.svgWithAttiributes(
            color: appColors.cosmicVoid.withOpacity(.4),
          ),
        ),
        hintText: hintText,
      ),
    );
  }
}
