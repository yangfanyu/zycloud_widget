import 'package:flutter/material.dart';
import 'package:shelf_easy/shelf_easy.dart';
import 'package:zycloud_widget/zycloud_bridge.dart';
import 'package:zycloud_widget/zycloud_widget.dart';

///修改这个参数后 shit + r 切换App的模式
const vmwareApp = true;

void main(List<String> args) async {
  ///确保库加载完毕
  WidgetsFlutterBinding.ensureInitialized();

  ///初始化设备信息
  await ZyDeviceInfo.init();

  ///加载虚拟机类库
  EasyVmWare.loadGlobalLibrary(
    globalLogger: EasyLogger(logTag: '${ZyDeviceInfo.deviceType.name}-VmWare', logger: ZyApp.bestConsoleLogger),
    coreClassList: ZyBridge.coreClassList,
    coreProxyList: ZyBridge.coreProxyList,
    userClassList: ZyBridge.userClassList,
    userProxyList: ZyBridge.userProxyList,
  );

  ///两种方式启动应用
  runApp(
    ZyApp(
      localAppBuilder: () => App.start(),
      remoteAppBuilder: EasyVmWare(config: EasyVmWareConfig(mainMethod: 'App.start')),
      remoteCodeFetcher: (processReport) async {
        if (!vmwareApp) return null;
        //下面的动态App代码除了标题，其它的与静态App代码完全一样
        return {
          'anyKey': '''


class App extends ZyView {
  App({super.key});

  ///执行[build]逻辑的方法
  @override
  Widget render(BuildContext context) => MaterialApp(home: AppHome());

  ///入口函数，与上面的配置相对应
  static Widget start() => App();
}

class AppHome extends ZyPage {
  AppHome({super.key});

  @override
  State<ZyPage> createState() => _AppHomeState();
}

class _AppHomeState extends ZyPageState<AppHome> {
  ///执行[initState]逻辑的方法
  @override
  void start() {}

  ///执行[dispose]逻辑的方法
  @override
  void close() {}

  ///执行[build]逻辑的方法
  @override
  Widget render(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('VmWare App')),
      body: const ZyEditor(
        bodyScrollable: true,
        bodyPadding: EdgeInsets.all(8.0),
        bodyAutoFocus: true,
        bodyReadOnly: false,
        bodyExpands: true,
      ),
    );
  }
}

          '''
        };
      },
    ),
  );
}

class App extends ZyView {
  App({super.key});

  ///执行[build]逻辑的方法
  @override
  Widget render(BuildContext context) => MaterialApp(home: AppHome());

  ///入口函数，与上面的配置相对应
  static Widget start() => App();
}

class AppHome extends ZyPage {
  AppHome({super.key});

  @override
  State<ZyPage> createState() => _AppHomeState();
}

class _AppHomeState extends ZyPageState<AppHome> {
  ///执行[initState]逻辑的方法
  @override
  void start() {}

  ///执行[dispose]逻辑的方法
  @override
  void close() {}

  ///执行[build]逻辑的方法
  @override
  Widget render(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Native App')),
      body: const ZyEditor(
        bodyScrollable: true,
        bodyPadding: EdgeInsets.all(8.0),
        bodyAutoFocus: true,
        bodyReadOnly: false,
        bodyExpands: true,
      ),
    );
  }
}
