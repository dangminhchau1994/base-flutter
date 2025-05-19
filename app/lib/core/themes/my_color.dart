import 'package:flutter/material.dart';
import 'package:theme_extensions_builder_annotation/theme_extensions_builder_annotation.dart';
part 'my_color.g.theme.dart';

@themeExtensions
class MyColors extends ThemeExtension<MyColors> with _$ThemeExtensionMixin {
  final Color? btnTextIcSolid;
  final Color? btnTextIcPressedSolid;
  final Color? btnTextIcDisabledSolid;
  final Color? btnTextIcTonal;

  MyColors({
    this.btnTextIcSolid,
    this.btnTextIcPressedSolid,
    this.btnTextIcDisabledSolid,
    this.btnTextIcTonal,
  });
}
