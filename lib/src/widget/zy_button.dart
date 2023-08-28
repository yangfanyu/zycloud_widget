import 'package:flutter/material.dart';

import 'zy_border.dart';

///
///按钮
///
class ZyButton extends StatelessWidget {
  ///按钮尺寸的默认值
  static const defaultSize = 40.0;

  ///表单中的按钮高度
  static const inFormHeight = 54.0;

  ///溢出裁剪方式
  final Clip clipBehavior;

  ///阴影大小
  final double elevation;

  ///最小宽度
  final double? minWidth;

  ///指定高度
  final double height;

  ///内边距离
  final EdgeInsets padding;

  ///形状约束
  final ShapeBorder? shape;

  ///有无边框，[shape]为null时生效
  final bool border;

  ///边框大小，[shape]为null且[border]为true时生效
  final double? borderSize;

  ///边框颜色，[shape]为null且[border]为true时生效
  final Color? borderColor;

  ///边框位置，[shape]为null且[border]为true时生效
  final double? borderAlign;

  ///边框圆角，[shape]为null时生效
  final BorderRadius? radius;

  ///第一行部件
  final Widget? child;

  ///第二行部件
  final Widget? subChild;

  ///第一二行部件的间距
  final double subSpace;

  ///第一二行部件的方向
  final bool subHorizontal;

  ///可以点击状态背景颜色
  final Color? color;

  ///可以点击状态文字颜色
  final Color? textColor;

  ///不可点击状态背景颜色
  final Color? disableColor;

  ///不可点击状态文字颜色
  final Color? disableTextColor;

  ///颜色的光暗模式
  final Brightness? colorBrightness;

  ///按钮文字的主题
  final ButtonTextTheme? textTheme;

  ///点击处理
  final VoidCallback? onPressed;

  ///长按处理
  final VoidCallback? onLongPressed;

  const ZyButton({
    super.key,
    this.clipBehavior = Clip.none,
    this.elevation = 0,
    this.minWidth,
    this.height = defaultSize,
    this.padding = EdgeInsets.zero,
    this.shape,
    this.border = false,
    this.borderSize,
    this.borderColor,
    this.borderAlign,
    this.radius,
    this.child,
    this.subChild,
    this.subSpace = 0,
    this.subHorizontal = false,
    this.color,
    this.textColor,
    this.disableColor,
    this.disableTextColor,
    this.colorBrightness,
    this.textTheme,
    this.onPressed,
    this.onLongPressed,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return MaterialButton(
      clipBehavior: clipBehavior,
      elevation: elevation,
      hoverElevation: elevation,
      focusElevation: elevation,
      disabledElevation: elevation,
      highlightElevation: elevation,
      minWidth: minWidth,
      height: height,
      padding: padding,
      shape: shape ??
          ZyBorder.getRoundedRectangleBorderThin(
            themeData,
            border,
            borderSize: borderSize,
            borderColor: borderColor,
            borderRadius: radius,
            borderAlign: borderAlign,
          ),
      color: color,
      textColor: textColor,
      disabledColor: disableColor,
      disabledTextColor: disableTextColor,
      colorBrightness: colorBrightness,
      textTheme: textTheme,
      onPressed: onPressed,
      onLongPress: onLongPressed,
      child: subChild == null
          ? child
          : (subHorizontal
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [child ?? const SizedBox(), SizedBox(width: subSpace), subChild ?? const SizedBox()],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [child ?? const SizedBox(), SizedBox(height: subSpace), subChild ?? const SizedBox()],
                )),
    );
  }
}
