import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/constants/app_text_style.dart';
import 'package:piton_test_case/core/enums/input_type.dart';

class CustomPrimaryInput extends StatelessWidget {
  const CustomPrimaryInput({
    required this.label,
    required this.hintText,
    required this.controller,
    this.inputType = InputType.text,
    this.textInputAction = TextInputAction.next,
    super.key,
  });
  final String label;
  final String hintText;
  final TextEditingController controller;
  final InputType inputType;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();
    final appColors = AppColors.instance;
    final appTextStyle = AppTextStyle.instance;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: appTextStyle.manropeSemiBold16.copyWith(
            color: appColors.cosmicVoid,
          ),
        ),
        10.verticalSpace,
        TextFormField(
          validator: (value) => inputType.getValidator(
            value,
            context: context,
          ),
          controller: controller,
          textInputAction: textInputAction,
          focusNode: focusNode,
          onTapOutside: (event) => focusNode.unfocus(),
          cursorColor: appColors.majorelleBlue,
          obscureText: inputType == InputType.password,
          obscuringCharacter: '·',
          style: appTextStyle.manropeRegular16,
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}
