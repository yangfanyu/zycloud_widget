import 'dart:math';

import 'package:flutter/material.dart';

import 'zy_anchor.dart';
import 'zy_sprite_style.dart';

///
///精灵标签
///
class ZySpriteLabel {
  ///换行的列
  final int column;

  ///画笔列表
  final List<TextPainter> _painterList;

  ///布局列表
  final List<Offset> _layoutList;

  ///原始文本
  String _text = '';

  ///内容尺寸
  Size _size = Size.zero;

  ///状态x坐标
  double stateX = 0.0;

  ///状态y坐标
  double stateY = 0.0;

  ZySpriteLabel({
    this.column = ZySpriteStyle.maxLabelColumn,
    required TextStyle style,
    required String value,
  })  : _painterList = [],
        _layoutList = [] {
    setLabel(style: style, value: value);
  }

  ///原始文本
  String get text => _text;

  ///内容尺寸
  Size get size => _size;

  ///绘制到[canvas]。当[markSize]、[markPaint]都不为null时绘制正方形背景，若此时[linePaint]也不为null则再绘制一个边框
  void render(Canvas canvas, {required Offset position, required ZyAnchor anchor, double? markSize, Paint? markPaint, Paint? linePaint}) {
    if (markSize != null && markPaint != null) {
      final markRect = Rect.fromLTWH(
        position.dx - markSize * anchor.x,
        position.dy - markSize * anchor.y,
        markSize,
        markSize,
      );
      canvas.drawRect(markRect, markPaint);
      if (linePaint != null) canvas.drawRect(markRect, linePaint);
    }
    for (var i = 0; i < _painterList.length; i++) {
      final painter = _painterList[i];
      final layout = _layoutList[i];
      final offset = layout.translate(
        position.dx - _size.width * anchor.x,
        position.dy - _size.height * anchor.y,
      );
      painter.paint(canvas, offset);
    }
  }

  ///绘制到[canvas]。额外偏移坐标为[stateX]与[stateY]。当[boxPaint]、[boxRadius]、[boxPadding]都不为null时绘制圆椒矩形背景
  void renderForState(Canvas canvas, {required Offset position, required ZyAnchor anchor, Paint? boxPaint, Radius? boxRadius, EdgeInsets? boxPadding}) {
    if (boxPaint != null && boxRadius != null && boxPadding != null) {
      final boxRRect = RRect.fromRectAndRadius(
        Rect.fromLTWH(
          position.dx - _size.width * anchor.x + stateX - boxPadding.left,
          position.dy - _size.height * anchor.y + stateY - boxPadding.top,
          _size.width + boxPadding.horizontal,
          _size.height + boxPadding.vertical,
        ),
        boxRadius,
      );
      canvas.drawRRect(boxRRect, boxPaint);
    }
    for (var i = 0; i < _painterList.length; i++) {
      final painter = _painterList[i];
      final layout = _layoutList[i];
      final offset = layout.translate(
        position.dx - _size.width * anchor.x + stateX,
        position.dy - _size.height * anchor.y + stateY,
      );
      painter.paint(canvas, offset);
    }
  }

  ///设置文本内容
  void setLabel({required TextStyle style, required String value}) {
    _painterList.clear();
    _layoutList.clear();
    double itemWidth = 0;
    double itemHeight = 0;
    for (var i = 0; i < value.length; i++) {
      final painter = getPainterByChar(style: style, char: value.substring(i, i + 1));
      itemWidth = max(itemWidth, painter.width);
      itemHeight = max(itemHeight, painter.height);
      _painterList.add(painter);
    }
    for (var i = 0; i < _painterList.length; i++) {
      final painter = _painterList[i];
      _layoutList.add(
        Offset(
          (i % column) * itemWidth + (itemWidth - painter.width) * 0.5,
          (i ~/ column) * itemHeight + (itemHeight - painter.height) * 0.5,
        ),
      );
    }
    _text = value;
    _size = Size(
      min(column, _painterList.length) * itemWidth,
      (_painterList.length / column).ceil() * itemHeight, //这个应该向右取整
    );
  }

  ///标签实例缓存
  static final _styleLabelCaches = <String, Map<String, ZySpriteLabel>>{};

  ///字符画笔缓存
  static final _stylePainterCaches = <String, Map<String, TextPainter>>{};

  ///读取标签实例缓存，key1为[TextStyle]计算出来的一个键，key2为[value]
  ///
  ///注意：请在[value]数量可控的环境下使用本方法，必要时可以调用[clearLabelCache]来释放全部缓存。
  static ZySpriteLabel getLabel({int column = ZySpriteStyle.maxLabelColumn, required TextStyle style, required String value}) {
    final labelCache = _styleLabelCaches[style._styleKey] ??= {};
    return labelCache[value] ??= ZySpriteLabel(
      column: column,
      style: style,
      value: value,
    );
  }

  ///读取字符画笔缓存，key1为[TextStyle]计算出来的一个键，key2为[char]
  ///
  ///注意：正常来讲不再使用[TextPainter]对象时，应该调用[TextPainter.dispose]方法释放资源，这里每个字符都创建一个对应画笔并缓存，这样画笔数量上限就是utf-8的全部字符数量，避免每次创建的开销。
  static TextPainter getPainterByChar({required TextStyle style, required String char}) {
    if (char.length != 1) throw ('The length of char must be 1');
    final painterCache = _stylePainterCaches[style._styleKey] ??= {};
    return painterCache[char] ??= TextPainter(
      text: TextSpan(text: char, style: style),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    )..layout(); //调用[paint]、读取[width]或[height]之前必须先调用[layout]，调用[layout]之前[text]和[textDirection]属性必须为非空。
  }

  ///清空标签实例缓存
  static void clearLabelCache() {
    _styleLabelCaches.clear();
  }

  ///清空字符画笔缓存
  static void clearPainterCache() {
    _stylePainterCaches.forEach((key, value1) {
      value1.forEach((key, value2) {
        value2.dispose();
      });
    });
    _stylePainterCaches.clear();
  }
}

extension on TextStyle {
  String get _styleKey => '${fontSize}_${color?.value}_${fontWeight?.value}';
}
