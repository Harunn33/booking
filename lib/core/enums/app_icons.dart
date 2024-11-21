import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum AppIcons {
  icLogo('ic_logo'),
  icTrFlag('ic_tr_flag'),
  icUsFlag('ic_us_flag');

  const AppIcons(this.value);
  final String value;

  SvgPicture get svg => SvgPicture.asset(
        'assets/icons/$value.svg',
      );
}

extension AppIconsExt on AppIcons {
  SvgPicture svgWithAttiributes({
    required Color color,
    double? height,
  }) {
    return SvgPicture.asset(
      'assets/icons/$value.svg',
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      height: height,
    );
  }
}
