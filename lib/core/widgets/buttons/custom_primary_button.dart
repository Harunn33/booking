import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';

class CustomPrimaryButton extends StatelessWidget {
  const CustomPrimaryButton({
    required this.text,
    this.onPressed,
    this.isLoading = false,
    super.key,
  });
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      height: 60.h,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(
                  color: AppColors.instance.majorelleBlue,
                ),
              )
            : Text(
                text,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.instance.white,
                    ),
              ),
      ),
    );
  }
}
