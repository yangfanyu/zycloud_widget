import 'package:flutter/material.dart';

///
///徽章位置
///
enum ZyBadgeAlign {
  ///左上角
  topLeft,

  ///垂直居中、水平居左
  centerLeft,

  ///正中心
  center,

  ///垂直居中、水平居右
  centerRight,

  ///右上角
  topRight,
}

///
///徽章
///
class ZyBadge extends StatelessWidget {
  ///外边距-小
  static const smallMargin = 16.0;

  ///外边距-中
  static const middleMargin = 32.0;

  ///外边距-大
  static const largeMargin = 48.0;

  ///外边距-超大
  static const hugeMargin = 64.0;

  ///徽章依附的控件
  final Widget? icon;

  ///徽章相对于[icon]的位置
  final ZyBadgeAlign align;

  ///徽章相对于[icon]的距离
  final double margin;

  ///徽章在[count]>0时显示数字或小红点
  final int count;

  ///徽章尺寸大小
  final double size;

  ///徽章背景颜色
  final Color color;

  ///徽章是否深色
  final bool darkMode;

  ///徽章深色背景，[darkMode]为true时生效
  final Color darkColor;

  ///徽章里面的数字大小
  final double textSize;

  ///徽章里面的数字颜色
  final Color textColor;

  ///在[count]>0且[dotOnly]为true时显示为小红点
  final bool dotOnly;

  ///在[count]<=0时的显示的占位小部件
  final Widget? zeroIcon;

  const ZyBadge({
    super.key,
    this.icon,
    this.align = ZyBadgeAlign.topRight,
    this.margin = smallMargin,
    required this.count,
    this.size = 16,
    this.color = Colors.red,
    this.darkMode = false,
    this.darkColor = const Color(0xFF909090),
    this.textSize = 10,
    this.textColor = Colors.white,
    this.dotOnly = false,
    this.zeroIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [icon ?? const SizedBox(), _buildBadge(context)],
    );
  }

  Widget _buildBadge(BuildContext context) {
    if (count > 0) {
      if (dotOnly) {
        return Positioned(
          top: (align == ZyBadgeAlign.centerLeft || align == ZyBadgeAlign.center || align == ZyBadgeAlign.centerRight) ? null : -margin / 8,
          left: (align == ZyBadgeAlign.topLeft || align == ZyBadgeAlign.centerLeft) ? -margin / 4 : null,
          right: (align == ZyBadgeAlign.topRight || align == ZyBadgeAlign.centerRight) ? -margin / 4 : null,
          child: Container(
            width: size / 2,
            height: size / 2,
            decoration: BoxDecoration(shape: BoxShape.circle, color: darkMode ? darkColor : color),
          ),
        );
      } else {
        return Positioned(
          top: (align == ZyBadgeAlign.centerLeft || align == ZyBadgeAlign.center || align == ZyBadgeAlign.centerRight) ? null : -margin / 4,
          left: (align == ZyBadgeAlign.topLeft || align == ZyBadgeAlign.centerLeft) ? -margin / 2 : null,
          right: (align == ZyBadgeAlign.topRight || align == ZyBadgeAlign.centerRight) ? -margin / 2 : null,
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(shape: BoxShape.circle, color: darkMode ? darkColor : color),
            alignment: Alignment.center,
            child: Text(count > 99 ? '...' : '$count', style: TextStyle(color: textColor, fontSize: textSize, height: 1)),
          ),
        );
      }
    } else {
      return zeroIcon ?? const SizedBox();
    }
  }
}
