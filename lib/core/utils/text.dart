// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '/core/utils/colors.dart'; 
enum FontEnum {
  thin,
  extraLight,
  light,
  regular,
  medium,
  semiBold,
  bold,
  extraBold,
  black,
}

class CustomText {
  static const Color textColor = ColorRes.textColor;
  static const Color secondaryTextColor = ColorRes.secondaryText;
  static double xxLargeSize = 30;
  static double xLargeSize = 26;
  static double largeSize = 22;
  static double mediumSize = 18;
  static double smallSize = 16;
  static double xSmallSize = 14;
  static double xxSmallSize = 12;

  static TextStyle xxLarge({
    Color color = textColor,
    FontEnum fontEnum = FontEnum.medium,
    double? height,
  }) {
    return GoogleFonts.baloo2(
      color: color,
      fontSize: xxLargeSize,
      height: height,
      fontWeight: getFontWeight(fontEnum),
    );
  }

  static TextStyle xLarge({
    Color color = textColor,
    FontEnum fontEnum = FontEnum.medium,
    double? height,
  }) {
    return GoogleFonts.baloo2(
      color: color,
      fontSize: xLargeSize,
      height: height,
      fontWeight: getFontWeight(fontEnum),
    );
  }

  static TextStyle large({
    Color color = textColor,
    FontEnum fontEnum = FontEnum.medium,
    double? height,
  }) {
    return GoogleFonts.baloo2(
      color: color,
      fontSize: largeSize,
      height: height,
      fontWeight: getFontWeight(fontEnum),
    );
  }

  static TextStyle medium({
    Color color = secondaryTextColor,
    FontEnum fontEnum = FontEnum.medium,
    double? height,
  }) {
    return GoogleFonts.baloo2(
      color: color,
      fontSize: mediumSize,
      height: height,
      fontWeight: getFontWeight(fontEnum),
    );
  }

  static TextStyle small({
    Color color = secondaryTextColor,
    FontEnum fontEnum = FontEnum.medium,
    double? height,
  }) {
    return GoogleFonts.baloo2(
      color: color,
      fontSize: smallSize,
      height: height,
      fontWeight: getFontWeight(fontEnum),
    );
  }

  static TextStyle xSmall({
    Color color = secondaryTextColor,
    FontEnum fontEnum = FontEnum.medium,
    double? height,
  }) {
    return GoogleFonts.baloo2(
      color: color,
      fontSize: xSmallSize,
      height: height,
      fontWeight: getFontWeight(fontEnum),
    );
  }

  static TextStyle xxSmall({
    Color color = secondaryTextColor,
    FontEnum fontEnum = FontEnum.medium,
    double? height,
  }) {
    return GoogleFonts.baloo2(
      color: color,
      fontSize: xxSmallSize,
      height: height,
      fontWeight: getFontWeight(fontEnum),
    );
  }
}

FontWeight getFontWeight(FontEnum fontWeight) {
  switch (fontWeight) {
    case FontEnum.thin:
      return FontWeight.w100;
    case FontEnum.extraLight:
      return FontWeight.w200;
    case FontEnum.light:
      return FontWeight.w300;
    case FontEnum.regular:
      return FontWeight.w400;
    case FontEnum.medium:
      return FontWeight.w500;
    case FontEnum.semiBold:
      return FontWeight.w600;
    case FontEnum.bold:
      return FontWeight.w700;
    case FontEnum.extraBold:
      return FontWeight.w800;
    case FontEnum.black:
      return FontWeight.w900;
    default:
      return FontWeight.w500;
  }
}
