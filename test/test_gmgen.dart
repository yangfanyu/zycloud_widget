import 'dart:io';

import 'package:shelf_easy/shelf_easy.dart';

void main() {
  const dirty = false;
  const query = false;

  final coder1 = EasyCoder(
    config: EasyCoderConfig(
      logLevel: EasyLogLevel.debug,
      absFolder: '${Directory.current.path}/lib/src/engine/model',
    ),
  );

  //Block
  coder1.generateModel(
    EasyCoderModelInfo(
      importList: [],
      classDesc: ['', '元件模型', ''],
      className: 'ZyBlock',
      outputFile: 'zy_block',
      constFields: [],
      classFields: [
        EasyCoderFieldInfo(type: 'int', name: 'type', desc: ['元件类型']),
        EasyCoderFieldInfo(type: 'int', name: 'txId', desc: ['元件标志']),
        EasyCoderFieldInfo(type: 'int', name: 'spId', desc: ['精灵标志']),
        EasyCoderFieldInfo(type: 'int', name: 'fliped', desc: ['翻转，范围: -1 和 1'], defVal: '1'),
        EasyCoderFieldInfo(type: 'int', name: 'rotate', desc: ['旋转，范围: 0~360 度'], defVal: '0'),
        EasyCoderFieldInfo(type: 'int', name: 'rectMV', desc: ['移动的碰撞检测矩形'], defVal: '0'),
        EasyCoderFieldInfo(type: 'int', name: 'rectBT', desc: ['战斗的碰撞检测矩形'], defVal: '0'),
        EasyCoderFieldInfo(type: 'double', name: 'sorter', desc: ['层绘制时的排序参数'], nullAble: true),
      ],
      extraFields: [],
      dirty: dirty,
      query: query,
    ),
  );
  //Coord
  coder1.generateModel(
    EasyCoderModelInfo(
      importList: [],
      classDesc: ['', '坐标模型', ''],
      className: 'ZyCoord',
      outputFile: 'zy_coord',
      constFields: [],
      classFields: [
        EasyCoderFieldInfo(type: 'int', name: 'sid', desc: ['场景标志']),
        EasyCoderFieldInfo(type: 'int', name: 'row', desc: ['正中心行']),
        EasyCoderFieldInfo(type: 'int', name: 'col', desc: ['正中心列']),
        EasyCoderFieldInfo(type: 'int', name: 'dir', desc: ['行走方向']),
        EasyCoderFieldInfo(type: 'int', name: 'rid', desc: ['模型标志、传送标志、形状标志']),
        EasyCoderFieldInfo(type: 'double', name: 'dx', desc: ['正中心x轴方向坐标精确值']),
        EasyCoderFieldInfo(type: 'double', name: 'dy', desc: ['正中心y轴方向坐标精确值']),
        EasyCoderFieldInfo(type: 'double', name: 'dist', desc: ['正中心双轴移动距离精确值']),
      ],
      extraFields: [],
      dirty: dirty,
      query: query,
    ),
  );
  //Movie
  coder1.generateModel(
    EasyCoderModelInfo(
      importList: ['zy_block.dart'],
      classDesc: ['', '动画模型', ''],
      className: 'ZyMovie',
      outputFile: 'zy_movie',
      constFields: [],
      classFields: [
        EasyCoderFieldInfo(type: 'ZyBlock', name: 'main', desc: ['启动图标、填屏背景、模型视图'], nullAble: true),
        EasyCoderFieldInfo(type: 'ZyBlock', name: 'vice', desc: ['开始动画、进场动画、击中动画'], nullAble: true),
        EasyCoderFieldInfo(type: 'ZyBlock', name: 'dirD', desc: ['向下攻击'], nullAble: true),
        EasyCoderFieldInfo(type: 'ZyBlock', name: 'dirL', desc: ['向左攻击'], nullAble: true),
        EasyCoderFieldInfo(type: 'ZyBlock', name: 'dirR', desc: ['向右攻击'], nullAble: true),
        EasyCoderFieldInfo(type: 'ZyBlock', name: 'dirU', desc: ['向上攻击'], nullAble: true),
        EasyCoderFieldInfo(type: 'int', name: 'tone', desc: ['背景音乐标志、击中音乐标志、其它音乐标志'], nullAble: true),
      ],
      extraFields: [],
      dirty: dirty,
      query: query,
    ),
  );
  //Refer
  coder1.generateModel(
    EasyCoderModelInfo(
      importList: [],
      classDesc: ['', '引用模型', ''],
      className: 'ZyRefer',
      outputFile: 'zy_refer',
      constFields: [],
      classFields: [
        EasyCoderFieldInfo(type: 'int', name: 'rid', desc: ['引用的标志']),
        EasyCoderFieldInfo(type: 'int', name: 'cnt', desc: ['引用的计数']),
      ],
      extraFields: [],
      dirty: dirty,
      query: query,
    ),
  );
  //Signal
  coder1.generateModel(
    EasyCoderModelInfo(
      importList: [],
      classDesc: ['', '信令模型', ''],
      className: 'ZySignal',
      outputFile: 'zy_signal',
      constFields: [],
      classFields: [
        EasyCoderFieldInfo(type: 'int', name: 'type', desc: ['信令类型']),
        EasyCoderFieldInfo(type: 'String', name: 'text', desc: ['信令文本']),
      ],
      extraFields: [
        //非序列化字段
        EasyCoderFieldInfo(type: 'int', name: 'ident', desc: ['运行时商店、当铺关联的角色模型标识']),
        EasyCoderFieldInfo(type: 'List<String>', name: 'attrs', desc: ['运行时任意模型的字段属性列表']),
        EasyCoderFieldInfo(type: 'List<ZySignal>', name: 'items', desc: ['运行时菜单子项列表、对话句子列表']),
      ],
      dirty: dirty,
      query: query,
    ),
  );

  coder1.generateBaseExports();
}
