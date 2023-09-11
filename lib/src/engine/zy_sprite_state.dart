import 'dart:math';

import 'package:flutter/material.dart';

import 'zy_anchor.dart';
import 'zy_sprite.dart';
import 'zy_sprite_label.dart';
import 'zy_sprite_style.dart';

///
///精灵状态
///
class ZySpriteState {
  ///精灵尺寸
  final double size;

  ///补间速度
  final Offset speed;

  ///补间范围
  final Offset range;

  ///x轴达到[range]后，仍然在x轴进行平移
  final bool keepX;

  ///条外边距
  final double margin;

  ///背景条高度
  final double bgHeight;

  ///生命条高度
  final double hpHeight;

  ///真气条高度
  final double mpHeight;

  ///随机数生成
  final Random randomer;

  ///最大生命值
  int maxHp;

  ///最大真气值
  int maxMp;

  ///当前生命值
  int hp;

  ///当前真气值
  int mp;

  ///顶部状态标签
  final ZySpriteLabel _stateLabel;

  ///跟随动画集合
  final List<ZySprite> _stateSprites;

  ///顶部上升标签
  final List<ZySpriteLabel> _topGrowLabels;

  ///左边上升标签
  final List<ZySpriteLabel> _leftGrowLabels;

  ///左边下降标签
  final List<ZySpriteLabel> _leftDownLabels;

  ///右边上升标签
  final List<ZySpriteLabel> _rightGrowLabels;

  ///右边下降标签
  final List<ZySpriteLabel> _rightDownLabels;

  ///帧间隔比值
  double _dtRatio;

  ZySpriteState({
    required this.size,
    required this.speed,
    required this.range,
    this.keepX = true,
    this.margin = 1,
    this.bgHeight = 6,
    this.hpHeight = 4,
    this.mpHeight = 2,
    this.maxHp = 0,
    this.maxMp = 0,
    this.hp = 0,
    this.mp = 0,
    int stateColumn = ZySpriteStyle.maxStateColumn,
  })  : randomer = Random(),
        _stateLabel = ZySpriteLabel(style: ZySpriteStyle.stateStyle, value: '', column: stateColumn),
        _stateSprites = [],
        _topGrowLabels = [],
        _leftGrowLabels = [],
        _leftDownLabels = [],
        _rightGrowLabels = [],
        _rightDownLabels = [],
        _dtRatio = 1.0;

  ///有无补间动画
  bool get hasTweens => _topGrowLabels.isNotEmpty || _leftGrowLabels.isNotEmpty || _leftDownLabels.isNotEmpty || _rightGrowLabels.isNotEmpty || _rightDownLabels.isNotEmpty;

  set stateText(String value) => _stateLabel.setLabel(style: ZySpriteStyle.stateStyle, value: value);

  void addStateSprite(ZySprite sprite) => _stateSprites.add(sprite);

  void addTopGrowLabel(ZySpriteLabel label) => _topGrowLabels.add(label);

  void addLRGrowLabel(ZySpriteLabel label) {
    if (_leftGrowLabels.length < _rightGrowLabels.length) {
      _leftGrowLabels.add(label);
    } else if (_leftGrowLabels.length > _rightGrowLabels.length) {
      _rightGrowLabels.add(label);
    } else {
      randomer.nextDouble() < 0.5 ? _leftGrowLabels.add(label) : _rightGrowLabels.add(label);
    }
  }

  void addLRDownLabel(ZySpriteLabel label) {
    if (_leftDownLabels.length < _rightDownLabels.length) {
      _leftDownLabels.add(label);
    } else if (_leftDownLabels.length > _rightDownLabels.length) {
      _rightDownLabels.add(label);
    } else {
      randomer.nextDouble() < 0.5 ? _leftDownLabels.add(label) : _rightDownLabels.add(label);
    }
  }

  void updateDt(double dt, bool nextFrame) {
    _dtRatio = dt * ZySpriteStyle.designTweenFps; //倍数 = dt / ( 1 / 30 ) = dt * 30
    if (nextFrame) {
      for (var sprite in _stateSprites) {
        sprite.nextFrame();
      }
    }
  }

  void render(Canvas canvas, {required Offset position, required ZyAnchor anchor}) {
    final barX = position.dx - size * anchor.x + margin;
    final barY = position.dy - size * anchor.y - margin;
    final barWidth = size - margin * 2;
    final speedX = speed.dx * _dtRatio;
    final speedY = speed.dy * _dtRatio;
    //背景
    canvas.drawRect(Rect.fromLTWH(barX, barY - bgHeight, barWidth, bgHeight), ZySpriteStyle.bgBarPaint);
    //生命
    final hpWidth = barWidth * min((maxHp > 0 ? hp / maxHp : 0), 1);
    if (hpWidth > 0) canvas.drawRect(Rect.fromLTWH(barX, barY - bgHeight, hpWidth, hpHeight), ZySpriteStyle.hpBarPaint);
    //真气
    final mpWidth = barWidth * min((maxMp > 0 ? mp / maxMp : 0), 1);
    if (mpWidth > 0) canvas.drawRect(Rect.fromLTWH(barX, barY - mpHeight, mpWidth, mpHeight), ZySpriteStyle.mpBarPaint);
    //状态
    _stateLabel.stateY = -(size + _stateLabel.size.height) * anchor.y - bgHeight - margin * 2;
    _stateLabel.renderForState(canvas, position: position, anchor: anchor);
    //动画
    for (var sprite in _stateSprites) {
      sprite
        ..position = position
        ..render(canvas, useRc: false);
    }
    //标签
    for (var label in _topGrowLabels) {
      label.stateY -= speedY;
      label.renderForState(canvas, position: position, anchor: anchor);
    }
    for (var label in _leftGrowLabels) {
      if (label.stateX > -range.dx) {
        label.stateX -= speedX;
      } else {
        if (keepX) label.stateX -= speedX;
        label.stateY -= speedY;
      }
      label.renderForState(canvas, position: position, anchor: anchor);
    }
    for (var label in _leftDownLabels) {
      if (label.stateX > -range.dx) {
        label.stateX -= speedX;
      } else {
        if (keepX) label.stateX -= speedX;
        label.stateY += speedY;
      }
      label.renderForState(canvas, position: position, anchor: anchor);
    }
    for (var label in _rightGrowLabels) {
      if (label.stateX < range.dx) {
        label.stateX += speedX;
      } else {
        if (keepX) label.stateX += speedX;
        label.stateY -= speedY;
      }
      label.renderForState(canvas, position: position, anchor: anchor);
    }
    for (var label in _rightDownLabels) {
      if (label.stateX < range.dx) {
        label.stateX += speedX;
      } else {
        if (keepX) label.stateX += speedX;
        label.stateY += speedY;
      }
      label.renderForState(canvas, position: position, anchor: anchor);
    }
    //移除
    _stateSprites.removeWhere((sprite) => sprite.isEnd);
    _topGrowLabels.removeWhere((label) => label.stateY < -range.dy);
    _leftGrowLabels.removeWhere((label) => label.stateY < -range.dy);
    _leftDownLabels.removeWhere((label) => label.stateY > range.dy);
    _rightGrowLabels.removeWhere((label) => label.stateY < -range.dy);
    _rightDownLabels.removeWhere((label) => label.stateY > range.dy);
  }
}
