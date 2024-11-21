import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/constants/app_paddings.dart';
import 'package:piton_test_case/core/enums/app_fonts.dart';
import 'package:piton_test_case/core/extensions/border_radius_ext.dart';

final class CustomTheme {
  CustomTheme._();

  static final CustomTheme instance = CustomTheme._();

  final ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.instance.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColors.instance.cosmicVoid,
      ),
    ),
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: AppColors.instance.cosmicVoid,
    ),
    splashFactory: NoSplash.splashFactory,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily: AppFonts.manropeBold.value,
        fontSize: 20.sp,
        color: AppColors.instance.cosmicVoid,
      ),
      titleMedium: TextStyle(
        fontFamily: AppFonts.manropeSemiBold.value,
        fontSize: 16.sp,
        color: AppColors.instance.majorelleBlue,
      ),
      labelMedium: TextStyle(
        fontFamily: AppFonts.manropeRegular.value,
        fontSize: 16.sp,
        color: AppColors.instance.cosmicVoid,
      ),
      labelSmall: TextStyle(
        fontFamily: AppFonts.manropeBold.value,
        fontSize: 12.sp,
        color: AppColors.instance.majorelleBlue,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      hintStyle: TextStyle(
        fontFamily: AppFonts.manropeRegular.value,
        fontSize: 16.sp,
        color: AppColors.instance.cosmicVoid.withOpacity(.4),
      ),
      border: OutlineInputBorder(
        borderRadius: 4.radiusAll,
        borderSide: BorderSide.none,
      ),
      fillColor: AppColors.instance.maWhite,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: AppPaddings.instance.generalSymetric,
        backgroundColor: AppColors.instance.entanRed,
        foregroundColor: AppColors.instance.white,
        shape: RoundedRectangleBorder(
          borderRadius: 4.radiusAll,
        ),
      ),
    ),
  );
}
