import 'package:flutter/material.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/constants/app_paddings.dart';
import 'package:piton_test_case/core/constants/app_text_style.dart';
import 'package:piton_test_case/core/extensions/border_radius_ext.dart';

final class CustomTheme {
  CustomTheme._();

  static final _appColors = AppColors.instance;
  static final _appPaddings = AppPaddings.instance;

  static final CustomTheme instance = CustomTheme._();

  final ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: _appColors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: _appColors.cosmicVoid,
      ),
      surfaceTintColor: Colors.transparent,
      titleTextStyle: AppTextStyle.instance.manropeBold20,
    ),
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: _appColors.cosmicVoid,
    ),
    splashFactory: NoSplash.splashFactory,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      hintStyle: AppTextStyle.instance.manropeRegular16.copyWith(
        color: _appColors.cosmicVoid.withOpacity(.4),
      ),
      border: OutlineInputBorder(
        borderRadius: 4.radiusAll,
        borderSide: BorderSide.none,
      ),
      fillColor: _appColors.maWhite,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: _appPaddings.generalSymetric,
        backgroundColor: _appColors.entanRed,
        foregroundColor: _appColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: 4.radiusAll,
        ),
      ),
    ),
  );
}
