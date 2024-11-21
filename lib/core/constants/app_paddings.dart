import 'package:flutter/material.dart';
import 'package:piton_test_case/core/extensions/padding_ext.dart';

final class AppPaddings {
  AppPaddings._();

  static final AppPaddings _instance = AppPaddings._();

  static AppPaddings get instance => _instance;
  EdgeInsets get generalSymetric => horizontal + vertical;
  EdgeInsets get horizontal => 20.padHorizontal;
  EdgeInsets get vertical => 10.padVertical;
  EdgeInsets get all => 16.padAll;
}
