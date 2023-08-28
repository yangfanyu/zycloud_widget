import 'package:flutter/material.dart';

///
///边框工具
///
class ZyBorder {
  ///获取细的矩形框浅色边框
  static RoundedRectangleBorder getRoundedRectangleBorderThin(ThemeData themeData, bool border, {double? borderSize, Color? borderColor, BorderRadius? borderRadius, double? borderAlign}) {
    return RoundedRectangleBorder(
      side: border
          ? BorderSide(
              width: borderSize ?? getBorderSizeThin(themeData),
              color: borderColor ?? getBorderColorThin(themeData),
              strokeAlign: borderAlign ?? BorderSide.strokeAlignInside,
            )
          : BorderSide.none,
      borderRadius: borderRadius ?? BorderRadius.zero,
    );
  }

  ///获取粗的矩形框深色边框
  static RoundedRectangleBorder getRoundedRectangleBorderBold(ThemeData themeData, bool border, {double? borderSize, Color? borderColor, BorderRadius? borderRadius, double? borderAlign}) {
    return RoundedRectangleBorder(
      side: border
          ? BorderSide(
              width: borderSize ?? getBorderSizeBold(themeData),
              color: borderColor ?? getBorderColorBold(themeData),
              strokeAlign: borderAlign ?? BorderSide.strokeAlignInside,
            )
          : BorderSide.none,
      borderRadius: borderRadius ?? BorderRadius.zero,
    );
  }

  ///获取细的输入框浅色边框
  static OutlineInputBorder getOutlineInputBorderThin(ThemeData themeData, bool border, {double? borderSize, Color? borderColor, BorderRadius? borderRadius, double? borderAlign}) {
    return OutlineInputBorder(
      borderSide: border
          ? BorderSide(
              width: borderSize ?? getBorderSizeThin(themeData),
              color: borderColor ?? getBorderColorThin(themeData),
              strokeAlign: borderAlign ?? BorderSide.strokeAlignInside,
            )
          : BorderSide.none,
      borderRadius: borderRadius ?? BorderRadius.zero,
    );
  }

  ///获取粗的输入框深色边框
  static OutlineInputBorder getOutlineInputBorderBold(ThemeData themeData, bool border, {double? borderSize, Color? borderColor, BorderRadius? borderRadius, double? borderAlign}) {
    return OutlineInputBorder(
      borderSide: border
          ? BorderSide(
              width: borderSize ?? getBorderSizeBold(themeData),
              color: borderColor ?? getBorderColorBold(themeData),
              strokeAlign: borderAlign ?? BorderSide.strokeAlignInside,
            )
          : BorderSide.none,
      borderRadius: borderRadius ?? BorderRadius.zero,
    );
  }

  ///细边框尺寸
  static double getBorderSizeThin(ThemeData themeData) => themeData.dividerTheme.thickness ?? 0.5;

  ///粗边框尺寸
  static double getBorderSizeBold(ThemeData themeData) => themeData.inputDecorationTheme.outlineBorder?.width ?? 1;

  ///细边框颜色
  static Color getBorderColorThin(ThemeData themeData) => themeData.dividerTheme.color ?? themeData.dividerColor;

  ///粗边框颜色
  static Color getBorderColorBold(ThemeData themeData) => themeData.inputDecorationTheme.outlineBorder?.color ?? themeData.dividerColor;
}
