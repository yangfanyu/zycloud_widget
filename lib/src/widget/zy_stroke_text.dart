import 'package:flutter/material.dart';

///
///带边框线条的文字
///
class ZyStrokeText extends StatelessWidget {
  ///StrokeCap样式
  final StrokeCap strokeCap;

  ///StrokeJoin样式
  final StrokeJoin strokeJoin;

  ///stroke宽度
  final double strokeWidth;

  ///stroke颜色
  final Color strokeColor;

  ///被包装的子文本
  final Text child;

  const ZyStrokeText({
    super.key,
    this.strokeCap = StrokeCap.round,
    this.strokeJoin = StrokeJoin.round,
    this.strokeWidth = 2.0,
    this.strokeColor = Colors.red,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final style = child.style?.copyWith(
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeCap = strokeCap
            ..strokeJoin = strokeJoin
            ..strokeWidth = strokeWidth
            ..color = strokeColor,
          color: null,
        ) ??
        TextStyle(
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeCap = strokeCap
            ..strokeJoin = strokeJoin
            ..strokeWidth = strokeWidth
            ..color = strokeColor,
        );
    return Stack(
      alignment: Alignment.center,
      textDirection: child.textDirection,
      children: [
        Text(
          child.data ?? '',
          style: style,
          maxLines: child.maxLines,
          overflow: child.overflow,
          semanticsLabel: child.semanticsLabel,
          softWrap: child.softWrap,
          strutStyle: child.strutStyle,
          textAlign: child.textAlign,
          textDirection: child.textDirection,
          textScaleFactor: child.textScaleFactor,
        ),
        child,
      ],
    );
  }
}
