import 'dart:async';
import 'dart:ui' show Image;

import 'package:flutter/material.dart' hide Image;
import 'package:flutter/services.dart';

import '../launch/zy_app.dart';
import 'zy_merger.dart';
import 'zy_sprite.dart';
import 'zy_sprite_sheet.dart';
import 'zy_sprite_style.dart';

///
///纹理基类
///
abstract class ZyTexture {
  ///类型-图块
  static const typeIcon = 0;

  ///类型-角色
  static const typeRole = 1;

  ///类型-动画
  static const typeMovie = 2;

  ///类型-地面
  static const typeFloor = 3;

  ///类型-墙体
  static const typeWall = 4;

  ///类型-瀑布
  static const typeWaterfall = 5;

  ///纹理类型
  final int type;

  ///纹理标志
  final int txId;

  ///纹理路径
  final String path;

  ///纹理图片的切割尺寸
  final Size frameSize;

  ///纹理图片的精灵尺寸
  final double spriteSize;

  ///纹理图片的精灵列表
  final List<ZySprite> _spriteList;

  ///纹理图片解码错误回调
  final void Function(ZyTexture texture, String error)? _onDecodeError;

  ///纹理图片解码监听函数
  final List<void Function(ZyTexture texture, bool success, String message)> _onDecodeListeners;

  ///纹理图片解码正在进行
  bool _isDecoding;

  ///纹理图片解码已经成功
  bool _isDecodeSuccess;

  ///纹理图片解码正在进行
  bool get isDecoding => _isDecoding;

  ///纹理图片解码已经成功
  bool get isDecodeSuccess => _isDecodeSuccess;

  ///本纹理用于显示的精灵实例的副本
  ZySprite get displaySpriteLast => _spriteList.lastOrNull?.clone() ?? (ZySprite(type: type, txId: txId, spId: 0, size: spriteSize)..label = 'None');

  ///本纹理用于显示的精灵实例的副本
  ZySprite get displaySpriteFirst => _spriteList.firstOrNull?.clone() ?? (ZySprite(type: type, txId: txId, spId: 0, size: spriteSize)..label = 'None');

  ///本纹理用于显示的精灵子项的副本
  List<ZySprite> get displaySpriteList => _spriteList.length > 1 ? _spriteList.map((e) => e.clone()).toList() : (_spriteList.lastOrNull?.cloneByGroup() ?? const []);

  ZyTexture._({
    required this.type,
    required this.txId,
    required this.path,
    required this.frameSize,
    required this.spriteSize,
    void Function(ZyTexture texture, String error)? onDecodeError,
  })  : _spriteList = [],
        _onDecodeError = onDecodeError,
        _onDecodeListeners = [],
        _isDecoding = false,
        _isDecodeSuccess = false;

  factory ZyTexture.create({
    required int type,
    required int txId,
    required String path,
    required Size frameSize,
    required double spriteSize,
    void Function(ZyTexture texture, String message)? onDecodeError,
    bool cacheEnable = true,
    bool logCacheState = false,
  }) {
    //从缓存读取
    ZyTexture? texture = cacheEnable ? _textureCache[txId] : null;
    if (texture != null && texture.type == type && texture.path == path && texture.spriteSize == spriteSize) {
      if (logCacheState) {
        if (ZyApp.logLifecycle) ZyApp.logDebug(['game', 'ZyTexture.create() => by old', type, txId]);
      }
      return texture; //无需判断frameSize是否相等，因为这个frameSize是严格符合spriteSize比例的
    }
    //创建新纹理
    switch (type) {
      case typeIcon:
        texture = ZyTextureIcon._(txId: txId, path: path, frameSize: frameSize, spriteSize: spriteSize, onDecodeError: onDecodeError);
        break;
      case typeRole:
        texture = ZyTextureRole._(txId: txId, path: path, frameSize: frameSize, spriteSize: spriteSize, onDecodeError: onDecodeError);
        break;
      case typeMovie:
        texture = ZyTextureMovie._(txId: txId, path: path, frameSize: frameSize, spriteSize: spriteSize, onDecodeError: onDecodeError);
        break;
      case typeFloor:
        texture = ZyTextureFloor._(txId: txId, path: path, frameSize: frameSize, spriteSize: spriteSize, onDecodeError: onDecodeError);
        break;
      case typeWall:
        texture = ZyTextureWall._(txId: txId, path: path, frameSize: frameSize, spriteSize: spriteSize, onDecodeError: onDecodeError);
        break;
      case typeWaterfall:
        texture = ZyTextureWaterfall._(txId: txId, path: path, frameSize: frameSize, spriteSize: spriteSize, onDecodeError: onDecodeError);
        break;
      default:
        throw ('Unsupport texture type $type');
    }
    //缓存新纹理
    if (cacheEnable) {
      _textureCache[txId] = texture;
    }
    if (logCacheState) {
      if (ZyApp.logLifecycle) ZyApp.logInfo(['game', 'ZyTexture.create() => by new', type, txId]);
    }
    return texture;
  }

  ///解析纹理
  Future<bool> decode() {
    if (_isDecodeSuccess) return Future.value(_isDecodeSuccess); //已经成功
    if (_isDecoding) return Future.value(_isDecodeSuccess); //正在解析
    _isDecoding = true; //加锁
    return _decodeImage().then((error) {
      _isDecodeSuccess = error == null;
      _notifyAllListeners(_isDecodeSuccess, error ?? 'succeeded');
      return _isDecodeSuccess;
    }).onError((error, stackTrace) {
      _isDecodeSuccess = false;
      _notifyAllListeners(_isDecodeSuccess, 'unknowError => $error'); //未知错误
      return _isDecodeSuccess;
    }).whenComplete(() {
      _isDecoding = false; //解锁
    });
  }

  ///解析图片
  Future<String?> _decodeImage() async {
    //加载图片
    final image = await _loadImageByPath();
    if (image == null) {
      return 'loadError => $path'; //加载错误
    }
    //检查尺寸
    if (type == typeIcon) {
      if (image.width / frameSize.width != 1 || image.height / frameSize.height != 1) {
        return 'imageSize(${image.width}, ${image.height}) / frameSize(${frameSize.width}, ${frameSize.height}) != (1, 1)';
      }
    } else if (type == typeRole) {
      if (image.width / frameSize.width != 3 || image.height / frameSize.height != 4) {
        return 'imageSize(${image.width}, ${image.height}) / frameSize(${frameSize.width}, ${frameSize.height}) != (3, 4)';
      }
    } else {
      if (image.width % frameSize.width != 0 || image.height % frameSize.height != 0) {
        return 'imageSize(${image.width}, ${image.height}) % frameSize(${frameSize.width}, ${frameSize.height}) != (0, 0)';
      }
    }
    if (spriteSize != spriteSize.toInt()) {
      return 'spriteSize($spriteSize) must be an integer value';
    }
    if (spriteSize < ZySpriteStyle.minSpriteSize) {
      return 'spriteSize($spriteSize) cannot be less than ${ZySpriteStyle.minSpriteSize}';
    }
    switch (type) {
      case typeIcon:
        if (frameSize.width != spriteSize * 1 || frameSize.height != spriteSize * 1) {
          return 'frameSize(${frameSize.width}, ${frameSize.height}) / spriteSize($spriteSize, $spriteSize) != (1, 1)';
        }
      case typeRole:
        if (frameSize.width != spriteSize * 1 || frameSize.height != spriteSize * 1) {
          return 'frameSize(${frameSize.width}, ${frameSize.height}) / spriteSize($spriteSize, $spriteSize) != (1, 1)';
        }
        break;
      case typeMovie:
        if (frameSize.width != spriteSize * 1 || frameSize.height != spriteSize * 1) {
          return 'frameSize(${frameSize.width}, ${frameSize.height}) / spriteSize($spriteSize, $spriteSize) != (1, 1)';
        }
        break;
      case typeFloor:
        if (frameSize.width != spriteSize * 2 || frameSize.height != spriteSize * 3) {
          return 'frameSize(${frameSize.width}, ${frameSize.height}) / spriteSize($spriteSize, $spriteSize) != (2, 3)';
        }
        break;
      case typeWall:
        if (frameSize.width != spriteSize * 2 || frameSize.height != spriteSize * 2) {
          return 'frameSize(${frameSize.width}, ${frameSize.height}) / spriteSize($spriteSize, $spriteSize) != (2, 2)';
        }
        break;
      case typeWaterfall:
        if (frameSize.width != spriteSize * 2 || frameSize.height != spriteSize * 1) {
          return 'frameSize(${frameSize.width}, ${frameSize.height}) / spriteSize($spriteSize, $spriteSize) != (2, 1)';
        }
        break;
    }
    //解析列表
    await _decodeSpriteList(ZySpriteSheet(image: image, srcSize: Size(frameSize.width, frameSize.height)));
    return null;
  }

  ///解析析为精灵列表
  Future<void> _decodeSpriteList(ZySpriteSheet sheet);

  ///解析自动元件纹理
  Future<ZySpriteSheet> _decodeAutoTileFrame(ZySpriteSheet sheet, int frame, List<List<List<int>>> hashList) async {
    final frameImage = await sheet.getSpriteImageById(frame).toImage();
    final tileMerger = ZyMerger();
    final spHalfSize = spriteSize / 2;
    for (var i = 0; i < hashList.length; i++) {
      final dx = (i % autoTileColumn) * spriteSize;
      final dy = (i ~/ autoTileColumn) * spriteSize;
      final pos = hashList[i];
      int n;
      //左上
      n = 0;
      tileMerger.add(image: frameImage, position: Offset(dx, dy), source: Rect.fromLTWH(pos[n][0] * spHalfSize, pos[n][1] * spHalfSize, spHalfSize, spHalfSize));
      //右上
      n = 1;
      tileMerger.add(image: frameImage, position: Offset(dx + spHalfSize, dy), source: Rect.fromLTWH(pos[n][0] * spHalfSize, pos[n][1] * spHalfSize, spHalfSize, spHalfSize));
      //左下
      n = 2;
      tileMerger.add(image: frameImage, position: Offset(dx, dy + spHalfSize), source: Rect.fromLTWH(pos[n][0] * spHalfSize, pos[n][1] * spHalfSize, spHalfSize, spHalfSize));
      //右下
      n = 3;
      tileMerger.add(image: frameImage, position: Offset(dx + spHalfSize, dy + spHalfSize), source: Rect.fromLTWH(pos[n][0] * spHalfSize, pos[n][1] * spHalfSize, spHalfSize, spHalfSize));
    }
    final result = ZySpriteSheet(image: await tileMerger.merge(), srcSize: Size(spriteSize, spriteSize));
    frameImage.dispose(); //这个已经不需要了，需要释放资源
    return result;
  }

  ///加载纹理原始图片
  Future<Image?> _loadImageByPath() async {
    final completer = Completer<Image?>();
    if (path.toLowerCase().startsWith('http://') || path.toLowerCase().startsWith('https://')) {
      NetworkImage(path).resolve(const ImageConfiguration()).addListener(ImageStreamListener((imageInfo, synchronousCall) => completer.complete(imageInfo.image), onError: (error, stack) => completer.complete(null)));
    } else {
      completer.complete(await decodeImageFromList((await _assetBundle.load(path)).buffer.asUint8List()));
    }
    return completer.future;
  }

  ///添加监听器
  void addDecodeListener(void Function(ZyTexture texture, bool success, String message) listener) {
    _onDecodeListeners.add(listener);
  }

  ///删除监听器
  void delDecodeListener(void Function(ZyTexture texture, bool success, String message) listener) {
    _onDecodeListeners.remove(listener);
  }

  ///通知监听器
  void _notifyAllListeners(bool success, String message) {
    if (!success && _onDecodeError != null) {
      _onDecodeError!(this, message);
    }
    for (var e in _onDecodeListeners) {
      e(this, success, message);
    }
  }

  ///本地加载器
  static final _assetBundle = PlatformAssetBundle();

  ///纹理全局缓存
  static final _textureCache = <int, ZyTexture>{};

  ///自动元件列数
  static const autoTileColumn = 8;

  ///自动精灵网格
  static const autoSpriteGrid = <List<int>>[
    [-1, -1],
    [-1, 0],
    [-1, 1],
    [0, -1],
    [0, 0],
    [0, 1],
    [1, -1],
    [1, 0],
    [1, 1]
  ];

  ///清空全局缓存
  static void clearTextureCache() => _textureCache.clear();

  ///根据标志信息读取对应的纹理
  static ZyTexture? getTextureById({required int txId}) => _textureCache[txId];

  ///根据标志信息读取对应的精灵的副本
  static ZySprite? getSpriteByArgs({required int txId, required int spId}) => _textureCache[txId]?._spriteList.elementAtOrNull(spId)?.clone();

  ///根据9宫格读取正中心的精灵的副本
  static ZySprite? getSpriteByGrid({required List<ZySprite?> grid, bool equalNull = true}) {
    //计算自动精灵
    const c = 4;
    const l = 3;
    const r = 5;
    const t = 1;
    const b = 7;
    const lt = 0;
    const rt = 2;
    const lb = 6;
    const rb = 8;
    final cent = grid[c];
    if (cent != null && (cent.type == typeFloor || cent.type == typeWall || cent.type == typeWaterfall)) {
      //计算邻近矩阵
      final centGrid = <bool>[];
      for (var i = 0; i < grid.length; i++) {
        final edge = grid[i];
        if (edge == null) {
          centGrid.add(equalNull); //由equalNull参数决定是否当做同种自动精灵
        } else {
          centGrid.add(edge.txId == cent.txId);
        }
      }
      //计算映射索引
      int autoIndex;
      if (cent.type == typeFloor) {
        int value = 0;
        if (centGrid[l]) value |= 128; //0b10000000;
        if (centGrid[r]) value |= 64; //0b01000000;
        if (centGrid[t]) value |= 32; //0b00100000;
        if (centGrid[b]) value |= 16; //0b00010000;
        if (centGrid[lt] && centGrid[l] && centGrid[t]) value |= 8; //0b00001000;
        if (centGrid[rt] && centGrid[r] && centGrid[t]) value |= 4; //0b00000100;
        if (centGrid[lb] && centGrid[l] && centGrid[b]) value |= 2; //0b00000010;
        if (centGrid[rb] && centGrid[r] && centGrid[b]) value |= 1; //0b00000001;
        autoIndex = _autoTitleQueryFloor.indexOf(value);
        autoIndex = autoIndex >= 0 ? autoIndex : (_autoTitleQueryFloor.length - 1);
      } else if (cent.type == typeWall) {
        int value = 0;
        if (centGrid[l]) value |= 8; //0b1000;
        if (centGrid[r]) value |= 4; //0b0100;
        if (centGrid[t]) value |= 2; //0b0010;
        if (centGrid[b]) value |= 1; //0b0001;
        autoIndex = _autoTitleQueryWall.indexOf(value);
        autoIndex = autoIndex >= 0 ? autoIndex : (_autoTitleQueryWall.length - 1);
      } else if (cent.type == typeWaterfall) {
        int value = 0;
        if (centGrid[l]) value |= 2; //0b10;
        if (centGrid[r]) value |= 1; //0b01;
        autoIndex = _autoTitleQueryWaterfall.indexOf(value);
        autoIndex = autoIndex >= 0 ? autoIndex : (_autoTitleQueryWaterfall.length - 1);
      } else {
        autoIndex = cent.spId;
      }
      return getSpriteByArgs(txId: cent.txId, spId: autoIndex) ?? cent.clone();
    } else {
      //正中心非自动精灵
      return cent?.clone();
    }
  }
}

///
///图块纹理
///
class ZyTextureIcon extends ZyTexture {
  ZyTextureIcon._({
    required super.txId,
    required super.path,
    required super.frameSize,
    required super.spriteSize,
    required super.onDecodeError,
  }) : super._(type: ZyTexture.typeIcon);

  @override
  Future<void> _decodeSpriteList(ZySpriteSheet sheet) async {
    final total = sheet.totalRow * sheet.totalCol;
    const spId = 0;
    _spriteList.add(
      ZySprite(
        type: type,
        txId: txId,
        spId: spId,
        size: spriteSize,
        imageList: {for (var id = 0; id < total; id++) sheet.getSpriteImageById(id)}.toList(),
      ),
    );
  }
}

///
///角色纹理
///
class ZyTextureRole extends ZyTexture {
  ZyTextureRole._({
    required super.txId,
    required super.path,
    required super.frameSize,
    required super.spriteSize,
    required super.onDecodeError,
  }) : super._(type: ZyTexture.typeRole);

  @override
  Future<void> _decodeSpriteList(ZySpriteSheet sheet) async {
    final total = sheet.totalRow * sheet.totalCol;
    const spId = 0;
    _spriteList.add(
      ZySprite(
        type: type,
        txId: txId,
        spId: spId,
        size: spriteSize,
        imageList: {for (var id = 0; id < total; id++) sheet.getSpriteImageById(id)}.toList(),
      )..initGroups(directFramesMap),
    );
  }

  ///向下
  static const directD = 0;

  ///向左
  static const directL = 1;

  ///向右
  static const directR = 2;

  ///向上
  static const directU = 3;

  ///分组
  static const directFramesMap = {
    directD: [1, 2, 0],
    directL: [4, 5, 3],
    directR: [7, 8, 6],
    directU: [10, 11, 9],
  };
}

///
///动画纹理
///
class ZyTextureMovie extends ZyTexture {
  ZyTextureMovie._({
    required super.txId,
    required super.path,
    required super.frameSize,
    required super.spriteSize,
    required super.onDecodeError,
  }) : super._(type: ZyTexture.typeMovie);

  @override
  Future<void> _decodeSpriteList(ZySpriteSheet sheet) async {
    final total = sheet.totalRow * sheet.totalCol;
    const spId = 0;
    _spriteList.add(
      ZySprite(
        type: type,
        txId: txId,
        spId: spId,
        size: spriteSize,
        imageList: {for (var id = 0; id < total; id++) sheet.getSpriteImageById(id)}.toList(),
      ),
    );
  }
}

///
///地面纹理
///
class ZyTextureFloor extends ZyTexture {
  ZyTextureFloor._({
    required super.txId,
    required super.path,
    required super.frameSize,
    required super.spriteSize,
    required super.onDecodeError,
  }) : super._(type: ZyTexture.typeFloor);

  @override
  Future<void> _decodeSpriteList(ZySpriteSheet sheet) async {
    final total = sheet.totalRow * sheet.totalCol;
    const hashList = _autoTileHashFloor;
    final childSheets = <ZySpriteSheet>[];
    for (var frame = 0; frame < total; frame++) {
      childSheets.add(await _decodeAutoTileFrame(sheet, frame, hashList));
    }
    for (var spId = 0; spId < hashList.length; spId++) {
      _spriteList.add(
        ZySprite(
          type: type,
          txId: txId,
          spId: spId,
          size: spriteSize,
          imageList: childSheets.map((e) => e.getSpriteImageById(spId)).toList(),
        ),
      );
    }
  }
}

///
///墙体纹理
///
class ZyTextureWall extends ZyTexture {
  ZyTextureWall._({
    required super.txId,
    required super.path,
    required super.frameSize,
    required super.spriteSize,
    required super.onDecodeError,
  }) : super._(type: ZyTexture.typeWall);

  @override
  Future<void> _decodeSpriteList(ZySpriteSheet sheet) async {
    final total = sheet.totalRow * sheet.totalCol;
    const hashList = _autoTileHashWall;
    final childSheets = <ZySpriteSheet>[];
    for (var frame = 0; frame < total; frame++) {
      childSheets.add(await _decodeAutoTileFrame(sheet, frame, hashList));
    }
    for (var spId = 0; spId < hashList.length; spId++) {
      _spriteList.add(
        ZySprite(
          type: type,
          txId: txId,
          spId: spId,
          size: spriteSize,
          imageList: childSheets.map((e) => e.getSpriteImageById(spId)).toList(),
        ),
      );
    }
  }
}

///
///瀑布纹理
///
class ZyTextureWaterfall extends ZyTexture {
  ZyTextureWaterfall._({
    required super.txId,
    required super.path,
    required super.frameSize,
    required super.spriteSize,
    required super.onDecodeError,
  }) : super._(type: ZyTexture.typeWaterfall);

  @override
  Future<void> _decodeSpriteList(ZySpriteSheet sheet) async {
    final total = sheet.totalRow * sheet.totalCol;
    const hashList = _autoTileHashWaterfall;
    final childSheets = <ZySpriteSheet>[];
    for (var frame = 0; frame < total; frame++) {
      childSheets.add(await _decodeAutoTileFrame(sheet, frame, hashList));
    }
    for (var spId = 0; spId < hashList.length; spId++) {
      _spriteList.add(
        ZySprite(
          type: type,
          txId: txId,
          spId: spId,
          size: spriteSize,
          imageList: childSheets.map((e) => e.getSpriteImageById(spId)).toList(),
        ),
      );
    }
  }
}

///自动元件地面映射
const _autoTileHashFloor = [
  [
    [2, 4],
    [1, 4],
    [2, 3],
    [1, 3]
  ],
  [
    [2, 0],
    [1, 4],
    [2, 3],
    [1, 3]
  ],
  [
    [2, 4],
    [3, 0],
    [2, 3],
    [1, 3]
  ],
  [
    [2, 0],
    [3, 0],
    [2, 3],
    [1, 3]
  ],
  [
    [2, 4],
    [1, 4],
    [2, 3],
    [3, 1]
  ],
  [
    [2, 0],
    [1, 4],
    [2, 3],
    [3, 1]
  ],
  [
    [2, 4],
    [3, 0],
    [2, 3],
    [3, 1]
  ],
  [
    [2, 0],
    [3, 0],
    [2, 3],
    [3, 1]
  ],
  [
    [2, 4],
    [1, 4],
    [2, 1],
    [1, 3]
  ],
  [
    [2, 0],
    [1, 4],
    [2, 1],
    [1, 3]
  ],
  [
    [2, 4],
    [3, 0],
    [2, 1],
    [1, 3]
  ],
  [
    [2, 0],
    [3, 0],
    [2, 1],
    [1, 3]
  ],
  [
    [2, 4],
    [1, 4],
    [2, 1],
    [3, 1]
  ],
  [
    [2, 0],
    [1, 4],
    [2, 1],
    [3, 1]
  ],
  [
    [2, 4],
    [3, 0],
    [2, 1],
    [3, 1]
  ],
  [
    [2, 0],
    [3, 0],
    [2, 1],
    [3, 1]
  ],
  [
    [0, 4],
    [1, 4],
    [0, 3],
    [1, 3]
  ],
  [
    [0, 4],
    [3, 0],
    [0, 3],
    [1, 3]
  ],
  [
    [0, 4],
    [1, 4],
    [0, 3],
    [3, 1]
  ],
  [
    [0, 4],
    [3, 0],
    [0, 3],
    [3, 1]
  ],
  [
    [2, 2],
    [1, 2],
    [2, 3],
    [1, 3]
  ],
  [
    [2, 2],
    [1, 2],
    [2, 3],
    [3, 1]
  ],
  [
    [2, 2],
    [1, 2],
    [2, 1],
    [1, 3]
  ],
  [
    [2, 2],
    [1, 2],
    [2, 1],
    [3, 1]
  ],
  [
    [2, 4],
    [3, 4],
    [2, 3],
    [3, 3]
  ],
  [
    [2, 4],
    [3, 4],
    [2, 1],
    [3, 3]
  ],
  [
    [2, 0],
    [3, 4],
    [2, 3],
    [3, 3]
  ],
  [
    [2, 0],
    [3, 4],
    [2, 1],
    [3, 3]
  ],
  [
    [2, 4],
    [1, 4],
    [2, 5],
    [1, 5]
  ],
  [
    [2, 0],
    [1, 4],
    [2, 5],
    [1, 5]
  ],
  [
    [2, 4],
    [3, 0],
    [2, 5],
    [1, 5]
  ],
  [
    [2, 0],
    [3, 0],
    [2, 5],
    [1, 5]
  ],
  [
    [0, 4],
    [3, 4],
    [0, 3],
    [3, 3]
  ],
  [
    [2, 2],
    [1, 2],
    [2, 5],
    [1, 5]
  ],
  [
    [0, 2],
    [1, 2],
    [0, 3],
    [1, 3]
  ],
  [
    [0, 2],
    [1, 2],
    [0, 3],
    [3, 1]
  ],
  [
    [2, 2],
    [3, 2],
    [2, 3],
    [3, 3]
  ],
  [
    [2, 2],
    [3, 2],
    [2, 1],
    [3, 3]
  ],
  [
    [2, 4],
    [3, 4],
    [2, 5],
    [3, 5]
  ],
  [
    [2, 0],
    [3, 4],
    [2, 5],
    [3, 5]
  ],
  [
    [0, 4],
    [1, 4],
    [0, 5],
    [1, 5]
  ],
  [
    [0, 4],
    [3, 0],
    [0, 5],
    [1, 5]
  ],
  [
    [0, 2],
    [3, 2],
    [0, 3],
    [3, 3]
  ],
  [
    [0, 2],
    [1, 2],
    [0, 5],
    [1, 5]
  ],
  [
    [0, 4],
    [3, 4],
    [0, 5],
    [3, 5]
  ],
  [
    [2, 2],
    [3, 2],
    [2, 5],
    [3, 5]
  ],
  [
    [0, 2],
    [3, 2],
    [0, 5],
    [3, 5]
  ],
  [
    [0, 0],
    [1, 0],
    [0, 1],
    [1, 1]
  ]
];

///自动元件墙体映射
const _autoTileHashWall = [
  [
    [2, 2],
    [1, 2],
    [2, 1],
    [1, 1]
  ],
  [
    [0, 2],
    [1, 2],
    [0, 1],
    [1, 1]
  ],
  [
    [2, 0],
    [1, 0],
    [2, 1],
    [1, 1]
  ],
  [
    [0, 0],
    [1, 0],
    [0, 1],
    [1, 1]
  ],
  [
    [2, 2],
    [3, 2],
    [2, 1],
    [3, 1]
  ],
  [
    [0, 2],
    [3, 2],
    [0, 1],
    [3, 1]
  ],
  [
    [2, 0],
    [3, 0],
    [2, 1],
    [3, 1]
  ],
  [
    [0, 0],
    [3, 0],
    [0, 1],
    [3, 1]
  ],
  [
    [2, 2],
    [1, 2],
    [2, 3],
    [1, 3]
  ],
  [
    [0, 2],
    [1, 2],
    [0, 3],
    [1, 3]
  ],
  [
    [2, 0],
    [1, 0],
    [2, 3],
    [1, 3]
  ],
  [
    [0, 0],
    [1, 0],
    [0, 3],
    [1, 3]
  ],
  [
    [2, 2],
    [3, 2],
    [2, 3],
    [3, 3]
  ],
  [
    [0, 2],
    [3, 2],
    [0, 3],
    [3, 3]
  ],
  [
    [2, 0],
    [3, 0],
    [2, 3],
    [3, 3]
  ],
  [
    [0, 0],
    [3, 0],
    [0, 3],
    [3, 3]
  ]
];

///自动元件瀑布映射
const _autoTileHashWaterfall = [
  [
    [2, 0],
    [1, 0],
    [2, 1],
    [1, 1]
  ],
  [
    [0, 0],
    [1, 0],
    [0, 1],
    [1, 1]
  ],
  [
    [2, 0],
    [3, 0],
    [2, 1],
    [3, 1]
  ],
  [
    [0, 0],
    [3, 0],
    [0, 1],
    [3, 1]
  ]
];

///自动元件地面查询
final _autoTitleQueryFloor = [
  //有4边（1种）此时所有角都有影响力，4个角有16种出现情况。所以共有1*16=16种情况。即情况0-15
  int.parse('11111111', radix: 2), //00 Center (No edges)
  int.parse('11110111', radix: 2), //01 ↖ (Outside Corner) Edge
  int.parse('11111011', radix: 2), //02 ↗ (OC) Edge
  int.parse('11110011', radix: 2), //03 ↖↗ (OC) Edges
  int.parse('11111110', radix: 2), //04 ↘ (OC) Edges
  int.parse('11110110', radix: 2), //05 ↖↘ (OC) Edges
  int.parse('11111010', radix: 2), //06 ↗↘ (OC) Edges
  int.parse('11110010', radix: 2), //07 ↖↗↘ (OC) Edges
  int.parse('11111101', radix: 2), //08 ↙ (OC) Edge
  int.parse('11110101', radix: 2), //09 ↖↙ (OC) Edges
  int.parse('11111001', radix: 2), //10 ↙↗ (OC) Edges
  int.parse('11110001', radix: 2), //11 ↖↙↗ (OC) Edges
  int.parse('11111100', radix: 2), //12 ↙↘ (OC) Edges
  int.parse('11110100', radix: 2), //13 ↖↙↘ (OC) Edges
  int.parse('11111000', radix: 2), //14 ↙↗↘ (OC) Edges
  int.parse('11110000', radix: 2), //15 ↖↗↙↘ (OC) edges
  //有3边（4种）考虑左上右同时出现，此时左上角和右上角有影响力，2个角有4种出现情况。所以共有4*4=16种情况。即情况16-31
  int.parse('01110101', radix: 2), //16 ← Edge
  int.parse('01110001', radix: 2), //17 ←, ↗ (OC) Edges
  int.parse('01110100', radix: 2), //18 ←, ↘ (OC) Edges
  int.parse('01110000', radix: 2), //19 ←, ↗↘ (OC) Edges
  int.parse('11010011', radix: 2), //20 ↑ Edge
  int.parse('11010010', radix: 2), //21 ↑, ↘ (OC) Edges
  int.parse('11010001', radix: 2), //22 ↑, ↙ (OC) Edges
  int.parse('11010000', radix: 2), //23 ↑, ↙↘ (OC) Edges
  int.parse('10111010', radix: 2), //24 → Edge
  int.parse('10111000', radix: 2), //25 →, ↙ (OC) Edges
  int.parse('10110010', radix: 2), //26 →, ↖ (OC) Edges
  int.parse('10110000', radix: 2), //27 →, ↖↙ (OC) Edges
  int.parse('11101100', radix: 2), //28 ↓ Edge
  int.parse('11100100', radix: 2), //29 ↓, ↖ (OC) Edges
  int.parse('11101000', radix: 2), //30 ↓, ↗ (OC) Edges
  int.parse('11100000', radix: 2), //31 ↓, ↖↗ (OC) Edges
  //有2边，对边情况（2种）即左边和右边同时出现，或者上边和下边同时出现，此时对角依然全失去影响力。位置4只有2种情况，即情况32,33
  int.parse('00110000', radix: 2), //32 ←→ Edges
  int.parse('11000000', radix: 2), //33 ↑↓ Edges
  //有2边，临边情况（4种）考虑左边和上边同时出现，此时左上角有影响力，有左上角出现与不出现2种情况。其他临边情况一样。位置4共有4*2=8种情况，即情况34-41
  int.parse('01010001', radix: 2), //34 ↖ (Inside Corner) Edge
  int.parse('01010000', radix: 2), //35 ↖ (IC), ↘ (OC) Edge
  int.parse('10010010', radix: 2), //36 ↗ (IC) Edge
  int.parse('10010000', radix: 2), //37 ↗ (IC), ↙ (OC) Edge
  int.parse('10101000', radix: 2), //38 ↘ (IC) Edge
  int.parse('10100000', radix: 2), //39 ↖ (OC), ↘ (IC) Edge
  int.parse('01100100', radix: 2), //40 ↙ (IC) Edge
  int.parse('01100000', radix: 2), //41 ↙ (IC), ↗ (OC) Edge
  //有1边（4种）此时对角依然全失去影响力。位置4只有4种情况，即情况42,43,44,45
  int.parse('00010000', radix: 2), //42 ↑←→ Edges
  int.parse('01000000', radix: 2), //43 ↑←↓ Edges
  int.parse('00100000', radix: 2), //44 ↓←→ Edges
  int.parse('10000000', radix: 2), //45 ↑→↓ Edges
  //4边都没有（1种）此时对角全失去影响力。位置4只有1种情况，即情况编号46
  int.parse('00000000', radix: 2), //46 ↖↗↙↘ (IC) Edges
];

///自动元件墙体查询
final _autoTitleQueryWall = [
  int.parse('1111', radix: 2), //00 Center (No edges)
  int.parse('0111', radix: 2), //01 ← Edge
  int.parse('1101', radix: 2), //02 ↑ Edge
  int.parse('0101', radix: 2), //03 ↖ Edge
  int.parse('1011', radix: 2), //04 → Edge
  int.parse('0011', radix: 2), //05 ←→ Edges
  int.parse('1001', radix: 2), //06 ↗ Edge
  int.parse('0001', radix: 2), //07 ↑←→ Edges
  int.parse('1110', radix: 2), //08 ↓ Edge
  int.parse('0110', radix: 2), //09 ↙ Edge
  int.parse('1100', radix: 2), //10 ↑↓ Edges
  int.parse('0100', radix: 2), //11 ←↑↓ Edges
  int.parse('1010', radix: 2), //12 ↘ Edge
  int.parse('0010', radix: 2), //13 ↓←→ Edges
  int.parse('1000', radix: 2), //14 →↑↓ Edges
  int.parse('0000', radix: 2), //15 ←→↑↓ Edges
];

///自动元件瀑布查询
final _autoTitleQueryWaterfall = [
  int.parse('11', radix: 2), //00 Center (No edges)
  int.parse('01', radix: 2), //01 ← Edge
  int.parse('10', radix: 2), //02 → Edge
  int.parse('00 ', radix: 2), //03 ← and → Edge
];
