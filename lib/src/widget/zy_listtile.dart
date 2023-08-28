import 'package:flutter/material.dart';

import 'zy_border.dart';

///
///列表项的类型
///
enum ZyListTileType {
  ///四个方向标准
  around,

  ///三个方向标准，右边为箭头
  aroundArrow,

  ///四个方向小
  aroundSmall,

  ///垂直方向中
  denseMedium,

  ///垂直方向中，右边为箭头
  denseMediumArrow,

  ///垂直方向小
  denseSmall,

  ///垂直方向小，右边为箭头
  denseSmallArrow,

  ///右边为Switch之类的
  microSwitch,
}

///
///列表项
///
class ZyListTile extends StatelessWidget {
  ///多行文本显示的默认值
  static int defaultMultiline = 6;

  ///[type]对应的内边距
  static const _typeContentPaddingMap = {
    ZyListTileType.around: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    ZyListTileType.aroundArrow: EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 12),
    ZyListTileType.aroundSmall: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    ZyListTileType.denseMedium: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ZyListTileType.denseMediumArrow: EdgeInsets.only(left: 16, top: 12, bottom: 12, right: 12),
    ZyListTileType.denseSmall: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ZyListTileType.denseSmallArrow: EdgeInsets.only(left: 16, top: 8, bottom: 8, right: 12),
    ZyListTileType.microSwitch: EdgeInsets.only(left: 16, top: 4, bottom: 4, right: 6),
  };

  ///[type]对应的垂直间距
  static const _typeVerticalGapMap = {
    ZyListTileType.around: 2.0,
    ZyListTileType.aroundArrow: 2.0,
    ZyListTileType.aroundSmall: 2.0,
    ZyListTileType.denseMedium: 2.0,
    ZyListTileType.denseMediumArrow: 2.0,
    ZyListTileType.denseSmall: 2.0,
    ZyListTileType.denseSmallArrow: 2.0,
    ZyListTileType.microSwitch: 2.0,
  };

  ///内边距类型
  final ZyListTileType type;

  ///内边距的值，不为null时覆盖[type]对应的值
  final EdgeInsets contentPadding;

  ///子部件垂直间距
  final double verticalGap;

  ///子部件水平间距
  final double horizontalGap;

  ///形状约束
  final ShapeBorder? shape;

  ///有无边框，[shape]为null时生效
  final bool border;

  ///边框大小，[shape]为null且[border]为true时生效
  final double? borderSize;

  ///边框颜色，[shape]为null且[border]为true时生效
  final Color? borderColor;

  ///边框圆角，[shape]为null时生效
  final BorderRadius? radius;

  ///背景颜色
  final Color? tileColor;

  ///头部子部件
  final Widget? leading;

  ///第一行左边的文字
  final String? titleL;

  ///第一行中间的文字
  final String? titleC;

  ///第一行右边的文字
  final String? titleR;

  ///第一行左边的文字样式
  final TextStyle? titleStyleL;

  ///第一行中间的文字样式
  final TextStyle? titleStyleC;

  ///第一行右边的文字样式
  final TextStyle? titleStyleR;

  ///第一行是否支持多行文本
  final bool titleMultiline;

  ///第二行左边的文字
  final String? subTitleL;

  ///第二行中间的文字
  final String? subTitleC;

  ///第二行右边的文字
  final String? subTitleR;

  ///第二行左边的文字样式
  final TextStyle? subTitleStyleL;

  ///第二行中间的文字样式
  final TextStyle? subTitleStyleC;

  ///第二行右边的文字样式
  final TextStyle? subTitleStyleR;

  ///第二行是否支持多行文本
  final bool subTitleMultiline;

  ///第一行左边的子部件
  final Widget? childL;

  ///第一行中间的子部件
  final Widget? childC;

  ///第一行右边的子部件
  final Widget? childR;

  ///第二行左边的子部件
  final Widget? subChildL;

  ///第二行中间的子部件
  final Widget? subChildC;

  ///第二行右边的子部件
  final Widget? subChildR;

  ///尾部子部件
  final Widget? trailing;

  ///第三行字部件列表
  final List<Widget> threeChildren;

  ///顶部子部件列表
  final List<Widget> topChildren;

  ///底部子部件列表
  final List<Widget> bottomChildren;

  ///点击处理
  final VoidCallback? onPressed;

  ///长按处理
  final VoidCallback? onLongPressed;

  ZyListTile({
    super.key,
    required this.type,
    EdgeInsets? contentPadding,
    double? verticalGap,
    double? horizontalGap,
    this.shape,
    this.border = false,
    this.borderSize,
    this.borderColor,
    this.radius,
    this.tileColor,
    this.leading,
    this.titleL,
    this.titleC,
    this.titleR,
    this.titleStyleL,
    this.titleStyleC,
    this.titleStyleR,
    this.titleMultiline = false,
    this.subTitleL,
    this.subTitleC,
    this.subTitleR,
    this.subTitleStyleL,
    this.subTitleStyleC,
    this.subTitleStyleR,
    this.subTitleMultiline = false,
    this.childL,
    this.childC,
    this.childR,
    this.subChildL,
    this.subChildC,
    this.subChildR,
    this.trailing,
    this.threeChildren = const [],
    this.topChildren = const [],
    this.bottomChildren = const [],
    this.onPressed,
    this.onLongPressed,
  })  : contentPadding = contentPadding ?? _typeContentPaddingMap[type]!,
        verticalGap = verticalGap ?? _typeVerticalGapMap[type]!,
        horizontalGap = horizontalGap ?? (type == ZyListTileType.aroundSmall ? 8 : 16);

  bool get hasChild => titleL != null || titleC != null || titleR != null || childL != null || childC != null || childR != null;

  bool get hasSubChild => subTitleL != null || subTitleC != null || subTitleR != null || subChildL != null || subChildC != null || subChildR != null;

  bool get hasChildFix => titleL != null || titleR != null || childL != null || childR != null;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return InkWell(
      onTap: onPressed,
      onLongPress: onLongPressed,
      child: Ink(
        padding: contentPadding,
        decoration: ShapeDecoration(
          color: tileColor,
          shape: shape ?? ZyBorder.getRoundedRectangleBorderThin(themeData, border, borderSize: borderSize, borderColor: borderColor, borderRadius: radius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ...topChildren,
            Row(
              children: [
                leading ?? const SizedBox(),
                leading != null && (hasChild || hasSubChild) ? SizedBox(width: horizontalGap) : const SizedBox(),
                Expanded(
                  child: Column(
                    children: [
                      hasChild
                          ? Row(
                              children: [
                                titleL == null && childL == null ? const SizedBox() : Expanded(child: childL ?? Text(titleL ?? '', style: titleStyleL ?? themeData.textTheme.titleMedium, maxLines: titleMultiline ? defaultMultiline : 1, overflow: TextOverflow.ellipsis)),
                                (titleL == null && childL == null) || (titleC == null && childC == null) ? const SizedBox() : SizedBox(width: horizontalGap),
                                titleC == null && childC == null ? const SizedBox() : _buildChildC(themeData),
                                (titleR == null && childR == null) || (titleC == null && childC == null) ? const SizedBox() : SizedBox(width: horizontalGap),
                                titleR == null && childR == null ? const SizedBox() : Expanded(child: childR ?? Text(titleR ?? '', style: titleStyleR ?? themeData.textTheme.titleMedium, maxLines: titleMultiline ? defaultMultiline : 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.right)),
                              ],
                            )
                          : const SizedBox(),
                      hasChild && hasSubChild ? SizedBox(height: verticalGap) : const SizedBox(),
                      hasSubChild
                          ? Row(
                              children: [
                                subTitleL == null && subChildL == null ? const SizedBox() : Expanded(child: subChildL ?? Text(subTitleL ?? '', style: subTitleStyleL ?? themeData.textTheme.bodySmall, maxLines: subTitleMultiline ? defaultMultiline : 1, overflow: TextOverflow.ellipsis)),
                                (subTitleL == null && subChildL == null) || (subTitleC == null && subChildC == null) ? const SizedBox() : SizedBox(width: horizontalGap),
                                subTitleC == null && subChildC == null ? const SizedBox() : _buildSubChildC(themeData),
                                (subTitleR == null && subChildR == null) || (subTitleC == null && subChildC == null) ? const SizedBox() : SizedBox(width: horizontalGap),
                                subTitleR == null && subChildR == null ? const SizedBox() : Expanded(child: subChildR ?? Text(subTitleR ?? '', style: subTitleStyleR ?? themeData.textTheme.bodySmall, maxLines: subTitleMultiline ? defaultMultiline : 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.right)),
                              ],
                            )
                          : const SizedBox(),
                      hasSubChild && threeChildren.isNotEmpty ? SizedBox(height: verticalGap) : const SizedBox(),
                      ...threeChildren,
                    ],
                  ),
                ),
                trailing != null && (hasChild || hasSubChild) ? SizedBox(width: horizontalGap) : const SizedBox(),
                trailing ?? const SizedBox(),
              ],
            ),
            ...bottomChildren,
          ],
        ),
      ),
    );
  }

  Widget _buildChildC(ThemeData themeData) {
    if (titleL == null && childL == null && titleR == null && childR == null) {
      return Expanded(child: childC ?? Text(titleC ?? '', style: titleStyleC ?? themeData.textTheme.titleMedium, maxLines: titleMultiline ? defaultMultiline : 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center));
    } else {
      return childC ?? Text(titleC ?? '', style: titleStyleC ?? themeData.textTheme.titleMedium);
    }
  }

  Widget _buildSubChildC(ThemeData themeData) {
    if (subTitleL == null && subChildL == null && subTitleR == null && subChildR == null) {
      return Expanded(child: subChildC ?? Text(subTitleC ?? '', style: subTitleStyleC ?? themeData.textTheme.bodySmall, maxLines: subTitleMultiline ? defaultMultiline : 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center));
    } else {
      return subChildC ?? Text(subTitleC ?? '', style: subTitleStyleC ?? themeData.textTheme.bodySmall);
    }
  }
}
