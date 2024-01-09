import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shelf_easy/shelf_deps.dart';
import 'package:shelf_easy/shelf_easy.dart';

import 'model/all.dart';
import 'zy_sprite.dart';
import 'zy_sprite_layer.dart';
import 'zy_sprite_shape.dart';
import 'zy_sprite_style.dart';
import 'zy_texture.dart';

export 'model/all.dart';

///
///支持虚拟机的可Json序列化模型类1
///
class ZyModel extends DbBaseModel with VmSuper {
  @override
  String toString({minLevel}) {
    if (isInitedByVmware && hasChildProperty('toString')) {
      return VmObject.readValue(getProperty('toString').runFunction(null, {#minLevel: minLevel}));
    } else {
      return super.toString(minLevel: minLevel);
    }
  }

  @override
  Map<String, dynamic> toJson() {
    if (isInitedByVmware && hasChildProperty('toJson')) {
      return VmObject.readValue(getProperty('toJson').runFunction(null, null));
    } else {
      return super.toJson();
    }
  }

  ///转换为基本类型，[DbQueryField.toBaseType]的替代
  static dynamic toBaseType(dynamic v) {
    if (v is Map) {
      return v.map((key, value) => MapEntry(key is String ? key : (key is ObjectId ? key.oid : (key is Enum ? key.name : key.toString())), toBaseType(value)));
    } else if (v is List) {
      return v.map((value) => toBaseType(value)).toList();
    } else if (v is Enum) {
      return v.name;
    } else if (v is DbBaseModel) {
      return v.toJson();
    } else if (v is VmObject) {
      return toBaseType(v.getValue());
    } else if (v is ObjectId) {
      return v;
    } else {
      return v;
    }
  }
}

///
///支持虚拟机的可Json序列化模型类2
///
class ZyRecord extends ZyModel {
  ///唯一标志
  @nonVirtual
  int get $id {
    if (isInitedByVmware && hasChildProperty('id')) {
      return VmObject.readValue(getProperty('id'));
    } else {
      return (this as dynamic).id;
    }
  }

  ///数据类型
  @nonVirtual
  int get $type {
    if (isInitedByVmware && hasChildProperty('type')) {
      return VmObject.readValue(getProperty('type'));
    } else {
      return (this as dynamic).type;
    }
  }

  ///数据名称
  @nonVirtual
  String get $name {
    if (isInitedByVmware && hasChildProperty('name')) {
      return VmObject.readValue(getProperty('name'));
    } else {
      return (this as dynamic).name;
    }
  }

  ///数据描述
  @nonVirtual
  String get $desc {
    if (isInitedByVmware && hasChildProperty('desc')) {
      return VmObject.readValue(getProperty('desc'));
    } else {
      return (this as dynamic).desc;
    }
  }

  ///数据动画
  @nonVirtual
  ZyMovie get $movie {
    if (isInitedByVmware && hasChildProperty('movie')) {
      return VmObject.readValue(getProperty('movie'));
    } else {
      return (this as dynamic).movie;
    }
  }

  ///显示的名称
  @nonVirtual
  String get $displayName => $name.isNotEmpty ? $name : $id.toString();

  ///显示的描述
  @nonVirtual
  String get $displayDesc => $desc.isNotEmpty ? $desc : $displayName;

  ///显示的精灵，如果无对应[ZyMovie.main]属性的精灵，则会创建一个尺寸为[unitSize]的文本精灵
  @nonVirtual
  ZySprite getSprite({double? unitSize}) {
    unitSize ??= ZySpriteStyle.defUnitSize;
    final sprite = $movie.getSpriteMain(unitSize: unitSize) ?? ZySprite(type: -1, txId: -1, spId: -1, size: unitSize);
    sprite.label = $displayName; //占位文本
    return sprite;
  }
}

///
///扩展的[ZyBlock]方法
///
extension ZyBlockMethod on ZyBlock {
  ///获取精灵，如果纹理缓存中无对应精灵，则会创建一个尺寸为[unitSize]的文本精灵
  ZySprite getSprite({double? unitSize}) {
    unitSize ??= ZySpriteStyle.defUnitSize;
    final sprite = ZyTexture.getSpriteByArgs(txId: txId, spId: spId) ?? ZySprite(type: type, txId: txId, spId: spId, size: unitSize);
    sprite.fliped = fliped; //翻转
    sprite.rotate = rotate; //旋转
    sprite.sorter = sorter; //排序
    sprite.shapeMoving = ZySpriteShape.getShape(index: rectMV); //移动
    sprite.shapeBattle = ZySpriteShape.getShape(index: rectBT); //战斗
    return sprite;
  }

  ///创建副本
  ZyBlock clone({int? type, int? txId, int? spId, int? fliped, int? rotate, int? rectMV, int? rectBT}) {
    return ZyBlock(
      type: type ?? this.type,
      txId: txId ?? this.txId,
      spId: spId ?? this.spId,
      fliped: fliped ?? this.fliped,
      rotate: rotate ?? this.rotate,
      rectMV: rectMV ?? this.rectMV,
      rectBT: rectBT ?? this.rectBT,
    );
  }
}

///
///扩展的[ZyCoord]方法
///
extension ZyCoordMethod on ZyCoord {
  ///获取行列坐标的key
  String get $rcKey => ZySpriteLayer.countRcKey(row, col);

  ///获取由[dx]和[dy]创建的[Offset]对象
  Offset get $position => Offset(dx, dy);

  ///根据当前的[dx]与[dy]同步[row]和[col]的值
  void syncRowCol({double? unitSize}) {
    unitSize ??= ZySpriteStyle.defUnitSize;
    row = (dy / unitSize).floor(); //可能为负数所以不能用~/运算符
    col = (dx / unitSize).floor(); //可能为负数所以不能用~/运算符
  }

  ///根据当前的[row]与[col]同步[dx]和[dy]的值
  void syncDxDy({double? unitSize}) {
    unitSize ??= ZySpriteStyle.defUnitSize;
    dx = (col + 0.5) * unitSize;
    dy = (row + 0.5) * unitSize;
  }

  ///计算与[coord]的中心距离，保存到[dist]属性
  void syncDist({required ZyCoord coord}) {
    final distX = coord.dx - dx;
    final distY = coord.dy - dy;
    dist = sqrt(distX * distX + distY * distY);
  }

  ///创建副本实例
  ZyCoord clone({int? sid, int? row, int? col, int? dir, int? rid, double? dx, double? dy, double? dist}) {
    return ZyCoord(
      sid: sid ?? this.sid,
      row: row ?? this.row,
      col: col ?? this.col,
      dir: dir ?? this.dir,
      rid: rid ?? this.rid,
      dx: dx ?? this.dx,
      dy: dy ?? this.dy,
      dist: dist ?? this.dist,
    );
  }

  ///计算尝试往[direct]方向移动[vector]的坐标列表，设计的速度为[ZySpriteStyle.designTweenFps]即30fps时的速度，所以适配当前刷帧间隔[dt]时: 倍数 = dt / ( 1 / 30 ) = dt * 30
  List<ZyCoord> nextList({double? unitSize, required int direct, required Offset vector, required double speed, required double dt}) {
    unitSize ??= ZySpriteStyle.defUnitSize;
    final coordRes = <ZyCoord>[];
    final speedRes = speed * dt * ZySpriteStyle.designTweenFps; //倍数 = dt / ( 1 / 30 ) = dt * 30
    //按向量方向
    final rx = dx + vector.dx * speedRes;
    final ry = dy + vector.dy * speedRes;
    coordRes.add(ZyCoord(sid: sid, dir: direct, rid: rid, dx: rx, dy: ry, dist: speedRes)..syncRowCol());
    //对齐x、y方向的1、2个轴
    final tx = (vector.dx < 0 ? (rx / unitSize).ceil() : (rx / unitSize).floor()) * unitSize;
    final ty = (vector.dy < 0 ? (ry / unitSize).ceil() : (ry / unitSize).floor()) * unitSize;
    if ((tx - dx).abs() <= speedRes) coordRes.add(ZyCoord(sid: sid, dir: direct, rid: rid, dx: tx, dy: ry, dist: speedRes)..syncRowCol());
    if ((ty - dy).abs() <= speedRes) coordRes.add(ZyCoord(sid: sid, dir: direct, rid: rid, dx: rx, dy: ty, dist: speedRes)..syncRowCol());
    if (coordRes.length == 3) coordRes.add(ZyCoord(sid: sid, dir: direct, rid: rid, dx: tx, dy: ty, dist: speedRes)..syncRowCol()); //coordRes.length == 3 说明双轴都满足对齐条件
    //保持x、y方向的1个轴不变
    coordRes.add(ZyCoord(sid: sid, dir: direct, rid: rid, dx: rx, dy: dy, dist: speedRes)..syncRowCol());
    coordRes.add(ZyCoord(sid: sid, dir: direct, rid: rid, dx: dx, dy: ry, dist: speedRes)..syncRowCol());
    return coordRes;
  }
}

///
///扩展的[ZyMovie]方法
///
extension ZyMovieMethod on ZyMovie {
  ///获取[main]精灵，如果[main]属性不为null，但纹理缓存中无对应精灵，则会创建一个尺寸为[unitSize]的文本精灵
  ZySprite? getSpriteMain({double? unitSize}) {
    return main?.getSprite(unitSize: unitSize);
  }

  ///获取[vice]精灵，如果[vice]属性不为null，但纹理缓存中无对应精灵，则会创建一个尺寸为[unitSize]的文本精灵
  ZySprite? getSpriteVice({double? unitSize}) {
    return vice?.getSprite(unitSize: unitSize);
  }

  ///获取[dirD]精灵，如果[dirD]属性不为null，但纹理缓存中无对应精灵，则会创建一个尺寸为[unitSize]的文本精灵
  ZySprite? getSpriteDirD({double? unitSize}) {
    return dirD?.getSprite(unitSize: unitSize);
  }

  ///获取[dirL]精灵，如果[dirL]属性不为null，但纹理缓存中无对应精灵，则会创建一个尺寸为[unitSize]的文本精灵
  ZySprite? getSpriteDirL({double? unitSize}) {
    return dirL?.getSprite(unitSize: unitSize);
  }

  ///获取[dirR]精灵，如果[dirR]属性不为null，但纹理缓存中无对应精灵，则会创建一个尺寸为[unitSize]的文本精灵
  ZySprite? getSpriteDirR({double? unitSize}) {
    return dirR?.getSprite(unitSize: unitSize);
  }

  ///获取[dirU]精灵，如果[dirU]属性不为null，但纹理缓存中无对应精灵，则会创建一个尺寸为[unitSize]的文本精灵
  ZySprite? getSpriteDirU({double? unitSize}) {
    return dirU?.getSprite(unitSize: unitSize);
  }

  ///获取战斗精灵，[direct]不为null时返回对应方向的精灵，否则返回[vice]精灵。[label]为占位文本精灵的标签，[round]为true时占位矩形启用圆角
  ZySprite getSpriteBattle({double? unitSize, int? direct, String label = '-', bool round = true}) {
    unitSize ??= ZySpriteStyle.defUnitSize;
    ZySprite? sprite;
    switch (direct) {
      case ZyTextureRole.directD:
        sprite = dirD?.getSprite(unitSize: unitSize);
        break;
      case ZyTextureRole.directL:
        sprite = dirL?.getSprite(unitSize: unitSize);
        break;
      case ZyTextureRole.directR:
        sprite = dirR?.getSprite(unitSize: unitSize);
        break;
      case ZyTextureRole.directU:
        sprite = dirU?.getSprite(unitSize: unitSize);
        break;
      default:
        sprite = vice?.getSprite(unitSize: unitSize);
        break;
    }
    sprite ??= ZySprite(type: -1, txId: -1, spId: -1, size: unitSize / 3); //此处固定为1/3的单元格
    sprite.label = label;
    sprite.labelRound = round;
    return sprite;
  }
}
