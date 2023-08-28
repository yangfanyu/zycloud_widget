import 'dart:convert';

import 'package:shelf_easy/shelf_easy.dart';

import 'zy_block.dart';

///
///动画模型
///
class ZyMovie extends DbBaseModel {
  ///启动图标、填屏背景、模型视图
  ZyBlock? main;

  ///开始动画、进场动画、击中动画
  ZyBlock? vice;

  ///向下攻击
  ZyBlock? dirD;

  ///向左攻击
  ZyBlock? dirL;

  ///向右攻击
  ZyBlock? dirR;

  ///向上攻击
  ZyBlock? dirU;

  ///背景音乐标志、击中音乐标志、其它音乐标志
  int? tone;

  ZyMovie({
    this.main,
    this.vice,
    this.dirD,
    this.dirL,
    this.dirR,
    this.dirU,
    this.tone,
  });

  factory ZyMovie.fromString(String data) {
    return ZyMovie.fromJson(jsonDecode(data.substring(data.indexOf('(') + 1, data.lastIndexOf(')'))));
  }

  factory ZyMovie.fromJson(Map<String, dynamic> map) {
    return ZyMovie(
      main: map['main'] is Map ? ZyBlock.fromJson(map['main']) : map['main'],
      vice: map['vice'] is Map ? ZyBlock.fromJson(map['vice']) : map['vice'],
      dirD: map['dirD'] is Map ? ZyBlock.fromJson(map['dirD']) : map['dirD'],
      dirL: map['dirL'] is Map ? ZyBlock.fromJson(map['dirL']) : map['dirL'],
      dirR: map['dirR'] is Map ? ZyBlock.fromJson(map['dirR']) : map['dirR'],
      dirU: map['dirU'] is Map ? ZyBlock.fromJson(map['dirU']) : map['dirU'],
      tone: DbQueryField.tryParseInt(map['tone']),
    );
  }

  @override
  String toString() {
    return 'ZyMovie(${jsonEncode(toJson())})';
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'main': DbQueryField.toBaseType(main),
      'vice': DbQueryField.toBaseType(vice),
      'dirD': DbQueryField.toBaseType(dirD),
      'dirL': DbQueryField.toBaseType(dirL),
      'dirR': DbQueryField.toBaseType(dirR),
      'dirU': DbQueryField.toBaseType(dirU),
      'tone': DbQueryField.toBaseType(tone),
    };
  }

  @override
  Map<String, dynamic> toKValues() {
    return {
      'main': main,
      'vice': vice,
      'dirD': dirD,
      'dirL': dirL,
      'dirR': dirR,
      'dirU': dirU,
      'tone': tone,
    };
  }

  @override
  void updateByJson(Map<String, dynamic> map, {ZyMovie? parser}) {
    parser = parser ?? ZyMovie.fromJson(map);
    if (map.containsKey('main')) main = parser.main;
    if (map.containsKey('vice')) vice = parser.vice;
    if (map.containsKey('dirD')) dirD = parser.dirD;
    if (map.containsKey('dirL')) dirL = parser.dirL;
    if (map.containsKey('dirR')) dirR = parser.dirR;
    if (map.containsKey('dirU')) dirU = parser.dirU;
    if (map.containsKey('tone')) tone = parser.tone;
  }

  @override
  void updateByKValues(Map<String, dynamic> map) {
    if (map.containsKey('main')) main = map['main'];
    if (map.containsKey('vice')) vice = map['vice'];
    if (map.containsKey('dirD')) dirD = map['dirD'];
    if (map.containsKey('dirL')) dirL = map['dirL'];
    if (map.containsKey('dirR')) dirR = map['dirR'];
    if (map.containsKey('dirU')) dirU = map['dirU'];
    if (map.containsKey('tone')) tone = map['tone'];
  }
}
