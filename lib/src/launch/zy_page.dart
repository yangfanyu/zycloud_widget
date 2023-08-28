import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shelf_easy/shelf_easy.dart';

import 'zy_app.dart';
import 'zy_watch.dart';

///
///有状态的页面小部件，是[StatefulWidget]的替代
///
class ZyPage extends StatefulWidget with VmSuper {
  ///小部件的名称
  final String widgetName;

  ///小部件观察器
  final List<ZyWatchController> watchControllers;

  ZyPage({
    super.key,
    this.widgetName = 'ZyPage',
  }) : watchControllers = [];

  ///小部件日志标签
  @nonVirtual
  String get widgetLogLabel => '$widgetName#$hashCode';

  ///观察器日志标签
  @nonVirtual
  List<String> get watchControllersLogLabels => watchControllers.map((e) => e.controllerLogLabel).toList();

  ///默认的路由名称
  @nonVirtual
  String get defaultRouteName => '/$widgetLogLabel'; // '/${runtimeType.toString().split('<').first}#$hashCode';

  @override
  // ignore: no_logic_in_create_state
  State<ZyPage> createState() {
    if (isInitedByVmware && hasChildProperty('createState')) {
      return VmObject.readValue(getProperty('createState').runFunction(null, null));
    } else {
      return ZyPageState();
    }
  }

  @nonVirtual
  @override
  String toString({minLevel}) {
    if (isInitedByVmware) return super.toString();
    minLevel ??= DiagnosticLevel.info;
    //下面的代码是从原定义中复制过来的
    String? fullString;
    assert(() {
      fullString = toDiagnosticsNode(style: DiagnosticsTreeStyle.singleLine).toString(minLevel: minLevel);
      return true;
    }());
    return fullString ?? toStringShort();
  }
}

///
///仅将生命周期转发给Widget，使得[StatefulWidget]继承写法变得简单很多
///
class ZyPageState<T extends ZyPage> extends State<T> with VmSuper implements ZyWatchTarget {
  ///状态的日志标签
  @nonVirtual
  String get stateLogLabel => '${widget.widgetName}State#$hashCode';

  @nonVirtual
  @override
  void initState() {
    super.initState();
    if (ZyApp.logLifecycle) ZyApp.logInfo(['page', '${widget.widgetLogLabel}_$stateLogLabel.initState()', '===>', widget.watchControllers.length, widget.watchControllersLogLabels]);
    for (var controller in widget.watchControllers) {
      // ignore: invalid_use_of_protected_member
      controller.addWatchTarget(this);
    }
    start();
  }

  @nonVirtual
  @override
  Widget build(BuildContext context) {
    if (ZyApp.logLifecycle) ZyApp.logInfo(['page', '${widget.widgetLogLabel}_$stateLogLabel.build()', '===>', widget.watchControllers.length, widget.watchControllersLogLabels]);
    return render(context);
  }

  @nonVirtual
  @override
  void dispose() {
    close();
    for (var controller in widget.watchControllers) {
      // ignore: invalid_use_of_protected_member
      controller.delWatchTarget(this);
    }
    if (ZyApp.logLifecycle) ZyApp.logInfo(['page', '${widget.widgetLogLabel}_$stateLogLabel.dispose()', '===>', widget.watchControllers.length, widget.watchControllersLogLabels]);
    super.dispose();
  }

  ///执行[initState]逻辑的方法
  @protected
  void start() {
    if (isInitedByVmware && hasChildProperty('start')) {
      VmObject.readValue(getProperty('start').runFunction(null, null));
    }
  }

  ///执行[build]逻辑的方法
  @protected
  Widget render(BuildContext context) {
    if (isInitedByVmware && hasChildProperty('render')) {
      return VmObject.readValue(getProperty('render').runFunction([context], null));
    } else {
      throw UnimplementedError();
    }
  }

  ///执行[dispose]逻辑的方法
  @protected
  void close() {
    if (isInitedByVmware && hasChildProperty('close')) {
      VmObject.readValue(getProperty('close').runFunction(null, null));
    }
  }

  @protected
  @override
  bool onPacket(EasyPacket packet) {
    if (isInitedByVmware && hasChildProperty('onPacket')) {
      return VmObject.readValue(getProperty('onPacket').runFunction([packet], null));
    } else {
      return false;
    }
  }

  @nonVirtual
  @override
  void refresh() {
    if (mounted) {
      setState(() {});
    }
  }

  @nonVirtual
  void unfocus() {
    if (mounted) {
      FocusScope.of(context).unfocus();
    }
  }

  @nonVirtual
  void nextFocus() {
    if (mounted) {
      FocusScope.of(context).nextFocus();
    }
  }
}

///
///有状态的[Tab]页面小部件，是[SingleTickerProviderStateMixin]的包装
///
class ZyTabPageState<T extends ZyPage> extends ZyPageState<T> with SingleTickerProviderStateMixin {}
