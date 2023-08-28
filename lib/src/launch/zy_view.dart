import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shelf_easy/shelf_easy.dart';

import 'zy_app.dart';

///
///无状态的视图小部件，是[StatelessWidget]的替代
///
class ZyView extends StatelessWidget with VmSuper {
  ///小部件的名称
  final String widgetName;

  ZyView({
    super.key,
    this.widgetName = 'ZyView',
  });

  ///小部件日志标签
  @nonVirtual
  String get widgetLogLabel => '$widgetName#$hashCode';

  ///默认的路由名称
  @nonVirtual
  String get defaultRouteName => '/$widgetLogLabel'; // '/${runtimeType.toString().split('<').first}#$hashCode';

  @nonVirtual
  @override
  Widget build(BuildContext context) {
    if (ZyApp.logLifecycle) ZyApp.logInfo(['view', '$widgetLogLabel.build()']);
    return render(context);
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
