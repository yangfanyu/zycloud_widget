import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../launch/zy_app.dart';
import 'zy_sprite.dart';
import 'zy_texture.dart';

///
///纹理小部件
///
class ZyTextureWidget extends StatefulWidget {
  ///精灵对象，设置[texture]后会忽略[sprite]
  final ZySprite? sprite;

  ///纹理对象，设置[texture]后会忽略[sprite]
  final ZyTexture? texture;

  ///是否自动播放帧动画
  final bool autoPlay;

  ///是否为主内容强制使用[FittedBox]包装：即当主内容实际尺寸小于容器时，是否也自动放大到容器尺寸
  final bool forceFitted;

  ///是否在[sprite]生效时创建副本：为方便显示翻转旋转情况且本小部件内部不会修改任何属性，所以默认值为false
  final bool cloneSprite;

  ///是否要展开显示内容的子项
  final bool displayItems;

  ///自动播放帧动画间隔（毫秒）
  final int tweenMillis;

  ///占位的小部件是否在主内容的[_ZyTextureWidgetState._sprite] 不为null 但 isEmpty为true 时启用
  final bool blankEmpty;

  ///占位的小部件是否使用[FittedBox]包装
  final bool blankFitted;

  ///占位的小部件
  final Widget? blankWidget;

  ///占位图标尺寸
  final double? blankIconSize;

  ///占位图标颜色
  final Color? blankIconColor;

  ///是否打印调试信息
  final bool logDebugInfo;

  ///是否打印帧的循环
  final bool logFrameCycle;

  ///只播放一次就停止播放的回调函数
  final void Function()? oncePlayFinished;

  const ZyTextureWidget({
    super.key,
    this.texture,
    this.sprite,
    this.autoPlay = true,
    this.forceFitted = true,
    this.cloneSprite = false,
    this.displayItems = false,
    this.tweenMillis = 100,
    this.blankEmpty = false,
    this.blankFitted = false,
    this.blankWidget,
    this.blankIconSize,
    this.blankIconColor = Colors.grey,
    this.logDebugInfo = false,
    this.logFrameCycle = false,
    this.oncePlayFinished,
  });

  @override
  State<StatefulWidget> createState() => _ZyTextureWidgetState();

  ///实例重绘标志
  int? get repaintId => texture?.hashCode ?? sprite?.hashCode;
}

///
///纹理小部件状态
///
class _ZyTextureWidgetState extends State<ZyTextureWidget> {
  ///小部件的实例绑定
  ZyTexture? _repaintTx;

  ///小部件的重绘标志
  int? _repaintId;

  ///主精灵对象
  ZySprite? _sprite;

  ///子精灵列表
  List<ZySprite>? _spriteList;

  ///帧动画的计时器
  Timer? _timer;

  ///状态的日志标签
  String get _stateLogLabel => 'ZyTextureWidget#$hashCode';

  @override
  void dispose() {
    _repaintTx?.delDecodeListener(_onDecodeListener); //避免内存泄漏
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final needRepaint = _syncRepaint(); //每次构建时都同步一次重绘状态
    if (_sprite == null || (_sprite!.isEmpty && widget.blankEmpty)) {
      if (widget.blankFitted) {
        return FittedBox(
          child: widget.blankWidget ?? Icon(Icons.image_outlined, size: widget.blankIconSize, color: widget.blankIconColor),
        );
      } else {
        return Center(
          child: widget.blankWidget ?? Icon(Icons.image_outlined, size: widget.blankIconSize, color: widget.blankIconColor),
        );
      }
    } else {
      return LayoutBuilder(
        builder: (context, constraints) {
          final totalRow = _spriteList == null || _spriteList!.isEmpty ? 1.0 : (1.25 + (_spriteList!.length / ZyTexture.autoTileColumn).ceil());
          final totalCol = _spriteList == null || _spriteList!.isEmpty ? 1.0 : min(ZyTexture.autoTileColumn, _spriteList!.length).toDouble();
          final paintSize = Size(_sprite!.size * totalCol, _sprite!.size * totalRow);
          if (widget.forceFitted || paintSize.width > constraints.maxWidth || paintSize.height > constraints.maxHeight) {
            return FittedBox(
              child: CustomPaint(
                size: paintSize,
                painter: _ZyTextureWidgetPainter(
                  sprite: _sprite!,
                  spriteList: _spriteList ?? const [],
                  totalRow: totalRow,
                  totalCol: totalCol,
                  forceRepaint: _timer != null || needRepaint,
                ),
              ),
            );
          } else {
            return Center(
              child: CustomPaint(
                size: paintSize,
                painter: _ZyTextureWidgetPainter(
                  sprite: _sprite!,
                  spriteList: _spriteList ?? const [],
                  totalRow: totalRow,
                  totalCol: totalCol,
                  forceRepaint: _timer != null || needRepaint,
                ),
              ),
            );
          }
        },
      );
    }
  }

  ///同步新重绘标志，当[widget]实例变化后，需要刷新小部件，并释放掉旧资源
  bool _syncRepaint() {
    if (_repaintId != widget.repaintId) {
      if (widget.logDebugInfo) {
        if (ZyApp.logLifecycle) ZyApp.logDebug(['game', '$_stateLogLabel._syncRepaint() =>', _repaintId, widget.repaintId]);
      }
      //旧实例移除监听
      _repaintTx?.delDecodeListener(_onDecodeListener); //避免内存泄漏
      //绑定新数据内容
      _repaintTx = widget.texture;
      _repaintId = widget.repaintId;
      //重设置绘制数据
      _resetRenderDatas();
      //新实例绑定监听
      _repaintTx?.addDecodeListener(_onDecodeListener);
      //新实例尝试解析
      _repaintTx?.decode();
      return true;
    } else {
      return false;
    }
  }

  void _resetRenderDatas() {
    //重置精灵集
    if (widget.texture != null) {
      _sprite = widget.texture?.displaySpriteLast; //取最后一项
      _spriteList = widget.displayItems ? widget.texture?.displaySpriteList : null;
    } else if (widget.sprite != null) {
      _sprite = widget.cloneSprite ? widget.sprite?.clone() : widget.sprite;
      _spriteList = widget.displayItems ? widget.sprite?.cloneByGroup() : null;
    } else {
      _sprite = null;
      _spriteList = null;
    }
    //重置计时器
    _timer?.cancel();
    final hasMovieSprite = (_sprite != null && _sprite!.isMovie) || (_spriteList != null && _spriteList!.any((e) => e.isMovie));
    if (widget.autoPlay && hasMovieSprite) {
      _timer = Timer.periodic(Duration(milliseconds: widget.tweenMillis), (timer) => _onAutoPlayFrames());
    } else {
      _timer = null; //清空
    }
  }

  void _onDecodeListener(ZyTexture texture, bool success, String message) {
    if (success) {
      //重置
      _resetRenderDatas();
      //刷新
      if (mounted) {
        setState(() {});
      }
    } else {
      ZyApp.logError(['game', '$_stateLogLabel._onDecodeListener() =>', texture.type, texture.txId, texture.path, success, message]);
      // _resetRenderDatas(); //解析失败的情况，数据与_syncRepaint()时一致，不需要再次重置数据
    }
  }

  void _onAutoPlayFrames() {
    if (widget.logFrameCycle) {
      if (ZyApp.logLifecycle) ZyApp.logDebug(['game', '$_stateLogLabel._onAutoPlayFrames()']);
    }
    if (widget.oncePlayFinished != null && _sprite != null && _sprite!.isEnd) {
      //只播放一次
      _timer?.cancel();
      _timer = null;
      widget.oncePlayFinished!();
    } else {
      //循环的播放
      if (mounted) {
        setState(() {
          if (_sprite != null) {
            _sprite!.nextFrame();
          }
          if (_spriteList != null) {
            for (var spriteItem in _spriteList!) {
              spriteItem.nextFrame();
            }
          }
        });
      }
    }
  }
}

///
///纹理小部件绘制器
///
class _ZyTextureWidgetPainter extends CustomPainter {
  ///主精灵对象
  final ZySprite sprite;

  ///子精灵列表
  final List<ZySprite> spriteList;

  ///行数
  final double totalRow;

  ///列数
  final double totalCol;

  ///强制重绘
  final bool forceRepaint;

  _ZyTextureWidgetPainter({
    required this.sprite,
    required this.spriteList,
    required this.totalRow,
    required this.totalCol,
    required this.forceRepaint,
  });

  @override
  void paint(Canvas canvas, Size size) {
    //绘制单个
    sprite
      ..setRcOffset(row: 0, col: (totalCol / 2) - 0.5, unitSize: sprite.size)
      ..render(canvas, useRc: true);
    //绘制列表
    for (var i = 0; i < spriteList.length; i++) {
      final item = spriteList[i];
      final row = i ~/ totalCol + 1.25;
      final col = i % totalCol + 0.0;
      item
        ..setRcOffset(row: row, col: col, unitSize: sprite.size)
        ..render(canvas, useRc: true);
    }
  }

  @override
  bool shouldRepaint(_ZyTextureWidgetPainter oldDelegate) => forceRepaint || sprite != sprite || spriteList != spriteList;
}
