import 'package:flutter/material.dart';

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
        style: textStyle ?? Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
