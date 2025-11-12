import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../main.dart';

/// Make sure to not use these text's styles outside app's [MaterialApp.router] scope
/// cause they are using [navigator] that not initialized before that.
class AppTextStyleFactory {
  static String getFontFamily() => _getPrimaryFontFamily();

  static String _getPrimaryFontFamily() => 'Rubik';

  static TextLeadingDistribution get _leadingDistribution => TextLeadingDistribution.even;
  /// Pass [lineHeight] as defined in UI design(Figma)
  /// Pass [fontSize] same of the passed for text style that's using this font's height
  static double _calculateFontHeight(num fontSize, num lineHeight,) {
    return lineHeight.h / fontSize.sp;
  }


  static TextStyle get title2 => TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w500,
    fontFamily: getFontFamily(),
    height: _calculateFontHeight(22, 28),
    leadingDistribution: _leadingDistribution,
  );


  static TextStyle get headlineReg => TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
    height: _calculateFontHeight(17, 22),
    leadingDistribution: _leadingDistribution,
  );

  static TextStyle get body => TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
    height: _calculateFontHeight(15, 24),
    leadingDistribution: _leadingDistribution,
  );

  static TextStyle get caption1 => TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
    height: _calculateFontHeight(12, 16),
    leadingDistribution: _leadingDistribution,
  );

  static TextStyle get footNote => TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
    height: _calculateFontHeight(13, 18),
    leadingDistribution: _leadingDistribution,
  );
}

enum FontFamilyType { primary, secondary }