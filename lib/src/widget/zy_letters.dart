import 'dart:math' as math;

import 'package:flutter/material.dart';

///
///字母索引选择器
///
class ZyLetters extends StatefulWidget {
  ///气泡指示器半径的默认值
  static const bubbleDefaultRadius = 33.0;

  ///气泡指示器宽度的默认值
  static const bubbleDefaultWidth = bubbleDefaultRadius * 3;

  ///气泡指示器高度的默认值
  static const bubbleDefaultHeight = bubbleDefaultRadius * 2;

  ///可选字母列表
  final List<String> letters;

  ///滑动部位宽度
  final double sliderWidth;

  ///滑动部位颜色
  final Color sliderColor;

  ///气泡指示器宽度
  final double bubbleWidth;

  ///气泡指示器高度
  final double bubbleHeight;

  ///气泡指示器矩形部位的半径
  final double bubbleRadius;

  ///气泡指示器文字大小
  final double bubbleTextSize;

  ///气泡指示器文字颜色
  final Color bubbleTextColor;

  ///气泡指示器三角部位的偏移
  final double bubbleTailOffsetX;

  ///滑动到某个字母时的回调
  final void Function(String char) onDrag;

  const ZyLetters({
    super.key,
    required this.letters,
    this.sliderWidth = 30,
    this.sliderColor = Colors.transparent,
    this.bubbleWidth = bubbleDefaultWidth,
    this.bubbleHeight = bubbleDefaultHeight,
    this.bubbleRadius = bubbleDefaultRadius,
    this.bubbleTextSize = 38,
    this.bubbleTextColor = Colors.white,
    this.bubbleTailOffsetX = -10,
    required this.onDrag,
  });

  @override
  State<StatefulWidget> createState() => _ZyLettersState();
}

class _ZyLettersState extends State<ZyLetters> {
  int _currentIndex = -1;
  double _bubbleOffsetY = -1;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        final fontSize = math.min(constraints.maxHeight / (widget.letters.length + 2), themeData.textTheme.bodySmall?.fontSize ?? 12);
        final itemSize = math.min(constraints.maxHeight / widget.letters.length, fontSize * 1.28);
        final paddingY = (constraints.maxHeight - itemSize * widget.letters.length) / 2;
        return Stack(
          clipBehavior: Clip.none,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onPanDown: (details) {
                final testIndex = (details.localPosition.dy - paddingY) ~/ itemSize;
                final resIndex = math.min(math.max(0, testIndex), widget.letters.length - 1);
                if (resIndex != _currentIndex) {
                  widget.onDrag(widget.letters[resIndex]);
                  if (mounted) {
                    setState(() {
                      _currentIndex = resIndex;
                      _bubbleOffsetY = paddingY + (resIndex + 0.5) * itemSize;
                    });
                  }
                }
              },
              onPanUpdate: (details) {
                final testIndex = (details.localPosition.dy - paddingY) ~/ itemSize;
                final resIndex = math.min(math.max(0, testIndex), widget.letters.length - 1);
                if (resIndex != _currentIndex) {
                  widget.onDrag(widget.letters[resIndex]);
                  if (mounted) {
                    setState(() {
                      _currentIndex = resIndex;
                      _bubbleOffsetY = paddingY + (resIndex + 0.5) * itemSize;
                    });
                  }
                }
              },
              onPanEnd: (details) {
                if (mounted) {
                  setState(() {
                    _currentIndex = -1;
                  });
                }
              },
              onPanCancel: () {
                if (mounted) {
                  setState(() {
                    _currentIndex = -1;
                  });
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: paddingY),
                alignment: Alignment.center,
                width: widget.sliderWidth,
                color: widget.sliderColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: _buildLetters(themeData, fontSize),
                ),
              ),
            ),
            _buildBubble(themeData),
          ],
        );
      },
    );
  }

  List<Widget> _buildLetters(ThemeData themeData, double fontSize) {
    final children = <Widget>[];
    for (int i = 0; i < widget.letters.length; i++) {
      children.add(
        Text(
          widget.letters[i],
          style: TextStyle(color: i == _currentIndex ? themeData.colorScheme.secondary : themeData.textTheme.bodySmall?.color, fontSize: fontSize, height: 1),
        ),
      );
    }
    return children;
  }

  Widget _buildBubble(ThemeData themeData) {
    if (_currentIndex < 0) {
      return const SizedBox();
    } else {
      return Positioned(
        top: _bubbleOffsetY - widget.bubbleHeight / 2,
        right: widget.sliderWidth,
        child: Stack(
          children: [
            CustomPaint(
              size: Size(widget.bubbleWidth, widget.bubbleHeight),
              painter: _ZyLettersBubblePainter(themeData.colorScheme.primary, widget.bubbleRadius, widget.bubbleTailOffsetX),
            ),
            Container(
              width: widget.bubbleHeight,
              height: widget.bubbleHeight,
              alignment: Alignment.center,
              child: Text(widget.letters[_currentIndex], style: TextStyle(color: widget.bubbleTextColor, fontSize: widget.bubbleTextSize)),
            )
          ],
        ),
      );
    }
  }
}

class _ZyLettersBubblePainter extends CustomPainter {
  final Color color;
  final double radius;
  final double tailOffsetX;

  _ZyLettersBubblePainter(this.color, this.radius, this.tailOffsetX);

  @override
  void paint(Canvas canvas, Size size) {
    //画笔
    final paint = Paint();
    paint.isAntiAlias = true; //抗锯齿
    paint.style = PaintingStyle.fill;
    paint.color = color;
    //圆角矩形
    canvas.drawRRect(RRect.fromLTRBR(0, 0, size.height, size.height, Radius.circular(radius)), paint);
    //三角形
    final path = Path();
    path.moveTo(size.height + tailOffsetX, size.height * 1 / 3);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.height + tailOffsetX, size.height * 2 / 3);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
