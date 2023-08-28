import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shelf_easy/shelf_easy.dart';

import 'zy_app.dart';

///
///局部刷新的小部件
///
class ZyWatch extends StatefulWidget {
  ///小部件的名称
  final String widgetName;

  ///小部件观察器
  final List<ZyWatchController> watchControllers;

  ///小部件构建器
  final Widget Function(BuildContext context) render;

  const ZyWatch({
    super.key,
    this.widgetName = 'ZyWatch',
    required this.watchControllers,
    required this.render,
  });

  ///小部件日志标签
  @nonVirtual
  String get widgetLogLabel => '$widgetName#$hashCode';

  ///观察器日志标签
  @nonVirtual
  List<String> get watchControllersLogLabels => watchControllers.map((e) => e.controllerLogLabel).toList();

  ///默认的路由名称
  @nonVirtual
  String get defaultRouteName => '/$widgetLogLabel'; // '/${runtimeType.toString().split('<').first}#$hashCode';

  @nonVirtual
  @override
  State<ZyWatch> createState() => _ZyWatchState();
}

///
///局部刷新的小部件状态
///
class _ZyWatchState extends State<ZyWatch> implements ZyWatchTarget {
  ///状态的日志标签
  String get stateLogLabel => '${widget.widgetName}State#$hashCode';

  @override
  void initState() {
    super.initState();
    if (ZyApp.logLifecycle) ZyApp.logInfo(['watch', '${widget.widgetLogLabel}_$stateLogLabel.initState()', '===>', widget.watchControllers.length, widget.watchControllersLogLabels]);
    for (var controller in widget.watchControllers) {
      controller.addWatchTarget(this);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (ZyApp.logLifecycle) ZyApp.logInfo(['watch', '${widget.widgetLogLabel}_$stateLogLabel.build()', '===>', widget.watchControllers.length, widget.watchControllersLogLabels]);
    return widget.render(context);
  }

  @override
  void dispose() {
    for (var controller in widget.watchControllers) {
      controller.delWatchTarget(this);
    }
    if (ZyApp.logLifecycle) ZyApp.logInfo(['watch', '${widget.widgetLogLabel}_$stateLogLabel.dispose()', '===>', widget.watchControllers.length, widget.watchControllersLogLabels]);
    super.dispose();
  }

  @override
  bool onPacket(EasyPacket packet) => false;

  @override
  void refresh() {
    if (mounted) {
      setState(() {});
    }
  }
}

///
///局部刷新的小部件状态接口
///
abstract class ZyWatchTarget {
  ///处理包装数据，返回值为true时，表示本方法内部已经手动调用[refresh]函数，无需自动调用
  bool onPacket(EasyPacket packet);

  ///执行刷新操作
  void refresh();
}

///
///局部刷新的小部件的控制器
///
class ZyWatchController with VmSuper {
  ///控制器的名称
  final String controllerName;

  ///观察目标列表
  final List<ZyWatchTarget> _watchTargetList;

  ZyWatchController({
    this.controllerName = 'ZyWatchController',
  }) : _watchTargetList = [];

  ///控制器日志标签
  @nonVirtual
  String get controllerLogLabel => '$controllerName#$hashCode(${_watchTargetList.length})';

  ///初始资源的模版函数，本框架内不会自动调用，需要时请手动调用
  void start() {}

  ///释放资源的模版哈书，本框架内不会自动调用，需要时请手动调用
  void close() {}

  ///添加观察目标，本框架内自动调用，请勿手动调用
  @protected
  @nonVirtual
  void addWatchTarget(ZyWatchTarget target) => _watchTargetList.add(target);

  ///删除观察目标，本框架内自动调用，请勿手动调用
  @protected
  @nonVirtual
  void delWatchTarget(ZyWatchTarget target) => _watchTargetList.remove(target);

  ///刷新观察目标
  @nonVirtual
  void notifyChanged(EasyPacket packet) {
    for (var e in _watchTargetList) {
      if (!e.onPacket(packet)) {
        e.refresh();
      }
    }
  }
}
