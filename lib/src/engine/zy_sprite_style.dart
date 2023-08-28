import 'dart:math';

import 'package:flutter/material.dart';

///
///精灵样式
///
class ZySpriteStyle {
  ///精灵的最小尺寸
  static const minSpriteSize = 48.0;

  ///标签的最大列数
  static const maxLabelColumn = 4;

  ///坐标的最大列数
  static const maxCoordColumn = 8;

  ///状态的最大列数
  static const maxStateColumn = 5;

  ///形状的最大拆分
  static const maxShapeSplit = 5;

  ///精灵标签样式
  static late final TextStyle labelStyle;

  ///精灵坐标样式
  static late final TextStyle coordStyle;

  ///精灵图片画笔
  static late final Paint imagePaint;

  ///精灵边框画笔
  static late final Paint maxboxPaint;

  ///移动边框画笔
  static late final Paint movingPaint;

  ///战斗边框画笔
  static late final Paint battlePaint;

  ///文本状态样式
  static late final TextStyle stateStyle;

  ///背景状态画笔
  static late final Paint bgBarPaint;

  ///生命状态画笔
  static late final Paint hpBarPaint;

  ///真气状态画笔
  static late final Paint mpBarPaint;

  ///坐标轴0画笔
  static late final Paint axis0Paint;

  ///坐标轴1画笔
  static late final Paint axis1Paint;

  ///坐标轴x画笔
  static late final Paint axisXPaint;

  ///网格选框画笔
  static late final Paint pickPaint;

  ///网格标记画笔
  static late final Paint markPaint;

  ///是否已初始化
  static bool _inited = false;

  ///默认单元扩展
  static int _defExpRange = 1;

  ///默认单元尺寸
  static double _defUnitSize = minSpriteSize;

  ///默认单元扩展
  static int get defExpRange => _defExpRange;

  ///默认单元尺寸
  static double get defUnitSize => _defUnitSize;

  ///初始化全部画笔，[expRange]会同步到全局[defExpRange]，[unitSize]会同步到全局[defUnitSize]
  static void initStyles({
    int expRange = 1,
    double unitSize = minSpriteSize,
    Color labelStyleColor = Colors.white,
    Color coordStyleColor = Colors.white,
    Color imagePaintColor = Colors.teal,
    Color maxboxPaintColor = Colors.orange,
    Color movingPaintColor = Colors.red,
    Color battlePaintColor = Colors.purple,
    Color stateStyleColor = Colors.black,
    Color bgBarPaintColor = Colors.black,
    Color hpBarPaintColor = Colors.red,
    Color mpBarPaintColor = Colors.blue,
    Color axis0PaintColor = Colors.redAccent,
    Color axis1PaintColor = Colors.purpleAccent,
    Color axisXPaintColor = Colors.blueAccent,
    Color pickPaintColor = Colors.red,
    Color markPaintColor = Colors.orange,
    double markAlpha = 0.4,
  }) {
    if (expRange <= 0) throw ('The expRange cannot be less than 1');
    if (unitSize < minSpriteSize) throw ('The unitSize cannot be less than $minSpriteSize');
    if (_inited) return;
    _inited = true;
    _defExpRange = expRange;
    _defUnitSize = unitSize;

    labelStyle = TextStyle(
      fontSize: max(_defUnitSize / maxLabelColumn, 8.0).floorToDouble(),
      color: labelStyleColor,
      height: 1,
    );
    coordStyle = TextStyle(
      fontSize: max(_defUnitSize / maxCoordColumn, 8.0).floorToDouble(),
      color: coordStyleColor,
      height: 1,
    );
    imagePaint = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = false
      ..color = imagePaintColor;
    maxboxPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = maxboxPaintColor
      ..strokeWidth = 1;
    movingPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = movingPaintColor
      ..strokeWidth = 1;
    battlePaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = battlePaintColor
      ..strokeWidth = 1;

    stateStyle = TextStyle(
      fontSize: max(_defUnitSize / maxStateColumn, 8.0).floorToDouble(),
      color: stateStyleColor,
      height: 1,
    );
    bgBarPaint = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = false
      ..color = bgBarPaintColor;
    hpBarPaint = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = false
      ..color = hpBarPaintColor;
    mpBarPaint = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = false
      ..color = mpBarPaintColor;

    axis0Paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = axis0PaintColor
      ..strokeWidth = 1;
    axis1Paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = axis1PaintColor
      ..strokeWidth = 1;
    axisXPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = axisXPaintColor
      ..strokeWidth = 1;

    pickPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = pickPaintColor
      ..strokeWidth = 4;
    markPaint = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = false
      ..color = markPaintColor.withOpacity(markAlpha);
  }
}
