import 'package:flutter/material.dart';
import 'package:piton_test_case/core/constants/app_text_style.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.text,
    super.key,
    this.onPressed,
    this.textStyle,
  });
  final VoidCallback? onPressed;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyle ?? AppTextStyle.instance.manropeSemiBold16,
      ),
    );
  }
}
