import 'package:app/core/themes/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

double setWidth(double width) => ScreenUtil().setWidth(width);
double setHeight(double height) => ScreenUtil().setHeight(height);
double setBorderRadius(double radius) => ScreenUtil().radius(radius);

extension AppColor on BuildContext {
  MyColors get appColor => Theme.of(this).extension<MyColors>() ?? MyColors();
}

extension SizePadding on BuildContext {
  double get paddingW => 16.w;

  SizedBox get v0 => const SizedBox.shrink();

  SizedBox get v1 => SizedBox(height: setHeight(1));

  SizedBox get v2 => SizedBox(height: setHeight(2));

  SizedBox get v3 => SizedBox(height: setHeight(3));
}
