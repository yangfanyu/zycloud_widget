import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shelf_easy/shelf_easy.dart';

///
///游戏世界
///
class ZyWorld with VmSuper {
  ///帧间隔队列数
  final int fpsMaxQueue;

  ///是否需要重绘
  bool needRepaint;

  ///是否已经暂停
  bool _isPaused;

  ///当前画布尺寸
  Size _canvasSize;

  ///当前画布尺寸
  bool get isPaused => _isPaused;

  ///当前画布尺寸
  Size get canvasSize => _canvasSize;

  ZyWorld({
    this.fpsMaxQueue = 120,
    this.needRepaint = true,
  })  : _isPaused = false,
        _canvasSize = const Size(320, 680);

  ///暂停
  @nonVirtual
  void pause() => _isPaused = true;

  ///恢复
  @nonVirtual
  void resume() => _isPaused = false;

  ///更新数据。[tm]为毫秒时间戳，[dt]为本次帧间隔，[fps]为平均刷帧率
  void onUpdate(int tm, double dt, double fps) {
    if (isInitedByVmware && hasChildProperty('onUpdate')) {
      VmObject.readValue(getProperty('onUpdate').runFunction([tm, dt, fps], null));
    }
  }

  ///更新数据。[tm]为毫秒时间戳，[dt]为本次帧间隔，[fps]为平均刷帧率，[canvas]为画布实例
  void onRender(int tm, double dt, double fps, Canvas canvas) {
    if (isInitedByVmware && hasChildProperty('onRender')) {
      VmObject.readValue(getProperty('onRender').runFunction([tm, dt, fps, canvas], null));
    }
  }

  ///按键处理
  KeyEventResult onKeyEvent(RawKeyEvent event) {
    if (isInitedByVmware && hasChildProperty('onKeyEvent')) {
      return VmObject.readValue(getProperty('onKeyEvent').runFunction([event], null));
    } else {
      return KeyEventResult.skipRemainingHandlers;
    }
  }
}

///
///游戏世界小部件
///
class ZyWorldWidget extends StatefulWidget {
  ///游戏世界
  final ZyWorld world;

  ///游戏手柄
  final Widget? handle;

  const ZyWorldWidget({
    super.key,
    required this.world,
    this.handle,
  });

  @override
  State<StatefulWidget> createState() => _ZyWorldWidgetState();
}

///
///游戏世界小部件
///
class _ZyWorldWidgetState extends State<ZyWorldWidget> with SingleTickerProviderStateMixin {
  ///动画控制器
  late final AnimationController _controller;

  ///动画的实例
  late final Animation<double> _animation;

  ///键盘的焦点
  late final FocusNode _focusNode;

  ///帧间隔队列
  late final Queue<double> _queueDt;

  ///上次刷帧时间
  int _lastMillis = 0;

  ///本次刷帧时间
  int _currMillis = 0;

  ///帧间隔总和
  double _sumDt = 0;

  ///本次帧间隔
  double _dt = 0;

  ///平均刷帧率
  double _fps = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(seconds: 1), vsync: this)..repeat();
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _focusNode = FocusNode(onKey: (node, event) => widget.world.onKeyEvent(event));
    _queueDt = Queue<double>();
    _lastMillis = 0; //不要设置为当前时间，否则第一帧_sumDt为0，计算得到的_fps为Infinity or NaN
    _currMillis = DateTime.now().millisecondsSinceEpoch;
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final world = widget.world;
    return LayoutBuilder(
      builder: (context, constraints) {
        world._canvasSize = Size(constraints.maxWidth, constraints.maxHeight); //同步画布尺寸
        return RawKeyboardListener(
          focusNode: _focusNode,
          autofocus: true,
          // onKey: world.onKeyEvent,//注释掉原因：没有返回值，无法停止macos上的嘟嘟声
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              //计算本次帧间隔
              _currMillis = DateTime.now().millisecondsSinceEpoch;
              _dt = (_currMillis - _lastMillis) / 1000;
              _lastMillis = _currMillis;
              //计算平均刷帧率
              _queueDt.addLast(_dt);
              _sumDt += _dt;
              if (_queueDt.length > world.fpsMaxQueue) {
                _sumDt -= _queueDt.removeFirst();
              }
              _fps = _queueDt.length / _sumDt;
              //更新场景的数据
              world.onUpdate(_currMillis, _dt, _fps);
              return CustomPaint(
                size: world._canvasSize,
                painter: _ZyWorldPainter(world: world, tm: _currMillis, dt: _dt, fps: _fps),
                child: widget.handle,
              );
            },
          ),
        );
      },
    );
  }
}

class _ZyWorldPainter extends CustomPainter {
  final ZyWorld world;
  final int tm;
  final double dt;
  final double fps;

  _ZyWorldPainter({
    required this.world,
    required this.tm,
    required this.dt,
    required this.fps,
  });

  @override
  void paint(Canvas canvas, Size size) {
    world.onRender(tm, dt, fps, canvas);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    if (world.needRepaint) {
      world.needRepaint = false;
      return true;
    } else {
      return false;
    }
  }
}
