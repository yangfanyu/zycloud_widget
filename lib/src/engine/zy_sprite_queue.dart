import 'dart:collection';

import 'package:flutter/material.dart';

import 'zy_anchor.dart';
import 'zy_sprite_label.dart';

///
///跑马灯
///
class ZySpriteQueue {
  ///移动速度
  final Offset tweenSpeed;

  ///移动范围
  final Offset tweenRange;

  ///容器画笔
  final Paint? boxPaint;

  ///容器圆角
  final Radius boxRadius;

  ///容器边距
  final EdgeInsets boxPadding;

  ///标签队列
  final Queue<ZySpriteLabel> _labelQueue;

  ZySpriteQueue({
    required this.tweenSpeed,
    required this.tweenRange,
    this.boxPaint,
    this.boxRadius = const Radius.circular(4.0),
    this.boxPadding = EdgeInsets.zero,
  }) : _labelQueue = Queue();

  bool get isEmpty => _labelQueue.isEmpty;

  bool get isNotEmpty => _labelQueue.isNotEmpty;

  void addLabel(ZySpriteLabel label) => _labelQueue.add(label);

  void render(Canvas canvas, {required Offset position, required ZyAnchor anchor}) {
    ZySpriteLabel? lastLabel;
    final extraWidth = boxPadding.horizontal * 2;
    final extraHeight = boxPadding.vertical * 2;
    for (final thisLabel in _labelQueue) {
      if (lastLabel == null || lastLabel.stateX.abs() > lastLabel.size.width + extraWidth || lastLabel.stateY.abs() > lastLabel.size.height + extraHeight) {
        thisLabel.stateX += tweenSpeed.dx;
        thisLabel.stateY += tweenSpeed.dy;
        thisLabel.renderForState(canvas, position: position, anchor: anchor, boxPaint: boxPaint, boxRadius: boxRadius, boxPadding: boxPadding);
      }
      lastLabel = thisLabel;
    }
    _labelQueue.removeWhere((label) => label.stateX.abs() > tweenRange.dx.abs() || label.stateY.abs() > tweenRange.dy.abs());
  }
}
