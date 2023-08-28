import 'package:flutter/material.dart';

///
///等待框
///
class ZyLoading extends StatelessWidget {
  ///内容文字
  final String content;

  ///圆角半径
  final BorderRadius radius;

  ///内边距离
  final EdgeInsets padding;

  ///图标大小
  final double iconSize;

  const ZyLoading({
    super.key,
    this.content = 'Loading...',
    this.radius = const BorderRadius.all(Radius.circular(8)),
    this.padding = const EdgeInsets.all(8),
    this.iconSize = 50,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return WillPopScope(
      onWillPop: () async => false, //拦截返回按钮
      child: SafeArea(
        child: Center(
          child: Container(
            clipBehavior: Clip.hardEdge,
            padding: padding * 2,
            margin: padding * 4,
            constraints: BoxConstraints(minWidth: iconSize * 2.5, minHeight: iconSize * 2.5),
            decoration: ShapeDecoration(
              color: themeData.brightness == Brightness.light ? Colors.white : Colors.black,
              shape: RoundedRectangleBorder(borderRadius: radius),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: padding.vertical * 0.5),
                SizedBox(
                  width: iconSize,
                  height: iconSize,
                  child: CircularProgressIndicator(color: themeData.colorScheme.secondary),
                ),
                SizedBox(height: padding.vertical * 1.25),
                Text(
                  content,
                  style: themeData.textTheme.bodyLarge?.copyWith(color: themeData.brightness == Brightness.light ? Colors.black : Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
