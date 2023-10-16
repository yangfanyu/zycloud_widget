import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

///
///二维码显示
///
class ZyQrcode extends StatelessWidget {
  ///标题
  final String title;

  ///数据
  final String data;

  ///图标
  final Icon icon;

  ///昵称
  final String nick;

  ///提示
  final String hint;

  ///LOGO
  final Widget? logo;

  ///圆角半径
  final double boxRadius;

  ///底部偏移
  final double boxOffsetB;

  ///内边距离
  final EdgeInsets boxPadding;

  ///二维码：容错级别（0: Medium, 1: Low, 2: High, 3: Quartile）
  final int codeErrorCorrectLevel;

  ///二维码：内容颜色
  final Color codeElementColor;

  ///二维码：圆滑模式
  final bool codeRoundEdges;

  const ZyQrcode({
    super.key,
    required this.title,
    required this.data,
    required this.icon,
    required this.nick,
    required this.hint,
    this.logo,
    this.boxRadius = 10,
    this.boxOffsetB = 16,
    this.boxPadding = const EdgeInsets.only(top: 50, bottom: 40, left: 20, right: 20),
    this.codeErrorCorrectLevel = 3,
    this.codeElementColor = Colors.black,
    this.codeRoundEdges = true,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final queryData = MediaQuery.of(context);
    final backgroundColor = themeData.brightness == Brightness.light ? Colors.grey[200] : null; //增强light状态white气泡的对比度
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text(title), backgroundColor: backgroundColor),
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          margin: EdgeInsets.only(bottom: queryData.padding.bottom + boxOffsetB),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(boxRadius))),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final cardSize = min(constraints.maxWidth, constraints.maxHeight);
              final codeSize = min(cardSize - boxPadding.left - boxPadding.right, cardSize - boxPadding.top - boxPadding.bottom);
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: boxPadding.copyWith(top: 0, bottom: 0),
                    width: codeSize + boxPadding.left + boxPadding.right,
                    height: boxPadding.top,
                    child: Row(
                      children: [
                        icon,
                        const SizedBox(width: 4),
                        Expanded(child: Text(nick, style: themeData.textTheme.titleMedium?.copyWith(color: Colors.black), overflow: TextOverflow.ellipsis)),
                      ],
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox.square(
                        dimension: codeSize,
                        child: PrettyQrView.data(
                          data: data,
                          errorCorrectLevel: codeErrorCorrectLevel,
                          decoration: PrettyQrDecoration(shape: PrettyQrSmoothSymbol(color: codeElementColor, roundFactor: codeRoundEdges ? 1 : 0)),
                        ),
                      ),
                      logo ?? const SizedBox(),
                    ],
                  ),
                  Container(
                    padding: boxPadding.copyWith(top: 0, bottom: 0),
                    width: codeSize + boxPadding.left + boxPadding.right,
                    height: boxPadding.bottom,
                    alignment: Alignment.center,
                    child: Text(hint, style: themeData.textTheme.bodySmall?.copyWith(color: Colors.black54)),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
