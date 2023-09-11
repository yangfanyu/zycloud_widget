import 'dart:collection';

import 'package:flutter/material.dart';

import 'zy_anchor.dart';
import 'zy_sprite_label.dart';
import 'zy_sprite_style.dart';

///
///跑马灯
///
class ZySpriteQueue {
  ///补间速度
  final Offset speed;

  ///补间范围
  final Offset range;

  ///容器画笔
  final Paint? boxPaint;

  ///容器圆角
  final Radius boxRadius;

  ///容器边距
  final EdgeInsets boxPadding;

  ///标签队列
  final Queue<ZySpriteLabel> _labelQueue;

  ///帧间隔比值
  double _dtRatio;

  ZySpriteQueue({
    required this.speed,
    required this.range,
    this.boxPaint,
    this.boxRadius = const Radius.circular(4.0),
    this.boxPadding = EdgeInsets.zero,
  })  : _labelQueue = Queue(),
        _dtRatio = 1.0;

  ///有无补间动画
  bool get hasTweens => _labelQueue.isNotEmpty;

  void addLabel(ZySpriteLabel label) => _labelQueue.add(label);

  void updateDt(double dt) {
    _dtRatio = dt * ZySpriteStyle.designTweenFps; //倍数 = dt / ( 1 / 30 ) = dt * 30
  }

  void render(Canvas canvas, {required Offset position, required ZyAnchor anchor}) {
    ZySpriteLabel? lastLabel;
    final extraWidth = boxPadding.horizontal * 2;
    final extraHeight = boxPadding.vertical * 2;
    final speedX = speed.dx * _dtRatio;
    final speedY = speed.dy * _dtRatio;
    for (final thisLabel in _labelQueue) {
      if (lastLabel == null || lastLabel.stateX.abs() > lastLabel.size.width + extraWidth || lastLabel.stateY.abs() > lastLabel.size.height + extraHeight) {
        thisLabel.stateX += speedX;
        thisLabel.stateY += speedY;
        thisLabel.renderForState(canvas, position: position, anchor: anchor, boxPaint: boxPaint, boxRadius: boxRadius, boxPadding: boxPadding);
      }
      lastLabel = thisLabel;
    }
    _labelQueue.removeWhere((label) => label.stateX.abs() > range.dx.abs() || label.stateY.abs() > range.dy.abs());
  }
}
