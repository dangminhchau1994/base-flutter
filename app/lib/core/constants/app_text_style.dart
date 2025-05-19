import 'package:app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const double DEFAULT_LETTER_SPACING = 0.01;

class AppTextStyle {
  static TextStyle b16B24sp34 = TextStyle(
    letterSpacing: DEFAULT_LETTER_SPACING,
    fontFamily: FontFamily.manrope,
    fontSize: 34.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle h32B48 = TextStyle(
    letterSpacing: DEFAULT_LETTER_SPACING,
    fontFamily: FontFamily.manrope,
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle h22B32 = TextStyle(
    letterSpacing: DEFAULT_LETTER_SPACING,
    fontFamily: FontFamily.manrope,
    fontSize: 22.sp,
    fontWeight: FontWeight.w700,
  );
}
