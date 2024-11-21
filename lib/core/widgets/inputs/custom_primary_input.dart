import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/enums/input_type.dart';

class CustomPrimaryInput extends StatelessWidget {
  const CustomPrimaryInput({
    required this.label,
    required this.hintText,
    required this.controller,
    this.inputType = InputType.text,
    super.key,
  });
  final String label;
  final String hintText;
  final TextEditingController controller;
  final InputType inputType;

  @override
  Widget build(BuildContext context) {
    final appColors = AppColors.instance;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
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
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          cursorColor: appColors.majorelleBlue,
          obscureText: inputType == InputType.password,
          obscuringCharacter: '·',
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: appColors.cosmicVoid.withOpacity(.4),
              ),
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}
