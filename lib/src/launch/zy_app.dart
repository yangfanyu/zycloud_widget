import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shelf_easy/shelf_easy.dart';

import '../device/zy_device.dart';
import 'zy_page.dart';
import 'zy_view.dart';
import 'zy_watch.dart';

///
///应用入口
///
class ZyApp extends StatefulWidget {
  ///小部件的名称
  final String widgetName;

  ///构建本地版本App的构建器
  final Widget Function() localAppBuilder;

  ///构建远程版本App的虚拟机
  final EasyVmWare remoteAppBuilder;

  ///拉取远程App代码过程中，显示的加载进度界面
  final Widget Function(int total, int count)? remoteCodeLoading;

  ///拉取远程App代码的方法，返回 Map<String, String> 时使用[remoteAppBuilder]来构建远程版本的应用，返回 null 时使用[localAppBuilder]来构建本地版本的应用
  final Future<Map<String, String>?> Function(void Function(int total, int count) processReport) remoteCodeFetcher;

  ZyApp({
    super.key,
    this.widgetName = 'ZyApp',
    required this.localAppBuilder,
    required this.remoteAppBuilder,
    this.remoteCodeLoading,
    required this.remoteCodeFetcher,
    EasyLogger? logger,
    EasyLogLevel? logLevel,
    bool logLifecycle = false,
    bool logRouteStack = false,
  }) {
    _logger = logger ??
        EasyLogger(
          logLevel: logLevel,
          logTag: '${ZyDeviceInfo.deviceType.name}-$widgetName',
          logger: ZyDeviceInfo.isIOS && ZyDeviceInfo.isPhysicalDevice ? EasyLogger.stdoutLogger : EasyLogger.printLogger,
        );
    _logLifecycle = logLifecycle;
    _logRouteStack = logRouteStack;
  }

  @override
  State<ZyApp> createState() => _ZyAppState();

  ///日志的输出器
  static EasyLogger? _logger;

  ///打印生命周期
  static bool _logLifecycle = false;

  ///打印路由信息
  static bool _logRouteStack = false;

  ///正在后台运行
  static bool _isInBackground = false;

  ///打印生命周期
  static bool get logLifecycle => _logLifecycle;

  ///打印路由变化
  static bool get logRouteStack => _logRouteStack;

  ///正在后台运行
  static bool get isInBackground => _isInBackground;

  ///重新装载代码
  static void reassemble() => _ZyAppState._instance?._fetchRemoteApp();

  ///以Trace级别输出日志信息
  static void logTrace(List<dynamic> args) => _logger?.logTrace(args);

  ///以Debug级别输出日志信息
  static void logDebug(List<dynamic> args) => _logger?.logDebug(args);

  ///以Info级别输出日志信息
  static void logInfo(List<dynamic> args) => _logger?.logInfo(args);

  ///以Warn级别输出日志信息
  static void logWarn(List<dynamic> args) => _logger?.logWarn(args);

  ///以Error级别输出日志信息
  static void logError(List<dynamic> args) => _logger?.logError(args);

  ///以Fatal级别输出日志信息
  static void logFatal(List<dynamic> args) => _logger?.logFatal(args);

  ///打印虚拟机对象栈的信息
  static void logVmStack({int? index, bool simple = true}) => _ZyAppState._instance?.widget.remoteAppBuilder.debugObjectStack(index: index, simple: simple);

  ///设置全局的日志输出状态
  static void setLogState({bool? logLifecycle, bool? logRouteStack}) {
    if (logLifecycle != null) _logLifecycle = logLifecycle;
    if (logRouteStack != null) _logRouteStack = logRouteStack;
  }

  ///全局导航器的键
  static final navigatorKey = GlobalKey<NavigatorState>();

  ///全局导航观察者
  static final navigatorObserver = ZyAppNavigatorObserver();

  ///全局路由栈长度
  static int get navigatorRouteLength => navigatorObserver._routeStack.length;

  ///将给定的路由推送到路由栈顶部，原[Navigator.push]的简化。
  static Future<T?> push<T>(
    Widget widget, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool allowSnapshotting = true,
  }) {
    if (navigatorKey.currentState == null) return Future.value(null);
    return navigatorKey.currentState!.push<T>(
      MaterialPageRoute(
        builder: (context) => widget,
        settings: settings ?? RouteSettings(name: widget._defaultRouteName),
        maintainState: maintainState,
        fullscreenDialog: fullscreenDialog,
        allowSnapshotting: allowSnapshotting,
      ),
    );
  }

  ///推送给定的路由替换路由栈的顶部路由，然后在新路由完成动画后删除之前的顶部路由，原[Navigator.pushReplacement]的简化。
  static Future<T?> pushReplacement<T, R>(
    Widget widget, {
    R? result,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool allowSnapshotting = true,
  }) {
    if (navigatorKey.currentState == null) return Future.value(null);
    return navigatorKey.currentState!.pushReplacement<T, R>(
      MaterialPageRoute(
        builder: (context) => widget,
        settings: settings ?? RouteSettings(name: widget._defaultRouteName),
        maintainState: maintainState,
        fullscreenDialog: fullscreenDialog,
        allowSnapshotting: allowSnapshotting,
      ),
      result: result,
    );
  }

  ///将给定的路由推送到路由栈顶部，然后删除所有先前的路由直到[predicate]返回true，原[Navigator.pushAndRemoveUntil]的简化。
  static Future<T?> pushAndRemoveUntil<T>(
    Widget widget,
    RoutePredicate predicate, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool allowSnapshotting = true,
  }) {
    if (navigatorKey.currentState == null) return Future.value(null);
    return navigatorKey.currentState!.pushAndRemoveUntil<T>(
      MaterialPageRoute(
        builder: (context) => widget,
        settings: settings ?? RouteSettings(name: widget._defaultRouteName),
        maintainState: maintainState,
        fullscreenDialog: fullscreenDialog,
        allowSnapshotting: allowSnapshotting,
      ),
      predicate,
    );
  }

  ///弹出路由栈最顶部的路由，原[Navigator.pop]的简化。
  static void pop<R>([R? result]) {
    if (navigatorKey.currentState == null) return;
    navigatorKey.currentState!.pop<R>(result);
  }

  ///重复调用[pop]直到[predicate]返回true，原[Navigator.popUntil]的简化。
  static void popUntil(RoutePredicate predicate) {
    if (navigatorKey.currentState == null) return;
    navigatorKey.currentState!.popUntil(predicate);
  }

  ///判断路由栈是否可以弹出，原[Navigator.canPop]的简化。
  static bool canPop() {
    if (navigatorKey.currentState == null) return false;
    return navigatorKey.currentState!.canPop();
  }

  ///移除路由栈中经[predicate]检测返回true的全部路由，原[Navigator.removeRoute]的扩展。
  static void removeWhere(RoutePredicate predicate) {
    if (navigatorKey.currentState == null) return;
    final needRemoveRoutes = navigatorObserver._routeStack.where((e) => predicate(e)).toList();
    for (var e in needRemoveRoutes) {
      navigatorKey.currentState!.removeRoute(e);
    }
  }

  ///移除路由栈中经[predicate]检测返回true的最前一个路由，原[Navigator.removeRoute]的扩展。
  static void removeFirst(RoutePredicate predicate) {
    if (navigatorKey.currentState == null) return;
    final needRemoveRoutes = navigatorObserver._routeStack.where((e) => predicate(e)).toList();
    if (needRemoveRoutes.isNotEmpty) {
      navigatorKey.currentState!.removeRoute(needRemoveRoutes.first);
    }
  }

  ///移除路由栈中经[predicate]检测返回true的最后一个路由，原[Navigator.removeRoute]的扩展。
  static void removeLast(RoutePredicate predicate) {
    if (navigatorKey.currentState == null) return;
    final needRemoveRoutes = navigatorObserver._routeStack.where((e) => predicate(e)).toList();
    if (needRemoveRoutes.isNotEmpty) {
      navigatorKey.currentState!.removeRoute(needRemoveRoutes.last);
    }
  }

  ///移除路由栈中经[predicate]检测返回true的最后一个路由（不包括本身）的前面的全部路由，原[Navigator.removeRoute]的扩展。
  static void removeBelow(RoutePredicate predicate) {
    if (navigatorKey.currentState == null) return;
    final fenceRemoveIndex = navigatorObserver._routeStack.lastIndexWhere((e) => predicate(e));
    if (fenceRemoveIndex >= 0) {
      final needRemoveRoutes = <Route>[];
      for (var i = 0; i < fenceRemoveIndex; i++) {
        needRemoveRoutes.add(navigatorObserver._routeStack[i]);
      }
      for (var e in needRemoveRoutes) {
        navigatorKey.currentState!.removeRoute(e);
      }
    }
  }

  ///移除路由栈中经[predicate]检测返回true的最前一个路由（不包括本身）的后面的全部路由，原[Navigator.removeRoute]的扩展。
  static void removeAbove(RoutePredicate predicate) {
    if (navigatorKey.currentState == null) return;
    final fenceRemoveIndex = navigatorObserver._routeStack.indexWhere((e) => predicate(e));
    if (fenceRemoveIndex >= 0) {
      final needRemoveRoutes = <Route>[];
      for (var i = navigatorObserver._routeStack.length - 1; i > fenceRemoveIndex; i--) {
        needRemoveRoutes.add(navigatorObserver._routeStack[i]);
      }
      for (var e in needRemoveRoutes) {
        navigatorKey.currentState!.removeRoute(e);
      }
    }
  }

  ///移除路由栈中经[predicate]检测返回true的全部路由，然后将给定的路由推送到路由栈顶部，原[Navigator.pushAndRemoveUntil]的扩展。
  static Future<T?> pushAndRemoveWhere<T>(
    Widget widget,
    RoutePredicate predicate, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool allowSnapshotting = true,
  }) {
    if (navigatorKey.currentState == null) return Future.value(null);
    removeWhere(predicate);
    return push(
      widget,
      settings: settings ?? RouteSettings(name: widget._defaultRouteName),
      maintainState: maintainState,
      fullscreenDialog: fullscreenDialog,
      allowSnapshotting: allowSnapshotting,
    );
  }

  ///获取路由栈中经[predicate]检测返回true的路由索引。当[first]为true时返回第一个索引，[first]false返回最后一个索引。无匹配项则返回 -1。
  static int indexWhere(RoutePredicate predicate, {bool first = true}) {
    if (navigatorKey.currentState == null) return -1;
    if (first) {
      return navigatorObserver._routeStack.indexWhere((e) => predicate(e));
    } else {
      return navigatorObserver._routeStack.lastIndexWhere((e) => predicate(e));
    }
  }

  ///在路由栈顶部显示一个对话框。原[Navigator.push]的扩展。
  static Future<T?> showPage<T>(
    Widget widget, {
    RouteSettings? settings,
    RouteTransitionsBuilder? transitionsBuilder,
    Duration transitionDuration = const Duration(milliseconds: 300),
    Duration reverseTransitionDuration = const Duration(milliseconds: 300),
    bool opaque = true,
    bool barrierDismissible = false,
    Color? barrierColor,
    String? barrierLabel,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool allowSnapshotting = true,
  }) {
    if (navigatorKey.currentState == null) return Future.value(null);
    return navigatorKey.currentState!.push<T>(
      PageRouteBuilder(
        settings: settings ?? RouteSettings(name: widget._defaultRouteName),
        pageBuilder: (context, animation, secondaryAnimation) => widget,
        transitionsBuilder: transitionsBuilder ?? (context, animation, secondaryAnimation, child) => child,
        transitionDuration: transitionDuration,
        reverseTransitionDuration: reverseTransitionDuration,
        opaque: opaque,
        barrierDismissible: barrierDismissible,
        barrierColor: barrierColor,
        barrierLabel: barrierLabel,
        maintainState: maintainState,
        fullscreenDialog: fullscreenDialog,
        allowSnapshotting: allowSnapshotting,
      ),
    );
  }

  ///在路由栈顶部显示一个对话框。原[showGeneralDialog]的简化。
  static Future<T?> showDialog<T>(
    Widget widget, {
    bool barrierDismissible = false,
    String? barrierLabel,
    Color barrierColor = const Color(0x80000000),
    Duration transitionDuration = const Duration(milliseconds: 200),
    RouteTransitionsBuilder? transitionBuilder,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
  }) {
    if (navigatorKey.currentState == null) return Future.value(null);
    return navigatorKey.currentState!.push<T>(
      RawDialogRoute(
        pageBuilder: (context, animation, secondaryAnimation) => widget,
        barrierDismissible: barrierDismissible,
        barrierLabel: barrierLabel,
        barrierColor: barrierColor,
        transitionDuration: transitionDuration,
        transitionBuilder: transitionBuilder,
        settings: routeSettings ?? RouteSettings(name: widget._defaultRouteName),
        anchorPoint: anchorPoint,
      ),
    );
  }

  ///在路由栈顶部显示一个顶部框。原[showGeneralDialog]的扩展。
  static Future<T?> showTopSheet<T>(
    Widget widget, {
    bool barrierDismissible = false,
    String? barrierLabel,
    Color barrierColor = const Color(0x80000000),
    Duration transitionDuration = const Duration(milliseconds: 200),
    Curve transitionCurve = Curves.easeInOut,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
  }) {
    if (navigatorKey.currentState == null) return Future.value(null);
    return navigatorKey.currentState!.push<T>(
      RawDialogRoute(
        pageBuilder: (context, animation, secondaryAnimation) => widget,
        barrierDismissible: barrierDismissible,
        barrierLabel: barrierLabel,
        barrierColor: barrierColor,
        transitionDuration: transitionDuration,
        transitionBuilder: (context, animation, secondaryAnimation, child) => SlideTransition(
          position: Tween(begin: const Offset(0.0, -1.0), end: Offset.zero).chain(CurveTween(curve: transitionCurve)).animate(animation),
          child: child,
        ),
        settings: routeSettings ?? RouteSettings(name: widget._defaultRouteName),
        anchorPoint: anchorPoint,
      ),
    );
  }

  ///在路由栈顶部显示一个底部框。原[showModalBottomSheet]的简化。
  static Future<T?> showBottomSheet<T>(
    Widget widget, {
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    Color? barrierColor,
    bool isScrollControlled = false,
    bool isDismissible = true,
    bool enableDrag = true,
    bool useSafeArea = false,
    RouteSettings? routeSettings,
    AnimationController? transitionAnimationController,
    Offset? anchorPoint,
  }) {
    if (navigatorKey.currentState == null) return Future.value(null);
    return navigatorKey.currentState!.push<T>(
      ModalBottomSheetRoute(
        builder: (context) => widget,
        capturedThemes: InheritedTheme.capture(from: navigatorKey.currentState!.context, to: navigatorKey.currentState!.context),
        isScrollControlled: isScrollControlled,
        barrierLabel: MaterialLocalizations.of(navigatorKey.currentState!.context).modalBarrierDismissLabel,
        backgroundColor: backgroundColor ?? Colors.transparent, //原默认值为null
        elevation: elevation,
        shape: shape,
        clipBehavior: clipBehavior,
        constraints: constraints,
        isDismissible: isDismissible,
        modalBarrierColor: barrierColor ?? Theme.of(navigatorKey.currentState!.context).bottomSheetTheme.modalBarrierColor,
        enableDrag: enableDrag,
        settings: routeSettings ?? RouteSettings(name: widget._defaultRouteName),
        transitionAnimationController: transitionAnimationController,
        anchorPoint: anchorPoint,
        useSafeArea: useSafeArea,
      ),
    );
  }

  ///对 try{...}catch{...}finally{...}的封装。
  static T tryCatchFinally<T>({
    required T Function() body,
    required T Function(Object error, StackTrace stack) onCatchError,
    void Function()? onFinally,
  }) {
    if (onFinally == null) {
      try {
        return body();
      } catch (error, stack) {
        return onCatchError(error, stack);
      }
    } else {
      try {
        return body();
      } catch (error, stack) {
        return onCatchError(error, stack);
      } finally {
        onFinally();
      }
    }
  }

  ///将对象转换为JSON字符串，返回null来代替异常的抛出。
  static String? tryJsonEncode(Object? target) {
    try {
      return jsonEncode(target);
    } catch (error, stack) {
      ZyApp.logError(['app', 'ZyApp.tryJsonEncode() error =>', error, '\n', stack]);
      return null;
    }
  }

  ///将字符串转换为JSON对象，返回null来代替异常的抛出。
  static dynamic tryJsonDecode(String source) {
    try {
      return jsonDecode(source);
    } catch (error, stack) {
      ZyApp.logError(['app', 'ZyApp.tryJsonDecode() error =>', error, '\n', stack]);
      return null;
    }
  }

  ///批量执行异步的while循环，原[Future.doWhile]的替代。
  static Future<void> doWhile(Future<dynamic> Function() callback) {
    return Future.doWhile(() async {
      final result = await callback();
      if (result is bool) {
        return result;
      } else {
        ZyApp.logError(['app', 'ZyApp.doWhile() error => ${result.runtimeType} is not bool type']);
        return false;
      }
    });
  }
}

///
///应用状态
///
class _ZyAppState extends State<ZyApp> with WidgetsBindingObserver {
  ///当前状态实例
  static _ZyAppState? _instance;

  ///远程拉取总数
  int _remoteFetchTotal = 0;

  ///远程拉取进度
  int _remoteFetchCount = 0;

  ///远程拉取是否完成
  bool _remoteFetchDone = false;

  ///远程拉取是否成功
  bool _remoteFetchSuccess = false;

  ///远程拉取任务锁，防止重复调用
  bool _remoteFetchLocking = false;

  _ZyAppState() {
    _instance = this;
  }

  @override
  void initState() {
    super.initState();
    if (ZyApp.logLifecycle) ZyApp.logInfo(['app', '${widget.widgetName}.initState()']);
    WidgetsBinding.instance.addObserver(this);
    _fetchRemoteApp();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    if (ZyApp.logLifecycle) ZyApp.logInfo(['app', '${widget.widgetName}.dispose()']);
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    if (ZyApp.logLifecycle) ZyApp.logInfo(['app', '${widget.widgetName}.reassemble()']);
    _fetchRemoteApp();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (ZyApp.logLifecycle) ZyApp.logInfo(['app', '${widget.widgetName}.didChangeAppLifecycleState() =>', state]);
    switch (state) {
      case AppLifecycleState.paused:
        ZyApp._isInBackground = true;
        break;
      case AppLifecycleState.resumed:
        ZyApp._isInBackground = false;
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_remoteFetchDone) {
      if (_remoteFetchSuccess) {
        if (ZyApp.logLifecycle) ZyApp.logInfo(['app', '${widget.widgetName}.build() by remoteAppBuilder']);
        return widget.remoteAppBuilder.main<Widget>();
      } else {
        if (ZyApp.logLifecycle) ZyApp.logInfo(['app', '${widget.widgetName}.build() by localAppBuilder']);
        return widget.localAppBuilder();
      }
    } else {
      if (widget.remoteCodeLoading != null) {
        if (ZyApp.logLifecycle) ZyApp.logDebug(['app', '${widget.widgetName}.build() by remoteCodeLoading']);
        return widget.remoteCodeLoading!(_remoteFetchTotal, _remoteFetchCount);
      } else {
        if (ZyApp.logLifecycle) ZyApp.logDebug(['app', '${widget.widgetName}.build() by defaultCodeLoading']);
        return MaterialApp(home: Scaffold(body: Center(child: LinearProgressIndicator(value: _remoteFetchCount >= _remoteFetchTotal ? 1 : (_remoteFetchCount / _remoteFetchTotal)))));
      }
    }
  }

  void _fetchRemoteApp() {
    //已加锁则返回
    if (_remoteFetchLocking) return;
    _remoteFetchLocking = true; //加锁
    if (ZyApp.logLifecycle) ZyApp.logDebug(['app', '${widget.widgetName}._fetchRemoteApp() start']);
    //重置加载状态
    if (mounted) {
      ZyApp.popUntil((route) => false); //销毁全部界面
      setState(() {
        _remoteFetchTotal = 0;
        _remoteFetchCount = 0;
        _remoteFetchDone = false;
        _remoteFetchSuccess = false;
      });
    }
    //拉取远程代码
    widget.remoteCodeFetcher(_fetchProcessReport).then((sourceCodes) {
      if (ZyApp.logLifecycle) ZyApp.logDebug(['app', '${widget.widgetName}._fetchRemoteApp() result =>', sourceCodes?.keys.toList()]);
      if (sourceCodes != null) widget.remoteAppBuilder.reassemble(sourceCodes: sourceCodes); //虚拟机重载代码
      if (mounted) {
        setState(() {
          _remoteFetchDone = true;
          _remoteFetchSuccess = sourceCodes != null;
        });
      }
      _remoteFetchLocking = false; //解锁
    }).catchError((error, stack) {
      ZyApp.logError(['app', '${widget.widgetName}._fetchRemoteApp() error =>', error, '\n', stack]);
      if (mounted) {
        setState(() {
          _remoteFetchDone = true;
          _remoteFetchSuccess = false;
        });
      }
      _remoteFetchLocking = false; //解锁
    });
  }

  void _fetchProcessReport(int total, int count) {
    if (ZyApp.logLifecycle) ZyApp.logDebug(['app', '${widget.widgetName}._fetchProcessReport() =>', '$count/$total']);
    if (mounted) {
      setState(() {
        _remoteFetchTotal = total;
        _remoteFetchCount = count;
      });
    }
  }
}

///
///应用国际化，参考 GlobalWidgetsLocalizations.delegate;
///
class ZyAppLocalizations {
  ZyAppLocalizations(Locale locale) {
    VmTranslate.setLanguageCode(locale.languageCode.toLowerCase()); //同步到VmTranslate
    if (ZyApp.logLifecycle) ZyApp.logDebug(['locale', 'ZyAppLocalizations()', '===>', locale]);
  }

  ///创建新的实例
  static Future<ZyAppLocalizations> load(Locale locale) => SynchronousFuture<ZyAppLocalizations>(ZyAppLocalizations(locale));

  ///探测类的实例
  static const LocalizationsDelegate<ZyAppLocalizations> delegate = _ZyAppLocalizationsDelegate();

  ///读取语言环境
  static String get languageCode => VmTranslate.languageCode;

  ///语言数据缓存
  static final _languageData = <String, Map<String, String>>{};

  ///添加语言数据
  ///
  ///虚拟机无法构建 Map<String, Map<String, String>> 类型，所以这里定义的参数为 Map<dynamic, dymnamic> 类型
  ///
  ///格式：
  /// ```dart
  ///   static const languageData = <String, Map<String, String>>{
  ///     '芷游云': {
  ///       'en': 'ZyCloud',
  ///     },
  ///     '芷游云服务': {
  ///       'en': 'ZyCloud service',
  ///     },
  ///   };
  /// ```
  ///
  static void addLanguageData(Map<dynamic, dynamic> data) {
    data.forEach((key, value) {
      final oldItem = _languageData[key] ?? <String, String>{};
      final newItem = value as Map;
      newItem.forEach((key, value) {
        oldItem[key] = value;
      });
      _languageData[key] = oldItem;
    });
    VmTranslate.setLanguageData(_languageData);
  }
}

///
///应用国际化探测类
///
class _ZyAppLocalizationsDelegate extends LocalizationsDelegate<ZyAppLocalizations> {
  const _ZyAppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<ZyAppLocalizations> load(Locale locale) => ZyAppLocalizations.load(locale);

  @override
  bool shouldReload(_ZyAppLocalizationsDelegate old) => false;

  @override
  String toString() => 'ZyAppLocalizations.delegate(all locales)';
}

///
///应用导航路由观察者
///
class ZyAppNavigatorObserver extends NavigatorObserver {
  final _routeStack = <Route>[];

  List<String> get _routeStackLogLabels => _routeStack.map((e) => e._routeLogLabel).toList();

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    _routeStack.add(route);
    if (ZyApp.logRouteStack) ZyApp.logDebug(['route', 'ZyAppNavigatorObserver.didPush()', '===>', _routeStack.length, _routeStackLogLabels]);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (oldRoute != null) _routeStack.remove(oldRoute);
    if (newRoute != null) _routeStack.add(newRoute);
    if (ZyApp.logRouteStack) ZyApp.logDebug(['route', 'ZyAppNavigatorObserver.didReplace()', '===>', _routeStack.length, _routeStackLogLabels]);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    _routeStack.remove(route);
    if (ZyApp.logRouteStack) ZyApp.logDebug(['route', 'ZyAppNavigatorObserver.didPop()', '===>', _routeStack.length, _routeStackLogLabels]);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    _routeStack.remove(route);
    if (ZyApp.logRouteStack) ZyApp.logDebug(['route', 'ZyAppNavigatorObserver.didRemove()', '===>', _routeStack.length, _routeStackLogLabels]);
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    super.didStartUserGesture(route, previousRoute);
    if (ZyApp.logRouteStack) ZyApp.logDebug(['route', 'ZyAppNavigatorObserver.didStartUserGesture()', '===>', _routeStack.length, _routeStackLogLabels]);
  }

  @override
  void didStopUserGesture() {
    super.didStopUserGesture();
    if (ZyApp.logRouteStack) ZyApp.logDebug(['route', 'ZyAppNavigatorObserver.didStopUserGesture()', '===>', _routeStack.length, _routeStackLogLabels]);
  }

  void clearRouteStack() {
    _routeStack.clear();
    if (ZyApp.logRouteStack) ZyApp.logDebug(['route', 'ZyAppNavigatorObserver.clearRouteStack()', '===>', _routeStack.length, _routeStackLogLabels]);
  }
}

///
///应用导航路由标签扩展
///
extension on Route {
  String get _routeLogLabel => '${runtimeType.toString().split('<').first}#$hashCode(${settings.name})';
}

///
///应用小部件标签扩展
///
extension on Widget {
  String get _defaultRouteName {
    if (this is ZyPage) return (this as ZyPage).defaultRouteName;
    if (this is ZyView) return (this as ZyView).defaultRouteName;
    if (this is ZyWatch) return (this as ZyWatch).defaultRouteName;
    return '/${runtimeType.toString().split('<').first}#$hashCode';
  }
}
