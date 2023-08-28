import 'dart:convert';

import 'package:shelf_easy/shelf_easy.dart';

///
///元件模型
///
class ZyBlock extends DbBaseModel {
  ///元件类型
  int type;

  ///元件标志
  int txId;

  ///精灵标志
  int spId;

  ///翻转，范围: -1 和 1
  int fliped;

  ///旋转，范围: 0~360 度
  int rotate;

  ///移动的碰撞检测矩形
  int rectMV;

  ///战斗的碰撞检测矩形
  int rectBT;

  ///层绘制时的排序参数
  double? sorter;

  ZyBlock({
    int? type,
    int? txId,
    int? spId,
    int? fliped,
    int? rotate,
    int? rectMV,
    int? rectBT,
    this.sorter,
  })  : type = type ?? 0,
        txId = txId ?? 0,
        spId = spId ?? 0,
        fliped = fliped ?? 1,
        rotate = rotate ?? 0,
        rectMV = rectMV ?? 0,
        rectBT = rectBT ?? 0;

  factory ZyBlock.fromString(String data) {
    return ZyBlock.fromJson(jsonDecode(data.substring(data.indexOf('(') + 1, data.lastIndexOf(')'))));
  }

  factory ZyBlock.fromJson(Map<String, dynamic> map) {
    return ZyBlock(
      type: DbQueryField.tryParseInt(map['type']),
      txId: DbQueryField.tryParseInt(map['txId']),
      spId: DbQueryField.tryParseInt(map['spId']),
      fliped: DbQueryField.tryParseInt(map['fliped']),
      rotate: DbQueryField.tryParseInt(map['rotate']),
      rectMV: DbQueryField.tryParseInt(map['rectMV']),
      rectBT: DbQueryField.tryParseInt(map['rectBT']),
      sorter: DbQueryField.tryParseDouble(map['sorter']),
    );
  }

  @override
  String toString() {
    return 'ZyBlock(${jsonEncode(toJson())})';
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': DbQueryField.toBaseType(type),
      'txId': DbQueryField.toBaseType(txId),
      'spId': DbQueryField.toBaseType(spId),
      'fliped': DbQueryField.toBaseType(fliped),
      'rotate': DbQueryField.toBaseType(rotate),
      'rectMV': DbQueryField.toBaseType(rectMV),
      'rectBT': DbQueryField.toBaseType(rectBT),
      'sorter': DbQueryField.toBaseType(sorter),
    };
  }

  @override
  Map<String, dynamic> toKValues() {
    return {
      'type': type,
      'txId': txId,
      'spId': spId,
      'fliped': fliped,
      'rotate': rotate,
      'rectMV': rectMV,
      'rectBT': rectBT,
      'sorter': sorter,
    };
  }

  @override
  void updateByJson(Map<String, dynamic> map, {ZyBlock? parser}) {
    parser = parser ?? ZyBlock.fromJson(map);
    if (map.containsKey('type')) type = parser.type;
    if (map.containsKey('txId')) txId = parser.txId;
    if (map.containsKey('spId')) spId = parser.spId;
    if (map.containsKey('fliped')) fliped = parser.fliped;
    if (map.containsKey('rotate')) rotate = parser.rotate;
    if (map.containsKey('rectMV')) rectMV = parser.rectMV;
    if (map.containsKey('rectBT')) rectBT = parser.rectBT;
    if (map.containsKey('sorter')) sorter = parser.sorter;
  }

  @override
  void updateByKValues(Map<String, dynamic> map) {
    if (map.containsKey('type')) type = map['type'];
    if (map.containsKey('txId')) txId = map['txId'];
    if (map.containsKey('spId')) spId = map['spId'];
    if (map.containsKey('fliped')) fliped = map['fliped'];
    if (map.containsKey('rotate')) rotate = map['rotate'];
    if (map.containsKey('rectMV')) rectMV = map['rectMV'];
    if (map.containsKey('rectBT')) rectBT = map['rectBT'];
    if (map.containsKey('sorter')) sorter = map['sorter'];
  }
}
