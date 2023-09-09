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

  ///x轴速度
  final double speedX;

  ///y轴速度
  final double speedY;

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

  ///下轴变化阙值
  final double _queValueD;

  ///左轴变化阙值
  final double _queValueL;

  ///右轴变化阙值
  final double _queValueR;

  ///上轴变化阙值
  final double _queValueU;

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

  ZySpriteState({
    required this.size,
    required this.speedX,
    required this.speedY,
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
        _queValueD = size * 0.5,
        _queValueL = -size,
        _queValueR = size,
        _queValueU = -size,
        _stateLabel = ZySpriteLabel(style: ZySpriteStyle.stateStyle, value: '', column: stateColumn),
        _stateSprites = [],
        _topGrowLabels = [],
        _leftGrowLabels = [],
        _leftDownLabels = [],
        _rightGrowLabels = [],
        _rightDownLabels = [];

  bool get isEmpty => _stateLabel.text.isEmpty && _stateSprites.isEmpty && _topGrowLabels.isEmpty && _leftGrowLabels.isEmpty && _leftDownLabels.isEmpty && _rightGrowLabels.isEmpty && _rightDownLabels.isEmpty;

  bool get isNotEmpty => !isEmpty;

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

  void spritesNextFrame() {
    for (var sprite in _stateSprites) {
      sprite.nextFrame();
    }
  }

  void render(Canvas canvas, {required Offset position, required ZyAnchor anchor}) {
    final barX = position.dx - size * anchor.x + margin;
    final barY = position.dy - size * anchor.y - margin;
    final barWidth = size - margin * 2;
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
      if (label.stateX > _queValueL) label.stateX -= speedX;
      label.stateY -= speedY;
      label.renderForState(canvas, position: position, anchor: anchor);
    }
    for (var label in _leftDownLabels) {
      if (label.stateX > _queValueL) label.stateX -= speedX;
      label.stateY += speedY;
      label.renderForState(canvas, position: position, anchor: anchor);
    }
    for (var label in _rightGrowLabels) {
      if (label.stateX < _queValueR) label.stateX += speedX;
      label.stateY -= speedY;
      label.renderForState(canvas, position: position, anchor: anchor);
    }
    for (var label in _rightDownLabels) {
      if (label.stateX < _queValueR) label.stateX += speedX;
      label.stateY += speedY;
      label.renderForState(canvas, position: position, anchor: anchor);
    }
    //移除
    _stateSprites.removeWhere((sprite) => sprite.isEnd);
    _topGrowLabels.removeWhere((label) => label.stateY < _queValueU);
    _leftGrowLabels.removeWhere((label) => label.stateY < _queValueU);
    _leftDownLabels.removeWhere((label) => label.stateY > _queValueD);
    _rightGrowLabels.removeWhere((label) => label.stateY < _queValueU);
    _rightDownLabels.removeWhere((label) => label.stateY > _queValueD);
  }
}
