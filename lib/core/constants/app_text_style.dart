import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/enums/app_fonts.dart';

final class AppTextStyle {
  AppTextStyle._();

  static final AppTextStyle _instance = AppTextStyle._();

  static AppTextStyle get instance => _instance;

  final AppColors _appColors = AppColors.instance;

  TextStyle get manropeBold20 => TextStyle(
        fontFamily: AppFonts.manropeBold.value,
        fontSize: 20.sp,
        color: _appColors.cosmicVoid,
      );

  TextStyle get manropeSemiBold16 => TextStyle(
        fontFamily: AppFonts.manropeSemiBold.value,
        fontSize: 16.sp,
        color: _appColors.majorelleBlue,
      );

  TextStyle get manropeSemiBold12 => TextStyle(
        fontFamily: AppFonts.manropeSemiBold.value,
        fontSize: 12.sp,
        color: _appColors.majorelleBlue,
      );

  TextStyle get manropeRegular16 => TextStyle(
        fontFamily: AppFonts.manropeRegular.value,
        fontSize: 16.sp,
        color: _appColors.cosmicVoid,
      );

  TextStyle get manropeBold12 => TextStyle(
        fontFamily: AppFonts.manropeBold.value,
        fontSize: 12.sp,
        color: _appColors.majorelleBlue,
      );

  TextStyle get manropeBold16 => TextStyle(
        fontFamily: AppFonts.manropeBold.value,
        fontSize: 16.sp,
        color: _appColors.majorelleBlue,
      );

  TextStyle get manropeSemiBold10 => TextStyle(
        fontFamily: AppFonts.manropeSemiBold.value,
        fontSize: 10.sp,
        color: _appColors.cosmicVoid,
      );
}
