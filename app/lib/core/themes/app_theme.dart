import 'package:app/core/themes/my_color.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

final myDarkTheme = ThemeData.dark().copyWith(
  textTheme: Typography().white.apply(
        fontFamily: FontFamily.manrope,
        bodyColor: ColorName.blue,
        displayColor: ColorName.blue,
        decorationColor: ColorName.blue,
      ),
  primaryTextTheme: Typography().white.apply(
        fontFamily: FontFamily.manrope,
        bodyColor: ColorName.blue,
        displayColor: ColorName.blue,
        decorationColor: ColorName.blue,
      ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      minimumSize: Size.zero,
      padding: EdgeInsets.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
  ),
  extensions: [
    MyColors(
      btnTextIcDisabledSolid: ColorName.blue,
      btnTextIcSolid: ColorName.blue400,
      btnTextIcTonal: ColorName.blue500,
    )
  ],
);

final myLightTheme = ThemeData.light().copyWith(
  textTheme: Typography().white.apply(
        fontFamily: FontFamily.manrope,
        bodyColor: ColorName.blue,
        displayColor: ColorName.blue,
        decorationColor: ColorName.blue,
      ),
  primaryTextTheme: Typography().white.apply(
        fontFamily: FontFamily.manrope,
        bodyColor: ColorName.blue,
        displayColor: ColorName.blue,
        decorationColor: ColorName.blue,
      ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      minimumSize: Size.zero,
      padding: EdgeInsets.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
  ),
  extensions: [
    MyColors(
      btnTextIcDisabledSolid: ColorName.blue,
      btnTextIcSolid: ColorName.blue400,
      btnTextIcTonal: ColorName.blue500,
    )
  ],
);
