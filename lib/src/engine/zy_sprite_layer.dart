import 'dart:ui';

import 'package:shelf_easy/shelf_easy.dart';

import 'zy_anchor.dart';
import 'zy_model.dart';
import 'zy_sprite.dart';
import 'zy_sprite_label.dart';
import 'zy_sprite_shape.dart';
import 'zy_sprite_style.dart';
import 'zy_texture.dart';

///
///精灵图层
///
class ZySpriteLayer {
  ///绘制精灵时同步的帧号
  int syncFrameNo = 0;

  ///绘制不是由数据创建的[ZySprite]时，[ZySprite.isAlive]属性为true的精灵会被缓存，缓存key为[ZySprite.key]，缓存value为可重复的rcKey。
  final aliveSprites = <int, String>{};

  ///绘制不是由数据创建的[ZySprite]时，[ZySprite.isAlive]或[ZySprite.isOrder]属性为true的精灵会被排序后再绘制，本列表缓存排序后的精灵。
  final orderSprites = <ZySprite>[];

  ZySpriteLayer();

  ///绘制层内容到[canvas]，绘制顺序：背景 -> 精灵 -> 网格 -> 标记 -> 选框。
  ///
  /// * [viewPort] 屏幕可视区域。
  /// * [expRange] 扩展的单元格。
  /// * [unitSize] 单元格的尺寸。
  /// * [fillData] 填屏背景精灵，类型可以是[ZySprite]、[ZyRecord]、[ZyBlock]、[ZyCoord]四种，是[ZyCoord]类型时若[recordMap]中无对应[ZyCoord.rid]的[ZyRecord]则忽略。
  /// * [txspData] 精灵数据集合，子项可以是[ZySprite]、[ZyRecord]、[ZyBlock]、[ZyCoord]、List<[ZySprite]>五种。
  /// * [markData] 标记数据集合，子项可以是[int]、[ZyCoord]两种，若[ZySpriteShape]缓存中不包含对应值的精灵则绘制文本值。
  /// * [pickRect] 选框矩形数据。
  /// * [enableFill] 是否绘制背景。
  /// * [enableTxsp] 是否绘制精灵。
  /// * [enableGrid] 是否绘制网格。
  /// * [enableMark] 是否绘制标记。
  /// * [enablePick] 是否绘制选框。
  /// * [recordMap] 引用记录集合。key是[ZyRecord.$id]对应[ZyCoord.rid]。
  /// * [showCoord] 是否绘制[ZySprite.isAlive]或[ZySprite.isOrder]属性为true的精灵的坐标。
  ///
  ///绘制不是由数据创建的[ZySprite]时，[ZySprite.isAlive]属性为true的精灵会被缓存，缓存key为[ZySprite.key]，缓存value为可重复的rcKey。
  void render(
    Canvas canvas, {
    required Rect viewPort,
    int? expRange,
    double? unitSize,
    dynamic fillData,
    Map<dynamic, dynamic>? txspData,
    Map<dynamic, dynamic>? markData,
    Rect? pickRect,
    bool enableFill = false,
    bool enableTxsp = false,
    bool enableGrid = false,
    bool enableMark = false,
    bool enablePick = false,
    Map<dynamic, dynamic>? recordMap,
    bool showCoord = false,
  }) {
    expRange ??= ZySpriteStyle.defExpRange;
    unitSize ??= ZySpriteStyle.defUnitSize;
    aliveSprites.clear(); //清除缓存
    orderSprites.clear(); //清除缓存
    if (expRange <= 0 || unitSize <= 0 || viewPort.width <= unitSize || viewPort.height <= unitSize) return;
    //计算参数
    final sr = (viewPort.top / unitSize).floor() - expRange; //向y轴负方向取整，可能为负数所以不能用~/运算符
    final er = (viewPort.bottom / unitSize).ceil() + expRange; //向y轴正方向取整
    final sc = (viewPort.left / unitSize).floor() - expRange; //向x轴负方向取整，可能为负数所以不能用~/运算符
    final ec = (viewPort.right / unitSize).ceil() + expRange; //向x轴正方向取整
    //绘制背景
    if (enableFill && fillData != null) {
      final data = VmObject.readValue(fillData);
      ZySprite? txsp;
      if (data is ZySprite) {
        txsp = data; //精灵
      } else if (data is ZyRecord) {
        txsp = data.getSprite(unitSize: unitSize); //模型
      } else if (data is ZyBlock) {
        txsp = data.getSprite(unitSize: unitSize); //数据
      } else if (data is ZyCoord) {
        txsp = (VmObject.readValue(recordMap?[data.rid]) as ZyRecord?)?.getSprite(unitSize: unitSize); //引用
      }
      if (txsp != null) {
        for (var r = sr; r < er; r++) {
          for (var c = sc; c < ec; c++) {
            txsp
              ..setRcOffset(row: r.toDouble(), col: c.toDouble(), unitSize: unitSize) //重置行列坐标
              ..render(canvas, useRc: true, frame: syncFrameNo); //直接绘制精灵
          }
        }
      }
    }
    //绘制精灵
    if (enableTxsp && txspData != null) {
      for (var r = sr; r < er; r++) {
        for (var c = sc; c < ec; c++) {
          final key = countRcKey(r, c);
          final data = VmObject.readValue(txspData[key]);
          if (data is List<ZySprite>) {
            for (var txsp in data) {
              if (txsp.isAlive) {
                aliveSprites[txsp.key] = key; //缓存活动精灵
                orderSprites.add(txsp); //缓存排序精灵
              } else if (txsp.isOrder) {
                txsp.setRcOffset(row: r.toDouble(), col: c.toDouble(), unitSize: unitSize); //重置行列坐标
                orderSprites.add(txsp); //缓存排序精灵
              } else {
                txsp
                  ..setRcOffset(row: r.toDouble(), col: c.toDouble(), unitSize: unitSize) //重置行列坐标
                  ..render(canvas, useRc: true, frame: syncFrameNo); //直接绘制精灵
              }
            }
          } else {
            ZySprite? txsp;
            if (data is ZySprite) {
              txsp = data; //精灵
            } else if (data is ZyRecord) {
              txsp = data.getSprite(unitSize: unitSize); //模型
            } else if (data is ZyBlock) {
              txsp = data.getSprite(unitSize: unitSize); //数据
            } else if (data is ZyCoord) {
              txsp = (VmObject.readValue(recordMap?[data.rid]) as ZyRecord?)?.getSprite(unitSize: unitSize); //引用
            }
            if (txsp != null) {
              if (txsp.isAlive) {
                aliveSprites[txsp.key] = key; //缓存活动精灵
                orderSprites.add(txsp); //缓存排序精灵
              } else if (txsp.isOrder) {
                txsp.setRcOffset(row: r.toDouble(), col: c.toDouble(), unitSize: unitSize); //重置行列坐标
                orderSprites.add(txsp); //缓存排序精灵
              } else {
                txsp
                  ..setRcOffset(row: r.toDouble(), col: c.toDouble(), unitSize: unitSize) //重置行列坐标
                  ..render(canvas, useRc: true, frame: syncFrameNo); //直接绘制精灵
              }
            }
          }
        }
      }
    }
    orderSprites.sort((a, b) => a.dz < b.dz ? -1 : 1); //按dz进行排序
    for (var sprite in orderSprites) {
      if (sprite.isAlive) {
        sprite.render(canvas, useRc: false, frame: null, coord: showCoord); //绘制活动精灵
      } else {
        sprite.render(canvas, useRc: true, frame: syncFrameNo, coord: showCoord); //绘制排序精灵
      }
    }
    //绘制网格
    if (enableGrid) {
      for (var r = sr; r <= er; r++) {
        canvas.drawLine(
          Offset(sc * unitSize, r * unitSize),
          Offset(ec * unitSize, r * unitSize),
          r == 0 ? ZySpriteStyle.axis0Paint : (r == 1 ? ZySpriteStyle.axis1Paint : ZySpriteStyle.axisXPaint),
        ); //横线
      }
      for (var c = sc; c <= ec; c++) {
        canvas.drawLine(
          Offset(c * unitSize, sr * unitSize),
          Offset(c * unitSize, er * unitSize),
          c == 0 ? ZySpriteStyle.axis0Paint : (c == 1 ? ZySpriteStyle.axis1Paint : ZySpriteStyle.axisXPaint),
        ); //竖线
      }
    }
    //绘制标记
    if (enableMark && markData != null) {
      for (var r = sr; r < er; r++) {
        for (var c = sc; c < ec; c++) {
          final key = countRcKey(r, c);
          final data = VmObject.readValue(markData[key]);
          final mark = data is int ? data : (data is ZyCoord ? data.rid : null);
          if (mark != null) {
            final position = Offset((c + 0.5) * unitSize, (r + 0.5) * unitSize);
            if (ZySpriteShape.hasIndex(index: mark)) {
              final shape = ZySpriteShape.getShape(index: mark);
              shape.render(canvas, position: position, anchor: ZyAnchor.center, paint: ZySpriteStyle.movingPaint, size: unitSize, crossLine: true);
            } else {
              final label = ZySpriteLabel.getLabel(style: ZySpriteStyle.labelStyle, value: mark.toString());
              label.render(canvas, position: position, anchor: ZyAnchor.center, markSize: unitSize, markPaint: ZySpriteStyle.markPaint, linePaint: ZySpriteStyle.movingPaint);
            }
          }
        }
      }
    }
    //绘制选框
    if (enablePick && pickRect != null) {
      canvas.drawRect(pickRect, ZySpriteStyle.pickPaint);
    }
  }

  ///与标记数据进行移动碰撞检测，返回碰撞的[int]标记数组。
  ///
  /// * [sprite] 被检测的精灵。
  /// * [detectX] 被检测的精灵的预设x轴坐标。
  /// * [detectY] 被检测的精灵的预设y轴坐标。
  /// * [expRange] 要检测的单元格上下左右范围。
  /// * [unitSize] 单元格的尺寸。
  /// * [markData] 标记数据集合。标记数据集合，子项可以是[int]、[ZyCoord]两种。是否在[ZySpriteShape]缓存中都进行检测。
  List<int> collisionMovingAndMovingByMark({
    required ZySprite sprite,
    double? detectX,
    double? detectY,
    int? expRange,
    double? unitSize,
    Map<dynamic, dynamic>? markData,
  }) {
    expRange ??= ZySpriteStyle.defExpRange;
    unitSize ??= ZySpriteStyle.defUnitSize;
    if (expRange <= 0 || unitSize <= 0 || markData == null) return const [];
    final sr = (sprite.dy / unitSize).floor() - expRange;
    final er = (sprite.dy / unitSize).ceil() + expRange;
    final sc = (sprite.dx / unitSize).floor() - expRange;
    final ec = (sprite.dx / unitSize).ceil() + expRange;
    final result = <int>[];
    for (var r = sr; r < er; r++) {
      for (var c = sc; c < ec; c++) {
        final key = countRcKey(r, c);
        final data = VmObject.readValue(markData[key]);
        final mark = data is int ? data : (data is ZyCoord ? data.rid : null);
        if (mark != null) {
          if (sprite.collisionMovingAndMoving(
            detectX: detectX,
            detectY: detectY,
            target: ZySpriteShape.getShapeSprite(index: ZySpriteShape.hasIndex(index: mark) ? mark : 0), //如果不在shape缓存中则索引为0的形状精灵
            targetX: (c + 0.5) * unitSize,
            targetY: (r + 0.5) * unitSize,
          )) {
            result.add(mark);
          }
        }
      }
    }
    return result;
  }

  ///与精灵数据进行移动碰撞检测，返回碰撞的[ZySprite.key]数组，返回数据不包含[sprite]所在的[ZySprite.aliveGroup]分组
  ///
  /// * [sprite] 被检测的精灵。
  /// * [detectX] 被检测的精灵的预设x轴坐标。
  /// * [detectY] 被检测的精灵的预设y轴坐标。
  /// * [expRange] 要检测的单元格上下左右范围。
  /// * [unitSize] 单元格的尺寸。
  /// * [txspData] 精灵数据集合，子项可以是[ZySprite]、List<[ZySprite]>两种。仅检测[ZySprite.isAlive]属性为true的精灵。
  List<int> collisionMovingAndMovingByTxsp({
    required ZySprite sprite,
    double? detectX,
    double? detectY,
    int? expRange,
    double? unitSize,
    Map<dynamic, dynamic>? txspData,
  }) {
    expRange ??= ZySpriteStyle.defExpRange;
    unitSize ??= ZySpriteStyle.defUnitSize;
    if (expRange <= 0 || unitSize <= 0 || txspData == null) return const [];
    final sr = (sprite.dy / unitSize).floor() - expRange;
    final er = (sprite.dy / unitSize).ceil() + expRange;
    final sc = (sprite.dx / unitSize).floor() - expRange;
    final ec = (sprite.dx / unitSize).ceil() + expRange;
    final result = <int>[];
    for (var r = sr; r < er; r++) {
      for (var c = sc; c < ec; c++) {
        final key = countRcKey(r, c);
        final data = VmObject.readValue(txspData[key]);
        if (data is List<ZySprite>) {
          for (var target in data) {
            if (target.isAlive && target.aliveGroup != sprite.aliveGroup && sprite.collisionMovingAndMoving(detectX: detectX, detectY: detectY, target: target)) {
              result.add(target.key);
            }
          }
        } else {
          if (data is ZySprite) {
            final target = data;
            if (target.isAlive && target.aliveGroup != sprite.aliveGroup && sprite.collisionMovingAndMoving(detectX: detectX, detectY: detectY, target: target)) {
              result.add(target.key);
            }
          }
        }
      }
    }
    return result;
  }

  ///与精灵数据进行战斗碰撞检测，返回碰撞的[ZySprite.key]数组，返回数据不包含[sprite]所在的[ZySprite.aliveGroup]分组
  ///
  /// * [sprite] 被检测的精灵。
  /// * [detectX] 被检测的精灵的预设x轴坐标。
  /// * [detectY] 被检测的精灵的预设y轴坐标。
  /// * [expRange] 要检测的单元格上下左右范围。
  /// * [unitSize] 单元格的尺寸。
  /// * [txspData] 精灵数据集合，子项可以是[ZySprite]、List<[ZySprite]>两种。仅检测[ZySprite.isAlive]属性为true的精灵。
  List<int> collisionBattleAndBattleByTxsp({
    required ZySprite sprite,
    double? detectX,
    double? detectY,
    int? expRange,
    double? unitSize,
    Map<dynamic, dynamic>? txspData,
  }) {
    expRange ??= ZySpriteStyle.defExpRange;
    unitSize ??= ZySpriteStyle.defUnitSize;
    if (expRange <= 0 || unitSize <= 0 || txspData == null) return const [];
    final sr = (sprite.dy / unitSize).floor() - expRange;
    final er = (sprite.dy / unitSize).ceil() + expRange;
    final sc = (sprite.dx / unitSize).floor() - expRange;
    final ec = (sprite.dx / unitSize).ceil() + expRange;
    final result = <int>[];
    for (var r = sr; r < er; r++) {
      for (var c = sc; c < ec; c++) {
        final key = countRcKey(r, c);
        final data = VmObject.readValue(txspData[key]);
        if (data is List<ZySprite>) {
          for (var target in data) {
            if (target.isAlive && target.aliveGroup != sprite.aliveGroup && sprite.collisionBattleAndBattle(detectX: detectX, detectY: detectY, target: target)) {
              result.add(target.key);
            }
          }
        } else {
          if (data is ZySprite) {
            final target = data;
            if (target.isAlive && target.aliveGroup != sprite.aliveGroup && sprite.collisionBattleAndBattle(detectX: detectX, detectY: detectY, target: target)) {
              result.add(target.key);
            }
          }
        }
      }
    }
    return result;
  }

  ///与精灵数据进行战斗预备检测，返回[ZySprite.key]为键方向为值的集合，返回数据仅包含[ZySprite.aliveGroup]为[group]的分组
  ///
  /// * [sprite] 被检测的精灵。
  /// * [battle] 攻击动画数据。
  /// * [group] 要攻击的分组。
  /// * [expRange] 要检测的单元格上下左右范围。
  /// * [unitSize] 单元格的尺寸。
  /// * [txspData] 精灵数据集合，子项可以是[ZySprite]、List<[ZySprite]>两种。仅检测[ZySprite.isAlive]属性为true的精灵。
  Map<int, int> collisionBattleForPrepareByTxsp({
    required ZySprite sprite,
    required ZyMovie battle,
    required int group,
    int? expRange,
    double? unitSize,
    Map<dynamic, dynamic>? txspData,
  }) {
    expRange ??= ZySpriteStyle.defExpRange;
    unitSize ??= ZySpriteStyle.defUnitSize;
    if (expRange <= 0 || unitSize <= 0 || txspData == null) return const {};
    //计算矩形
    final spHalfSize = sprite.size * 0.5;
    final spOffsetDx = sprite.dx - spHalfSize;
    final spOffsetDy = sprite.dy - spHalfSize;
    final expendSize = expRange * unitSize;
    final battleRectD = ZySpriteShape.getShape(index: battle.dirD?.rectBT ?? 0).getRect(size: sprite.size, dx: spOffsetDx, dy: spOffsetDy);
    final battleRectL = ZySpriteShape.getShape(index: battle.dirL?.rectBT ?? 0).getRect(size: sprite.size, dx: spOffsetDx, dy: spOffsetDy);
    final battleRectR = ZySpriteShape.getShape(index: battle.dirR?.rectBT ?? 0).getRect(size: sprite.size, dx: spOffsetDx, dy: spOffsetDy);
    final battleRectU = ZySpriteShape.getShape(index: battle.dirU?.rectBT ?? 0).getRect(size: sprite.size, dx: spOffsetDx, dy: spOffsetDy);
    final rectD = Rect.fromLTWH(battleRectD.left, battleRectD.top, battleRectD.width, battleRectD.height + expendSize);
    final rectL = Rect.fromLTWH(battleRectL.left - expendSize, battleRectL.top, battleRectL.width + expendSize, battleRectL.height);
    final rectR = Rect.fromLTWH(battleRectR.left, battleRectR.top, battleRectR.width + expendSize, battleRectR.height);
    final rectU = Rect.fromLTWH(battleRectU.left, battleRectU.top - expendSize, battleRectU.width, battleRectU.height + expendSize);
    //碰撞检测
    final sr = (sprite.dy / unitSize).floor() - expRange;
    final er = (sprite.dy / unitSize).ceil() + expRange;
    final sc = (sprite.dx / unitSize).floor() - expRange;
    final ec = (sprite.dx / unitSize).ceil() + expRange;
    final result = <int, int>{};
    for (var r = sr; r < er; r++) {
      for (var c = sc; c < ec; c++) {
        final key = countRcKey(r, c);
        final data = VmObject.readValue(txspData[key]);
        if (data is List<ZySprite>) {
          for (var target in data) {
            if (target.isAlive && target.aliveGroup == group) {
              if (target.collisionBattleAndRect(target: rectD)) {
                result[target.key] = ZyTextureRole.directD;
              } else if (target.collisionBattleAndRect(target: rectL)) {
                result[target.key] = ZyTextureRole.directL;
              } else if (target.collisionBattleAndRect(target: rectR)) {
                result[target.key] = ZyTextureRole.directR;
              } else if (target.collisionBattleAndRect(target: rectU)) {
                result[target.key] = ZyTextureRole.directU;
              }
            }
          }
        } else {
          if (data is ZySprite) {
            final target = data;
            if (target.isAlive && target.aliveGroup == group) {
              if (target.collisionBattleAndRect(target: rectD)) {
                result[target.key] = ZyTextureRole.directD;
              } else if (target.collisionBattleAndRect(target: rectL)) {
                result[target.key] = ZyTextureRole.directL;
              } else if (target.collisionBattleAndRect(target: rectR)) {
                result[target.key] = ZyTextureRole.directR;
              } else if (target.collisionBattleAndRect(target: rectU)) {
                result[target.key] = ZyTextureRole.directU;
              }
            }
          }
        }
      }
    }
    return result;
  }

  ///计算行列的键
  static String countRcKey(int row, int col) => '${row}_$col';

  ///计算行列的值
  static List<int> countRowCol(String rcKey) => rcKey.split('_').map((e) => int.parse(e)).toList();
}
