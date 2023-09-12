import 'dart:math';
import 'dart:ui';

import 'zy_anchor.dart';
import 'zy_sprite.dart';
import 'zy_sprite_style.dart';

///
///形状
///
class ZySpriteShape {
  ///分割行列的数量
  final int split;

  ///左上角位置的行
  final int sr;

  ///左上角位置的列
  final int sc;

  ///右下角位置的行
  final int er;

  ///右下角位置的列
  final int ec;

  const ZySpriteShape({
    this.split = 1,
    this.sr = 0,
    this.sc = 0,
    this.er = 1,
    this.ec = 1,
  });

  ///计算标准矩形
  Rect getRect({required double size, required double dx, required dy, required ZyAnchor anchor}) {
    dx -= size * anchor.x;
    dy -= size * anchor.y;
    final unit = size / split; //尽量保证能整数是最好的
    return Rect.fromLTRB(
      dx + (sc * unit).floorToDouble(),
      dy + (sr * unit).floorToDouble(),
      dx + (ec * unit).floorToDouble(),
      dy + (er * unit).floorToDouble(),
    );
  }

  ///绘制到[canvas]。[crossLine]为true时绘制交叉线，[roundRect]为true时绘制为圆角矩形并会忽略[crossLine]参数
  void render(Canvas canvas, {required Offset position, required ZyAnchor anchor, required Paint paint, required double size, bool crossLine = false, bool roundRect = false}) {
    final rect = getRect(size: size, dx: position.dx, dy: position.dy, anchor: anchor);
    if (roundRect) {
      canvas.drawRRect(RRect.fromRectAndRadius(rect, Radius.circular(min(rect.width, rect.height))), paint);
    } else {
      if (crossLine) {
        canvas.drawLine(rect.topLeft, rect.bottomRight, paint);
        canvas.drawLine(rect.bottomLeft, rect.topRight, paint);
      }
      canvas.drawRect(rect, paint);
    }
  }

  ///计算形状索引
  int get _index {
    int result = 0;
    //先计算之前有多少个
    for (var p = 1; p <= split; p++) {
      final totalStart = p < split ? (p * p) : (sr * p + sc);
      for (var i = 0; i < totalStart; i++) {
        final r = i ~/ p;
        final c = i % p;
        result += (p - r) * (p - c);
      }
    }
    //再叠加本起点的索引
    return result + (er - 1 - sr) * (split - sc) + (ec - 1 - sc);
  }

  ///原始形状索引缓存
  static final _shapeCache0 = <int, ZySpriteShape>{};

  ///精灵形状索引缓存
  static final _shapeCache1 = <int, ZySprite>{};

  ///精灵形状列表缓存
  static final _shapeCache2 = <int, List<ZySprite>>{};

  ///是否已经初始化过
  static bool _inited = false;

  ///初始化形状的缓存
  static void initCaches({double? unitSize, int shapeSplit = ZySpriteStyle.maxShapeSplit, bool showIndex = false, bool showRects = false}) {
    if (_inited) return;
    _inited = true;
    unitSize ??= ZySpriteStyle.defUnitSize;
    int index = 0;
    for (var split = 1; split <= shapeSplit; split++) {
      final splitList = _shapeCache2[split] = <ZySprite>[];
      for (var sr = 0; sr < split; sr++) {
        for (var sc = 0; sc < split; sc++) {
          for (var er = sr + 1; er <= split; er++) {
            for (var ec = sc + 1; ec <= split; ec++) {
              final shape = ZySpriteShape(split: split, sr: sr, sc: sc, er: er, ec: ec);
              if (index == shape._index) {
                final sprite = ZySprite(type: -1, txId: -1, spId: index, size: unitSize)
                  ..label = showIndex ? index.toString() : ''
                  ..labelRound = false
                  ..shapeMaxbox = shape
                  ..shapeMoving = shape
                  ..shapeBattle = shape
                  ..enableRects = showRects;
                _shapeCache0[index] = shape;
                _shapeCache1[index] = sprite;
                splitList.add(sprite);
              } else {
                throw ('Shape index match error: [ $split, $sr, $sc, $er, $ec => $index, ${shape._index} ]');
              }
              index++;
            }
          }
        }
      }
    }
  }

  ///判断指定的索引是否存在
  static bool hasIndex({required int index}) => _shapeCache0.containsKey(index);

  ///读取指定索引的形状对象
  static ZySpriteShape getShape({required int index}) => _shapeCache0[index]!;

  ///读取指定索引的精灵对象
  static ZySprite getShapeSprite({required int index}) => _shapeCache1[index]!;

  ///读取指定分割的精灵列表
  static List<ZySprite> getShapeSpriteList({required int split}) => _shapeCache2[split]!;
}
