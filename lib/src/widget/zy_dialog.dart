import 'package:flutter/material.dart';

import '../launch/zy_app.dart';

///
///对话框
///
class ZyDialog extends StatelessWidget {
  ///标题文字
  final String? title;

  ///标题部件
  final Widget? titleWidget;

  ///内容文字
  final String body;

  ///内容部件
  final Widget? bodyWidget;

  ///左边按钮的文字
  final String leftText;

  ///右边按钮的文字
  final String rightText;

  ///左边按钮的文字颜色
  final Color? leftColor;

  ///右边按钮的文字颜色
  final Color? rightColor;

  ///是否只有右边的按钮
  final bool rightOnly;

  ///内容溢出时可否滚动
  final bool scrollable;

  ///圆角半径
  final BorderRadius radius;

  ///内边距离
  final EdgeInsets padding;

  ///按钮高度
  final double btnHeight;

  const ZyDialog({
    super.key,
    this.title,
    this.titleWidget,
    this.body = 'Alert',
    this.bodyWidget,
    this.leftText = 'Cancel',
    this.rightText = 'Sure',
    this.leftColor,
    this.rightColor,
    this.rightOnly = false,
    this.scrollable = true,
    this.radius = const BorderRadius.all(Radius.circular(8)),
    this.padding = const EdgeInsets.all(16),
    this.btnHeight = 52,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final boxPadding = padding.copyWith(top: title == null ? padding.vertical : padding.top, bottom: title == null ? padding.vertical : padding.bottom * 1.5);
    final textStyle = themeData.textTheme.titleMedium;
    return PopScope(
      canPop: false, //拦截返回按钮
      child: SafeArea(
        child: AlertDialog(
          clipBehavior: Clip.hardEdge,
          scrollable: scrollable,
          backgroundColor: themeData.cardColor,
          shape: RoundedRectangleBorder(borderRadius: radius),
          titlePadding: boxPadding.copyWith(bottom: 0),
          contentPadding: boxPadding,
          buttonPadding: EdgeInsets.zero,
          title: titleWidget ?? (title == null ? null : Text(title ?? '', textAlign: TextAlign.center, style: textStyle?.copyWith(fontWeight: FontWeight.bold))),
          content: bodyWidget ?? Text(body, textAlign: TextAlign.center, style: textStyle),
          actions: [
            const Divider(),
            SizedBox(
              height: btnHeight,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  rightOnly
                      ? const SizedBox()
                      : Expanded(
                          child: MaterialButton(
                            padding: EdgeInsets.zero,
                            child: Text(leftText, style: textStyle?.copyWith(color: leftColor)),
                            onPressed: () => ZyApp.pop(false),
                          ),
                        ),
                  rightOnly ? const SizedBox() : const VerticalDivider(),
                  Expanded(
                    child: MaterialButton(
                      padding: EdgeInsets.zero,
                      child: Text(rightText, style: textStyle?.copyWith(color: rightColor)),
                      onPressed: () => ZyApp.pop(true),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
