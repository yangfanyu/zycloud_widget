import 'dart:math';
import 'dart:ui';

import 'zy_anchor.dart';
import 'zy_sprite_image.dart';
import 'zy_sprite_label.dart';
import 'zy_sprite_shape.dart';
import 'zy_sprite_state.dart';
import 'zy_sprite_style.dart';
import 'zy_texture.dart';

///
///精灵
///
class ZySprite {
  ///唯一标志自增量
  static int _incKey = 0;

  ///唯一标志
  final int key;

  ///纹理类型
  final int type;

  ///纹理标志
  final int txId;

  ///精灵标志
  final int spId;

  ///精灵尺寸
  final double size;

  ///图片数据：图片列表
  List<ZySpriteImage> _imageList;

  ///图片数据：图片实例
  ZySpriteImage? _image;

  ///图片数据：图片索引
  int _imageIndex;

  ///标签数据：标签实例
  final ZySpriteLabel _label;

  ///标签数据：标签圆角
  bool _labelRound;

  ///形状数据：容器边框
  ZySpriteShape _shapeMaxbox;

  ///形状数据：移动边框
  ZySpriteShape _shapeMoving;

  ///形状数据：战斗边框
  ZySpriteShape _shapeBattle;

  ///分组数据：原始帧序号集合
  Map<int, List<int>>? _groupOriginFrames;

  ///分组数据：原始帧图片列表
  List<ZySpriteImage>? _groupOriginImages;

  ///分组数据：分组帧列表集合
  Map<int, List<ZySpriteImage>>? _groupResultMap;

  ///分组数据：分组帧列表组号
  int? _groupKey;

  ///几何变换：定位锚点
  final ZyAnchor _anchor;

  ///几何变换：x轴缩放，-1.0 或 1.0
  double _scale;

  ///几何变换：旋转角度，0pi 到 2pi
  double _angle;

  ///几何变换：排序深度
  double? _depth;

  ///几何变换：平移坐标
  Offset _position;

  ///几何变换：行列坐标
  Offset? _rcOffset;

  ///绘制参数：是否为活动精灵
  bool _enableAlive;

  ///绘制参数：是否绘制矩形框
  bool _enableRects;

  ///绘制参数：活动精灵的分组
  int? aliveGroup;

  ///绘制参数：活动精灵的状态
  ZySpriteState? aliveState;

  ZySprite({
    required this.type,
    required this.txId,
    required this.spId,
    required this.size,
    List<ZySpriteImage>? imageList,
  })  : key = _incKey++,
        _imageList = imageList ?? const [],
        _image = imageList?.firstOrNull,
        _imageIndex = 0,
        _label = ZySpriteLabel(style: ZySpriteStyle.labelStyle, value: '${type}_${txId}_$spId'),
        _labelRound = false,
        _shapeMaxbox = const ZySpriteShape(),
        _shapeMoving = const ZySpriteShape(),
        _shapeBattle = const ZySpriteShape(),
        _groupOriginFrames = null,
        _groupOriginImages = null,
        _groupResultMap = null,
        _groupKey = null,
        _anchor = ZyAnchor.center,
        _scale = 1,
        _angle = 0,
        _depth = null,
        _position = Offset.zero,
        _rcOffset = null,
        _enableAlive = false,
        _enableRects = false,
        aliveGroup = null,
        aliveState = null;

  ///初始化分组数据
  void initGroups(Map<int, List<int>> framesMap) {
    if (_groupResultMap != null) return;
    //保存原始数据
    _groupOriginFrames = framesMap;
    _groupOriginImages = _imageList;
    //进行精灵分组
    _groupResultMap = {};
    _groupOriginFrames!.forEach((key, frames) {
      final result = <ZySpriteImage>[];
      for (var index in frames) {
        if (index >= 0 && index < _groupOriginImages!.length) {
          result.add(_groupOriginImages![index]);
        } else if (_groupOriginImages!.isNotEmpty) {
          result.add(_groupOriginImages!.first);
        }
      }
      _groupResultMap![key] = result;
    });
    //设置初始分组
    if (_groupOriginFrames!.isNotEmpty) {
      setGroup(_groupOriginFrames!.keys.first);
    }
  }

  ///设置分组的序号
  void setGroup(int key) {
    if (_groupResultMap == null) return;
    if (_groupResultMap!.containsKey(key)) {
      _groupKey = key;
      _imageList = _groupResultMap![key]!;
      setFrame(0);
    }
  }

  ///设置图片的帧号
  void setFrame(int index) {
    if (_imageList.isNotEmpty) {
      _imageIndex = max(index, 0) % _imageList.length;
      _image = _imageList[_imageIndex];
    }
  }

  ///播放下个图片帧
  void nextFrame() {
    if (_imageList.isNotEmpty) {
      _imageIndex = (_imageIndex + 1) % _imageList.length;
      _image = _imageList[_imageIndex];
    }
  }

  ///设置标签内容
  set label(String value) => _label.setLabel(style: ZySpriteStyle.labelStyle, value: value);

  ///设置标签圆角
  set labelRound(bool value) => _labelRound = value;

  ///设置容器边框
  set shapeMaxbox(ZySpriteShape value) => _shapeMaxbox = value;

  ///设置移动边框
  set shapeMoving(ZySpriteShape value) => _shapeMoving = value;

  ///设置战斗边框
  set shapeBattle(ZySpriteShape value) => _shapeBattle = value;

  ///设置水平翻转
  set fliped(int value) => _scale = value < 0 ? -1 : 1;

  ///设置旋转角度
  set rotate(int value) => _angle = (value / 360) * 2 * pi;

  ///设置绘制深度
  set sorter(double? value) => _depth = value;

  ///设置平移坐标
  set position(Offset value) => _position = value;

  ///设置行列坐标
  void setRcOffset({required double row, required double col, required double unitSize}) => _rcOffset = Offset((col + _anchor.x) * unitSize, (row + _anchor.y) * unitSize);

  ///设置是否为活动精灵
  set enableAlive(bool value) => _enableAlive = value;

  ///设置是否绘制矩形框
  set enableRects(bool value) => _enableRects = value;

  ///获取x轴的坐标
  double get dx => _position.dx;

  ///获取y轴的坐标
  double get dy => _position.dy;

  ///获取z轴的深度
  double get dz => _depth ?? _position.dy;

  ///是否已播放完毕
  bool get isEnd => _imageList.isEmpty || _imageIndex < 0 || _imageIndex >= _imageList.length - 1;

  ///是否为空的精灵
  bool get isEmpty => _imageList.isEmpty;

  ///是否为动画精灵
  bool get isMovie => _imageList.length > 1;

  ///是否为活动精灵
  bool get isAlive => _enableAlive;

  ///是否为排序精灵
  bool get isOrder => _enableAlive || _depth != null;

  ///是否为指定组号
  bool isGroup(int key) => _groupKey == key;

  ///是否为指定帧号
  bool isFrame(int index) => _imageIndex == index;

  ///创建精灵的副本实例，复制除几何变换、绘制参数之外的全部属性
  ZySprite clone() {
    if (_groupResultMap == null) {
      return ZySprite(type: type, txId: txId, spId: spId, size: size, imageList: _imageList)
        ..label = _label.text
        .._labelRound = _labelRound
        .._shapeMaxbox = _shapeMaxbox
        .._shapeMoving = _shapeMoving
        .._shapeBattle = _shapeBattle;
    } else {
      return ZySprite(type: type, txId: txId, spId: spId, size: size, imageList: _groupOriginImages)
        ..initGroups(_groupOriginFrames!)
        ..label = _label.text
        .._labelRound = _labelRound
        .._shapeMaxbox = _shapeMaxbox
        .._shapeMoving = _shapeMoving
        .._shapeBattle = _shapeBattle;
    }
  }

  ///创建精灵的副本数组，复制除几何变换、绘制参数之外的全部属性
  List<ZySprite> cloneByGroup() {
    if (_groupResultMap == null) {
      return const [];
    } else {
      return _groupOriginFrames!.keys.map((e) => clone()..setGroup(e)).toList();
    }
  }

  ///当[useRc]为true时，以[_rcOffset]作为绘制坐标。当[useRc]为false时，以[_position]作为绘制坐标。
  ///
  ///当[frame]不为null时，绘制前会先调用[setFrame]方法更新当前播放的帧，即更新[_image]与[_imageIndex]。
  ///
  ///当[coord]为true时，绘制x轴坐标[dx]、y轴坐标[dy]、z轴坐标[dz]。
  void render(Canvas canvas, {required bool useRc, int? frame, bool coord = false}) {
    //计算坐标
    final offset = (useRc ? _rcOffset : _position) ?? _position;
    //更新帧号
    if (frame != null) setFrame(frame);
    //几何变换
    final transform = _scale != 1 || _angle != 0;
    final position = transform ? Offset.zero : offset;
    if (transform) {
      canvas
        ..save() //保存
        ..translate(offset.dx, offset.dy); //平移
      canvas
        ..save() //保存
        ..scale(_scale, 1) //翻转
        ..rotate(_angle); //旋转
    }
    //绘制内容
    if (_image == null) {
      _shapeMaxbox.render(canvas, position: position, anchor: _anchor, paint: ZySpriteStyle.imagePaint, size: size, roundRect: _labelRound); //背景
      _label.render(canvas, position: position, anchor: _anchor); //标签
    } else {
      _image?.render(canvas, position: position, anchor: _anchor, paint: ZySpriteStyle.imagePaint); //图片
    }
    if (transform) {
      canvas.restore(); //恢复
    }
    //绘制状态
    if (_enableAlive) {
      aliveState?.render(canvas, position: position, anchor: _anchor);
    }
    //绘制矩形
    if (_enableRects) {
      _shapeMaxbox.render(canvas, position: position, anchor: _anchor, paint: ZySpriteStyle.maxboxPaint, size: size);
      _shapeMoving.render(canvas, position: position, anchor: _anchor, paint: ZySpriteStyle.movingPaint, size: size, crossLine: true);
      _shapeBattle.render(canvas, position: position, anchor: _anchor, paint: ZySpriteStyle.battlePaint, size: size);
    }
    //绘制坐标
    if (coord) {
      const column = ZySpriteStyle.maxCoordColumn;
      final dxLabel = ZySpriteLabel(column: column, style: ZySpriteStyle.coordStyle, value: 'x:${offset.dx.toStringAsFixed(0)}');
      final dyLabel = ZySpriteLabel(column: column, style: ZySpriteStyle.coordStyle, value: 'y:${offset.dy.toStringAsFixed(0)}');
      final dzLabel = ZySpriteLabel(column: column, style: ZySpriteStyle.coordStyle, value: 'z:${dz.toStringAsFixed(0)}');
      dxLabel.render(canvas, position: position.translate(0, -size * 0.25), anchor: _anchor);
      dyLabel.render(canvas, position: position, anchor: _anchor);
      dzLabel.render(canvas, position: position.translate(0, size * 0.25), anchor: _anchor);
    }
    if (transform) {
      canvas.restore(); //恢复
    }
  }

  ///目标精灵[target]是否在本精灵的[direct]方向，[range]容错范围一般为移动速度的最大值
  bool frontFaceMovingAndMoving({double? detectX, double? detectY, required ZySprite target, double? targetX, double? targetY, required int direct, required double range}) {
    if (direct == ZyTextureRole.directD || direct == ZyTextureRole.directU) {
      //往上或下走，目标精灵左或右偏移range后都碰撞，则认为是面朝的方向
      return collisionMovingAndMoving(
            detectX: detectX,
            detectY: detectY,
            target: target,
            targetX: (targetX ?? target._position.dx) - range,
            targetY: targetY,
          ) &&
          collisionMovingAndMoving(
            detectX: detectX,
            detectY: detectY,
            target: target,
            targetX: (targetX ?? target._position.dx) + range,
            targetY: targetY,
          );
    } else if (direct == ZyTextureRole.directL || direct == ZyTextureRole.directR) {
      //往左或右走，目标精灵上或下偏移beta后都碰撞，则认为是面朝的方向
      return collisionMovingAndMoving(
            detectX: detectX,
            detectY: detectY,
            target: target,
            targetX: targetX,
            targetY: (targetY ?? target._position.dy) - range,
          ) &&
          collisionMovingAndMoving(
            detectX: detectX,
            detectY: detectY,
            target: target,
            targetX: targetX,
            targetY: (targetY ?? target._position.dy) + range,
          );
    }
    return false;
  }

  ///碰撞检测---移动矩形 vs 移动矩形
  bool collisionMovingAndMoving({double? detectX, double? detectY, required ZySprite target, double? targetX, double? targetY}) {
    final halfSize = size * 0.5;
    final targetHalfSize = target.size * 0.5;
    return collisionRectAndRect(
      rect1: _shapeMoving.getRect(
        size: size,
        dx: (detectX ?? _position.dx) - halfSize,
        dy: (detectY ?? _position.dy) - halfSize,
      ),
      rect2: target._shapeMoving.getRect(
        size: target.size,
        dx: (targetX ?? target._position.dx) - targetHalfSize,
        dy: (targetY ?? target._position.dy) - targetHalfSize,
      ),
    );
  }

  ///碰撞检测---战斗矩形 vs 战斗矩形
  bool collisionBattleAndBattle({double? detectX, double? detectY, required ZySprite target, double? targetX, double? targetY}) {
    final halfSize = size * 0.5;
    final targetHalfSize = target.size * 0.5;
    return collisionRectAndRect(
      rect1: _shapeBattle.getRect(
        size: size,
        dx: (detectX ?? _position.dx) - halfSize,
        dy: (detectY ?? _position.dy) - halfSize,
      ),
      rect2: target._shapeBattle.getRect(
        size: target.size,
        dx: (targetX ?? target._position.dx) - targetHalfSize,
        dy: (targetY ?? target._position.dy) - targetHalfSize,
      ),
    );
  }

  ///碰撞检测---战斗矩形 vs 任意矩形
  bool collisionBattleAndRect({double? detectX, double? detectY, required Rect target}) {
    final halfSize = size * 0.5;
    return collisionRectAndRect(
      rect1: _shapeBattle.getRect(
        size: size,
        dx: (detectX ?? _position.dx) - halfSize,
        dy: (detectY ?? _position.dy) - halfSize,
      ),
      rect2: target,
    );
  }

  ///碰撞检测---任意矩形 vs 任意矩形
  static bool collisionRectAndRect({required Rect rect1, required Rect rect2}) {
    final centerOffset = rect1.center - rect2.center;
    return centerOffset.dx.abs() < (rect1.width + rect2.width) * 0.5 && centerOffset.dy.abs() < (rect1.height + rect2.height) * 0.5;
  }

  ///计算用于深度排序的dz坐标
  static double countDzSorter({required double row, required double unitSize}) => (row + 0.5) * unitSize;
}
