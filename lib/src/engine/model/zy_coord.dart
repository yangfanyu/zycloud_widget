import 'dart:convert';

import 'package:shelf_easy/shelf_easy.dart';

///
///坐标模型
///
class ZyCoord extends DbBaseModel {
  ///场景标志
  int sid;

  ///正中心行
  int row;

  ///正中心列
  int col;

  ///行走方向
  int dir;

  ///模型标志、传送标志、形状标志
  int rid;

  ///正中心x轴方向坐标精确值
  double dx;

  ///正中心y轴方向坐标精确值
  double dy;

  ///正中心双轴移动距离精确值
  double dist;

  ZyCoord({
    int? sid,
    int? row,
    int? col,
    int? dir,
    int? rid,
    double? dx,
    double? dy,
    double? dist,
  })  : sid = sid ?? 0,
        row = row ?? 0,
        col = col ?? 0,
        dir = dir ?? 0,
        rid = rid ?? 0,
        dx = dx ?? 0,
        dy = dy ?? 0,
        dist = dist ?? 0;

  factory ZyCoord.fromString(String data) {
    return ZyCoord.fromJson(jsonDecode(data.substring(data.indexOf('(') + 1, data.lastIndexOf(')'))));
  }

  factory ZyCoord.fromJson(Map<String, dynamic> map) {
    return ZyCoord(
      sid: DbQueryField.tryParseInt(map['sid']),
      row: DbQueryField.tryParseInt(map['row']),
      col: DbQueryField.tryParseInt(map['col']),
      dir: DbQueryField.tryParseInt(map['dir']),
      rid: DbQueryField.tryParseInt(map['rid']),
      dx: DbQueryField.tryParseDouble(map['dx']),
      dy: DbQueryField.tryParseDouble(map['dy']),
      dist: DbQueryField.tryParseDouble(map['dist']),
    );
  }

  @override
  String toString() {
    return 'ZyCoord(${jsonEncode(toJson())})';
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'sid': DbQueryField.toBaseType(sid),
      'row': DbQueryField.toBaseType(row),
      'col': DbQueryField.toBaseType(col),
      'dir': DbQueryField.toBaseType(dir),
      'rid': DbQueryField.toBaseType(rid),
      'dx': DbQueryField.toBaseType(dx),
      'dy': DbQueryField.toBaseType(dy),
      'dist': DbQueryField.toBaseType(dist),
    };
  }

  @override
  Map<String, dynamic> toKValues() {
    return {
      'sid': sid,
      'row': row,
      'col': col,
      'dir': dir,
      'rid': rid,
      'dx': dx,
      'dy': dy,
      'dist': dist,
    };
  }

  @override
  void updateByJson(Map<String, dynamic> map, {ZyCoord? parser}) {
    parser = parser ?? ZyCoord.fromJson(map);
    if (map.containsKey('sid')) sid = parser.sid;
    if (map.containsKey('row')) row = parser.row;
    if (map.containsKey('col')) col = parser.col;
    if (map.containsKey('dir')) dir = parser.dir;
    if (map.containsKey('rid')) rid = parser.rid;
    if (map.containsKey('dx')) dx = parser.dx;
    if (map.containsKey('dy')) dy = parser.dy;
    if (map.containsKey('dist')) dist = parser.dist;
  }

  @override
  void updateByKValues(Map<String, dynamic> map) {
    if (map.containsKey('sid')) sid = map['sid'];
    if (map.containsKey('row')) row = map['row'];
    if (map.containsKey('col')) col = map['col'];
    if (map.containsKey('dir')) dir = map['dir'];
    if (map.containsKey('rid')) rid = map['rid'];
    if (map.containsKey('dx')) dx = map['dx'];
    if (map.containsKey('dy')) dy = map['dy'];
    if (map.containsKey('dist')) dist = map['dist'];
  }
}
