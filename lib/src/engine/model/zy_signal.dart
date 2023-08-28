import 'dart:convert';

import 'package:shelf_easy/shelf_easy.dart';

///
///信令模型
///
class ZySignal extends DbBaseModel {
  ///信令类型
  int type;

  ///信令文本
  String text;

  ///运行时商店、当铺关联的角色模型标识
  int ident = 0;

  ///运行时任意模型的字段属性列表
  List<String> attrs = [];

  ///运行时菜单子项列表、对话句子列表
  List<ZySignal> items = [];

  ZySignal({
    int? type,
    String? text,
  })  : type = type ?? 0,
        text = text ?? '';

  factory ZySignal.fromString(String data) {
    return ZySignal.fromJson(jsonDecode(data.substring(data.indexOf('(') + 1, data.lastIndexOf(')'))));
  }

  factory ZySignal.fromJson(Map<String, dynamic> map) {
    return ZySignal(
      type: DbQueryField.tryParseInt(map['type']),
      text: DbQueryField.tryParseString(map['text']),
    );
  }

  @override
  String toString() {
    return 'ZySignal(${jsonEncode(toJson())})';
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': DbQueryField.toBaseType(type),
      'text': DbQueryField.toBaseType(text),
    };
  }

  @override
  Map<String, dynamic> toKValues() {
    return {
      'type': type,
      'text': text,
    };
  }

  @override
  void updateByJson(Map<String, dynamic> map, {ZySignal? parser}) {
    parser = parser ?? ZySignal.fromJson(map);
    if (map.containsKey('type')) type = parser.type;
    if (map.containsKey('text')) text = parser.text;
  }

  @override
  void updateByKValues(Map<String, dynamic> map) {
    if (map.containsKey('type')) type = map['type'];
    if (map.containsKey('text')) text = map['text'];
  }
}
