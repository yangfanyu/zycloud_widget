import 'dart:math' as math;
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

///
///头像尺寸类型
///
enum ZyAvatorType {
  ///巨大的
  huge,

  ///超大的
  plus,

  ///大的
  large,

  ///中等的
  medium,

  ///小的
  small,

  ///超小的
  mini,

  ///微小的
  micro,
}

///
///头像
///
class ZyAvator extends StatelessWidget {
  ///是否用矩形头像的全局默认值
  static bool defaultRectBg = true;

  ///是否用灰色背景的全局默认值
  static bool defaultGreyBg = true;

  ///头像半径-巨大
  static const hugeTypeRadius = 38.0;

  ///头像半径-超大
  static const plusTypeRadius = 30.0;

  ///头像半径-大
  static const largeTypeRadius = 26.0;

  ///头像半径-中
  static const mediumTypeRadius = 22.0;

  ///头像半径-小
  static const smallTypeRadius = 20.0;

  ///头像半径-超小
  static const miniTypeRadius = 16.0;

  ///头像半径-微小
  static const microTypeRadius = 10.0;

  ///父级icon尺寸为半径的倍数
  static const _emptyIconSizeRateFather = 1.5;

  ///子级icon尺寸为半径的倍数
  static const _emptyIconSizeRateChild = 1.8;

  ///[type]对应的头像尺寸半径
  static const _typeRadiusMap = {
    ZyAvatorType.huge: hugeTypeRadius,
    ZyAvatorType.plus: plusTypeRadius,
    ZyAvatorType.large: largeTypeRadius,
    ZyAvatorType.medium: mediumTypeRadius,
    ZyAvatorType.small: smallTypeRadius,
    ZyAvatorType.mini: miniTypeRadius,
    ZyAvatorType.micro: microTypeRadius,
  };

  ///[type]对应的头像圆角半径
  static const _typeCornerMap = {
    ZyAvatorType.huge: 4.0,
    ZyAvatorType.plus: 4.0,
    ZyAvatorType.large: 4.0,
    ZyAvatorType.medium: 4.0,
    ZyAvatorType.small: 4.0,
    ZyAvatorType.mini: 3.0,
    ZyAvatorType.micro: 2.0,
  };

  ///头像尺寸类型
  final ZyAvatorType type;

  ///头像尺寸半径
  final double radius;

  ///头像圆角半径
  final double corner;

  ///是否用矩形头像
  final bool rectBg;

  ///是否用灰色背景
  final bool greyBg;

  ///是否为单张图片
  final bool single;

  ///单张图片的url
  final String? url;

  ///多张图片的url列表
  final List<String>? urlList;

  ///图片加载失败的图标
  final IconData? errIcon;

  ///[child]不为null时使用子控件模式
  final Widget? child;

  ///[childColor]为子控件模式的背景色
  final Color? childColor;

  ///对图片的链接进行处理的函数
  final String Function(String val) onFormatUrl;

  ZyAvator({
    super.key,
    this.type = ZyAvatorType.small,
    double? radius,
    double? corner,
    bool? rectBg,
    bool? greyBg,
    this.single = true,
    this.url,
    this.urlList,
    this.errIcon,
    this.child,
    this.childColor,
    required this.onFormatUrl,
  })  : radius = radius ?? _typeRadiusMap[type]!,
        corner = corner ?? _typeCornerMap[type]!,
        rectBg = rectBg ?? defaultRectBg,
        greyBg = greyBg ?? defaultGreyBg;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final lightColor = greyBg ? (Colors.grey[400] ?? themeData.primaryColorLight) : themeData.primaryColorLight;
    final darkColor = greyBg ? (Colors.grey[700] ?? themeData.primaryColorDark) : themeData.primaryColorDark;
    final fBoxSize = radius * 2;
    final fBoxRadius = rectBg ? corner : fBoxSize;
    final fBackColor = themeData.brightness == Brightness.light ? lightColor : darkColor;
    final fIconColor = themeData.brightness == Brightness.light ? darkColor : lightColor;
    final fIconSize = radius * ZyAvator._emptyIconSizeRateFather;
    if (child == null) {
      return Container(
        width: fBoxSize,
        height: fBoxSize,
        clipBehavior: Clip.hardEdge,
        decoration: ShapeDecoration(
          color: fBackColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(fBoxRadius))),
        ),
        child: single ? _buildAvatorItem(url, fIconColor, fIconSize) : _buildAvatorGroup(fBoxSize, fBackColor, fIconColor, fIconSize),
      );
    } else {
      return Container(
        width: fBoxSize,
        height: fBoxSize,
        clipBehavior: Clip.hardEdge,
        decoration: ShapeDecoration(
          color: childColor ?? fBackColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(fBoxRadius))),
        ),
        child: child,
      );
    }
  }

  Widget _buildAvatorItem(String? url, Color iconColor, double iconSize) {
    return _isValidUrl(url)
        ? ExtendedImage.network(
            onFormatUrl(url!),
            fit: BoxFit.cover,
            loadStateChanged: (imageState) {
              switch (imageState.extendedImageLoadState) {
                case LoadState.loading:
                case LoadState.failed:
                  return Icon(errIcon ?? Icons.person, color: iconColor, size: iconSize);
                case LoadState.completed:
                  return null;
              }
            },
          )
        : Icon(errIcon ?? Icons.person, color: iconColor, size: iconSize);
  }

  Widget _buildAvatorGroup(double fBoxSize, Color fBackColor, Color fIconColor, double fIconSize) {
    if (urlList == null || urlList!.isEmpty) {
      return Icon(errIcon ?? Icons.people_alt, color: fIconColor, size: fIconSize);
    }
    final backColor = fIconColor;
    final iconColor = fBackColor;
    final count = math.min(urlList!.length, 9);
    final children = <Widget>[];
    if (rectBg) {
      final column = count <= 4 ? 2 : 3;
      final margin = corner / 2;
      final itemSize = (fBoxSize - column * margin - margin) / column;
      final offsetY = count <= 2 ? (fBoxSize - margin * 2 - itemSize) / 2 : 0;
      for (var i = 0; i < count; i++) {
        final urlItem = urlList![i % urlList!.length];
        final row = i ~/ column;
        final col = i % column;
        children.add(Positioned(
          top: row * (itemSize + margin) + margin + offsetY,
          left: col * (itemSize + margin) + margin,
          child: Container(
            width: itemSize,
            height: itemSize,
            color: backColor,
            child: _buildAvatorItem(urlItem, iconColor, itemSize * 0.5 * ZyAvator._emptyIconSizeRateChild),
          ),
        ));
      }
    } else {
      double childRadiusC = 0;
      double childRadiusS = 0;
      double startAngle = 0;
      switch (count) {
        case 1:
          childRadiusC = radius / 2;
          break;
        case 2:
          childRadiusS = radius / 2;
          break;
        case 3:
          childRadiusS = radius * math.cos(math.pi / 6) / (1 + math.cos(math.pi / 6));
          startAngle = math.pi / 2;
          break;
        case 4:
          childRadiusS = radius * (math.sqrt(2) - 1);
          break;
        default:
          childRadiusC = radius / 3;
          childRadiusS = radius / 3;
          if (count == 6) startAngle = math.pi / 2;
          break;
      }
      if (childRadiusC > 0) {
        final itemSize = childRadiusC * 2;
        final urlItem = urlList!.first;
        children.add(
          Positioned(
            left: radius - childRadiusC,
            bottom: radius - childRadiusC,
            child: Container(
              width: itemSize,
              height: itemSize,
              clipBehavior: Clip.hardEdge,
              decoration: ShapeDecoration(
                color: backColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(itemSize))),
              ),
              child: _buildAvatorItem(urlItem, iconColor, childRadiusC * ZyAvator._emptyIconSizeRateChild),
            ),
          ),
        );
      }
      if (childRadiusS > 0) {
        final stepAngle = math.pi * 2 / (childRadiusC > 0 ? count - 1 : count);
        final startIndex = childRadiusC > 0 ? 1 : 0;
        for (var i = startIndex; i < count; i++) {
          final itemSize = childRadiusS * 2;
          final urlItem = urlList![i % urlList!.length];
          children.add(
            Positioned(
              left: radius - childRadiusS + (radius - childRadiusS) * math.cos(startAngle + stepAngle * (i - startIndex)),
              bottom: radius - childRadiusS + (radius - childRadiusS) * math.sin(startAngle + stepAngle * (i - startIndex)),
              child: Container(
                width: itemSize,
                height: itemSize,
                clipBehavior: Clip.hardEdge,
                decoration: ShapeDecoration(
                  color: backColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(itemSize))),
                ),
                child: _buildAvatorItem(urlItem, iconColor, childRadiusS * ZyAvator._emptyIconSizeRateChild),
              ),
            ),
          );
        }
      }
    }
    return Stack(children: children);
  }

  bool _isValidUrl(String? val) {
    return val != null && val.trim() != '';
  }
}
