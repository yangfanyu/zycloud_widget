import 'dart:convert';

import 'package:shelf_easy/shelf_easy.dart';

///
///引用模型
///
class ZyRefer extends DbBaseModel {
  ///引用的标志
  int rid;

  ///引用的计数
  int cnt;

  ZyRefer({
    int? rid,
    int? cnt,
  })  : rid = rid ?? 0,
        cnt = cnt ?? 0;

  factory ZyRefer.fromString(String data) {
    return ZyRefer.fromJson(jsonDecode(data.substring(data.indexOf('(') + 1, data.lastIndexOf(')'))));
  }

  factory ZyRefer.fromJson(Map<String, dynamic> map) {
    return ZyRefer(
      rid: DbQueryField.tryParseInt(map['rid']),
      cnt: DbQueryField.tryParseInt(map['cnt']),
    );
  }

  @override
  String toString() {
    return 'ZyRefer(${jsonEncode(toJson())})';
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'rid': DbQueryField.toBaseType(rid),
      'cnt': DbQueryField.toBaseType(cnt),
    };
  }

  @override
  Map<String, dynamic> toKValues() {
    return {
      'rid': rid,
      'cnt': cnt,
    };
  }

  @override
  void updateByJson(Map<String, dynamic> map, {ZyRefer? parser}) {
    parser = parser ?? ZyRefer.fromJson(map);
    if (map.containsKey('rid')) rid = parser.rid;
    if (map.containsKey('cnt')) cnt = parser.cnt;
  }

  @override
  void updateByKValues(Map<String, dynamic> map) {
    if (map.containsKey('rid')) rid = map['rid'];
    if (map.containsKey('cnt')) cnt = map['cnt'];
  }
}
