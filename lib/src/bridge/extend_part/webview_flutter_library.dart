// ignore_for_file: avoid_function_literals_in_foreach_calls
// ignore_for_file: deprecated_member_use
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: unnecessary_constructor_name

import 'package:shelf_easy/shelf_easy.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';

///
///webview_flutter库桥接类
///
class WebviewFlutterLibrary {
  ///class HttpAuthRequest
  static final classHttpAuthRequest = VmClass<HttpAuthRequest>(
    identifier: 'HttpAuthRequest',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => HttpAuthRequest.new, externalStaticFunctionCaller: ({onProceed, onCancel, host = '', realm}) => HttpAuthRequest.new(onProceed: (b0) => onProceed(b0), onCancel: onCancel, host: host, realm: realm)),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (HttpAuthRequest instance) => instance.hashCode),
      'host': VmProxy(identifier: 'host', externalInstancePropertyReader: (HttpAuthRequest instance) => instance.host),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (HttpAuthRequest instance) => instance.noSuchMethod),
      'onCancel': VmProxy(identifier: 'onCancel', externalInstancePropertyReader: (HttpAuthRequest instance) => instance.onCancel),
      'onProceed': VmProxy(identifier: 'onProceed', externalInstancePropertyReader: (HttpAuthRequest instance) => instance.onProceed),
      'realm': VmProxy(identifier: 'realm', externalInstancePropertyReader: (HttpAuthRequest instance) => instance.realm),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (HttpAuthRequest instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (HttpAuthRequest instance) => instance.toString),
    },
  );

  ///class HttpResponseError
  static final classHttpResponseError = VmClass<HttpResponseError>(
    identifier: 'HttpResponseError',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => HttpResponseError.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (HttpResponseError instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (HttpResponseError instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (HttpResponseError instance) => instance.runtimeType),
      'statusCode': VmProxy(identifier: 'statusCode', externalInstancePropertyReader: (HttpResponseError instance) => instance.statusCode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (HttpResponseError instance) => instance.toString),
    },
  );

  ///class JavaScriptChannelParams
  static final classJavaScriptChannelParams = VmClass<JavaScriptChannelParams>(
    identifier: 'JavaScriptChannelParams',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => JavaScriptChannelParams.new, externalStaticFunctionCaller: ({name = '', onMessageReceived}) => JavaScriptChannelParams.new(name: name, onMessageReceived: (b0) => onMessageReceived(b0))),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (JavaScriptChannelParams instance) => instance.hashCode),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (JavaScriptChannelParams instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (JavaScriptChannelParams instance) => instance.noSuchMethod),
      'onMessageReceived': VmProxy(identifier: 'onMessageReceived', externalInstancePropertyReader: (JavaScriptChannelParams instance) => instance.onMessageReceived),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (JavaScriptChannelParams instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (JavaScriptChannelParams instance) => instance.toString),
    },
  );

  ///class JavaScriptConsoleMessage
  static final classJavaScriptConsoleMessage = VmClass<JavaScriptConsoleMessage>(
    identifier: 'JavaScriptConsoleMessage',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => JavaScriptConsoleMessage.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (JavaScriptConsoleMessage instance) => instance.hashCode),
      'level': VmProxy(identifier: 'level', externalInstancePropertyReader: (JavaScriptConsoleMessage instance) => instance.level),
      'message': VmProxy(identifier: 'message', externalInstancePropertyReader: (JavaScriptConsoleMessage instance) => instance.message),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (JavaScriptConsoleMessage instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (JavaScriptConsoleMessage instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (JavaScriptConsoleMessage instance) => instance.toString),
    },
  );

  ///class JavaScriptLogLevel
  static final classJavaScriptLogLevel = VmClass<JavaScriptLogLevel>(
    identifier: 'JavaScriptLogLevel',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'debug': VmProxy(identifier: 'debug', externalStaticPropertyReader: () => JavaScriptLogLevel.debug),
      'error': VmProxy(identifier: 'error', externalStaticPropertyReader: () => JavaScriptLogLevel.error),
      'info': VmProxy(identifier: 'info', externalStaticPropertyReader: () => JavaScriptLogLevel.info),
      'log': VmProxy(identifier: 'log', externalStaticPropertyReader: () => JavaScriptLogLevel.log),
      'warning': VmProxy(identifier: 'warning', externalStaticPropertyReader: () => JavaScriptLogLevel.warning),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (JavaScriptLogLevel instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (JavaScriptLogLevel instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (JavaScriptLogLevel instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (JavaScriptLogLevel instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (JavaScriptLogLevel instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (JavaScriptLogLevel instance) => instance.toString),
    },
  );

  ///class JavaScriptMessage
  static final classJavaScriptMessage = VmClass<JavaScriptMessage>(
    identifier: 'JavaScriptMessage',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => JavaScriptMessage.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (JavaScriptMessage instance) => instance.hashCode),
      'message': VmProxy(identifier: 'message', externalInstancePropertyReader: (JavaScriptMessage instance) => instance.message),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (JavaScriptMessage instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (JavaScriptMessage instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (JavaScriptMessage instance) => instance.toString),
    },
  );

  ///class JavaScriptMode
  static final classJavaScriptMode = VmClass<JavaScriptMode>(
    identifier: 'JavaScriptMode',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'disabled': VmProxy(identifier: 'disabled', externalStaticPropertyReader: () => JavaScriptMode.disabled),
      'unrestricted': VmProxy(identifier: 'unrestricted', externalStaticPropertyReader: () => JavaScriptMode.unrestricted),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (JavaScriptMode instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (JavaScriptMode instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (JavaScriptMode instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (JavaScriptMode instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (JavaScriptMode instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (JavaScriptMode instance) => instance.toString),
    },
  );

  ///class LoadRequestMethod
  static final classLoadRequestMethod = VmClass<LoadRequestMethod>(
    identifier: 'LoadRequestMethod',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'get': VmProxy(identifier: 'get', externalStaticPropertyReader: () => LoadRequestMethod.get),
      'post': VmProxy(identifier: 'post', externalStaticPropertyReader: () => LoadRequestMethod.post),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (LoadRequestMethod instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (LoadRequestMethod instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (LoadRequestMethod instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (LoadRequestMethod instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (LoadRequestMethod instance) => instance.runtimeType),
      'serialize': VmProxy(identifier: 'serialize', externalInstancePropertyReader: (LoadRequestMethod instance) => instance.serialize),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (LoadRequestMethod instance) => instance.toString),
    },
  );

  ///class LoadRequestParams
  static final classLoadRequestParams = VmClass<LoadRequestParams>(
    identifier: 'LoadRequestParams',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => LoadRequestParams.new),
      'body': VmProxy(identifier: 'body', externalInstancePropertyReader: (LoadRequestParams instance) => instance.body),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (LoadRequestParams instance) => instance.hashCode),
      'headers': VmProxy(identifier: 'headers', externalInstancePropertyReader: (LoadRequestParams instance) => instance.headers),
      'method': VmProxy(identifier: 'method', externalInstancePropertyReader: (LoadRequestParams instance) => instance.method),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (LoadRequestParams instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (LoadRequestParams instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (LoadRequestParams instance) => instance.toString),
      'uri': VmProxy(identifier: 'uri', externalInstancePropertyReader: (LoadRequestParams instance) => instance.uri),
    },
  );

  ///class NavigationDecision
  static final classNavigationDecision = VmClass<NavigationDecision>(
    identifier: 'NavigationDecision',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'navigate': VmProxy(identifier: 'navigate', externalStaticPropertyReader: () => NavigationDecision.navigate),
      'prevent': VmProxy(identifier: 'prevent', externalStaticPropertyReader: () => NavigationDecision.prevent),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (NavigationDecision instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (NavigationDecision instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (NavigationDecision instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (NavigationDecision instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (NavigationDecision instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (NavigationDecision instance) => instance.toString),
    },
  );

  ///class NavigationDelegate
  static final classNavigationDelegate = VmClass<NavigationDelegate>(
    identifier: 'NavigationDelegate',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => NavigationDelegate.new, externalStaticFunctionCaller: ({onNavigationRequest, onPageStarted, onPageFinished, onProgress, onWebResourceError, onUrlChange}) => NavigationDelegate.new(onNavigationRequest: onNavigationRequest == null ? null : (b0) => onNavigationRequest(b0), onPageStarted: onPageStarted == null ? null : (b0) => onPageStarted(b0), onPageFinished: onPageFinished == null ? null : (b0) => onPageFinished(b0), onProgress: onProgress == null ? null : (b0) => onProgress(b0), onWebResourceError: onWebResourceError == null ? null : (b0) => onWebResourceError(b0), onUrlChange: onUrlChange == null ? null : (b0) => onUrlChange(b0))),
      'fromPlatform': VmProxy(identifier: 'fromPlatform', externalStaticPropertyReader: () => NavigationDelegate.fromPlatform, externalStaticFunctionCaller: (a0, {onNavigationRequest, onPageStarted, onPageFinished, onProgress, onWebResourceError, onUrlChange}) => NavigationDelegate.fromPlatform(a0, onNavigationRequest: onNavigationRequest == null ? null : (b0) => onNavigationRequest(b0), onPageStarted: onPageStarted == null ? null : (b0) => onPageStarted(b0), onPageFinished: onPageFinished == null ? null : (b0) => onPageFinished(b0), onProgress: onProgress == null ? null : (b0) => onProgress(b0), onWebResourceError: onWebResourceError == null ? null : (b0) => onWebResourceError(b0), onUrlChange: onUrlChange == null ? null : (b0) => onUrlChange(b0))),
      'fromPlatformCreationParams': VmProxy(identifier: 'fromPlatformCreationParams', externalStaticPropertyReader: () => NavigationDelegate.fromPlatformCreationParams, externalStaticFunctionCaller: (a0, {onNavigationRequest, onPageStarted, onPageFinished, onProgress, onWebResourceError, onUrlChange}) => NavigationDelegate.fromPlatformCreationParams(a0, onNavigationRequest: onNavigationRequest == null ? null : (b0) => onNavigationRequest(b0), onPageStarted: onPageStarted == null ? null : (b0) => onPageStarted(b0), onPageFinished: onPageFinished == null ? null : (b0) => onPageFinished(b0), onProgress: onProgress == null ? null : (b0) => onProgress(b0), onWebResourceError: onWebResourceError == null ? null : (b0) => onWebResourceError(b0), onUrlChange: onUrlChange == null ? null : (b0) => onUrlChange(b0))),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (NavigationDelegate instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (NavigationDelegate instance) => instance.noSuchMethod),
      'onNavigationRequest': VmProxy(identifier: 'onNavigationRequest', externalInstancePropertyReader: (NavigationDelegate instance) => instance.onNavigationRequest),
      'onPageFinished': VmProxy(identifier: 'onPageFinished', externalInstancePropertyReader: (NavigationDelegate instance) => instance.onPageFinished),
      'onPageStarted': VmProxy(identifier: 'onPageStarted', externalInstancePropertyReader: (NavigationDelegate instance) => instance.onPageStarted),
      'onProgress': VmProxy(identifier: 'onProgress', externalInstancePropertyReader: (NavigationDelegate instance) => instance.onProgress),
      'onWebResourceError': VmProxy(identifier: 'onWebResourceError', externalInstancePropertyReader: (NavigationDelegate instance) => instance.onWebResourceError),
      'platform': VmProxy(identifier: 'platform', externalInstancePropertyReader: (NavigationDelegate instance) => instance.platform),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (NavigationDelegate instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (NavigationDelegate instance) => instance.toString),
    },
  );

  ///class NavigationRequest
  static final classNavigationRequest = VmClass<NavigationRequest>(
    identifier: 'NavigationRequest',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => NavigationRequest.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (NavigationRequest instance) => instance.hashCode),
      'isMainFrame': VmProxy(identifier: 'isMainFrame', externalInstancePropertyReader: (NavigationRequest instance) => instance.isMainFrame),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (NavigationRequest instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (NavigationRequest instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (NavigationRequest instance) => instance.toString),
      'url': VmProxy(identifier: 'url', externalInstancePropertyReader: (NavigationRequest instance) => instance.url),
    },
  );

  ///class PlatformNavigationDelegate
  static final classPlatformNavigationDelegate = VmClass<PlatformNavigationDelegate>(
    identifier: 'PlatformNavigationDelegate',
    superclassNames: ['Object', 'PlatformInterface'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => PlatformNavigationDelegate.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PlatformNavigationDelegate instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PlatformNavigationDelegate instance) => instance.noSuchMethod),
      'params': VmProxy(identifier: 'params', externalInstancePropertyReader: (PlatformNavigationDelegate instance) => instance.params),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PlatformNavigationDelegate instance) => instance.runtimeType),
      'setOnHttpAuthRequest': VmProxy(identifier: 'setOnHttpAuthRequest', externalInstancePropertyReader: (PlatformNavigationDelegate instance) => instance.setOnHttpAuthRequest, externalInstanceFunctionCaller: (PlatformNavigationDelegate instance, a0) => instance.setOnHttpAuthRequest((b0) => a0(b0))),
      'setOnHttpError': VmProxy(identifier: 'setOnHttpError', externalInstancePropertyReader: (PlatformNavigationDelegate instance) => instance.setOnHttpError, externalInstanceFunctionCaller: (PlatformNavigationDelegate instance, a0) => instance.setOnHttpError((b0) => a0(b0))),
      'setOnNavigationRequest': VmProxy(identifier: 'setOnNavigationRequest', externalInstancePropertyReader: (PlatformNavigationDelegate instance) => instance.setOnNavigationRequest, externalInstanceFunctionCaller: (PlatformNavigationDelegate instance, a0) => instance.setOnNavigationRequest((b0) => a0(b0))),
      'setOnPageFinished': VmProxy(identifier: 'setOnPageFinished', externalInstancePropertyReader: (PlatformNavigationDelegate instance) => instance.setOnPageFinished, externalInstanceFunctionCaller: (PlatformNavigationDelegate instance, a0) => instance.setOnPageFinished((b0) => a0(b0))),
      'setOnPageStarted': VmProxy(identifier: 'setOnPageStarted', externalInstancePropertyReader: (PlatformNavigationDelegate instance) => instance.setOnPageStarted, externalInstanceFunctionCaller: (PlatformNavigationDelegate instance, a0) => instance.setOnPageStarted((b0) => a0(b0))),
      'setOnProgress': VmProxy(identifier: 'setOnProgress', externalInstancePropertyReader: (PlatformNavigationDelegate instance) => instance.setOnProgress, externalInstanceFunctionCaller: (PlatformNavigationDelegate instance, a0) => instance.setOnProgress((b0) => a0(b0))),
      'setOnUrlChange': VmProxy(identifier: 'setOnUrlChange', externalInstancePropertyReader: (PlatformNavigationDelegate instance) => instance.setOnUrlChange, externalInstanceFunctionCaller: (PlatformNavigationDelegate instance, a0) => instance.setOnUrlChange((b0) => a0(b0))),
      'setOnWebResourceError': VmProxy(identifier: 'setOnWebResourceError', externalInstancePropertyReader: (PlatformNavigationDelegate instance) => instance.setOnWebResourceError, externalInstanceFunctionCaller: (PlatformNavigationDelegate instance, a0) => instance.setOnWebResourceError((b0) => a0(b0))),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PlatformNavigationDelegate instance) => instance.toString),
    },
  );

  ///class PlatformNavigationDelegateCreationParams
  static final classPlatformNavigationDelegateCreationParams = VmClass<PlatformNavigationDelegateCreationParams>(
    identifier: 'PlatformNavigationDelegateCreationParams',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => PlatformNavigationDelegateCreationParams.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PlatformNavigationDelegateCreationParams instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PlatformNavigationDelegateCreationParams instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PlatformNavigationDelegateCreationParams instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PlatformNavigationDelegateCreationParams instance) => instance.toString),
    },
  );

  ///class PlatformWebViewController
  static final classPlatformWebViewController = VmClass<PlatformWebViewController>(
    identifier: 'PlatformWebViewController',
    superclassNames: ['Object', 'PlatformInterface'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => PlatformWebViewController.new),
      'addJavaScriptChannel': VmProxy(identifier: 'addJavaScriptChannel', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.addJavaScriptChannel),
      'canGoBack': VmProxy(identifier: 'canGoBack', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.canGoBack),
      'canGoForward': VmProxy(identifier: 'canGoForward', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.canGoForward),
      'clearCache': VmProxy(identifier: 'clearCache', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.clearCache),
      'clearLocalStorage': VmProxy(identifier: 'clearLocalStorage', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.clearLocalStorage),
      'currentUrl': VmProxy(identifier: 'currentUrl', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.currentUrl),
      'enableZoom': VmProxy(identifier: 'enableZoom', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.enableZoom),
      'getScrollPosition': VmProxy(identifier: 'getScrollPosition', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.getScrollPosition),
      'getTitle': VmProxy(identifier: 'getTitle', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.getTitle),
      'getUserAgent': VmProxy(identifier: 'getUserAgent', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.getUserAgent),
      'goBack': VmProxy(identifier: 'goBack', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.goBack),
      'goForward': VmProxy(identifier: 'goForward', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.goForward),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.hashCode),
      'loadFile': VmProxy(identifier: 'loadFile', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.loadFile),
      'loadFlutterAsset': VmProxy(identifier: 'loadFlutterAsset', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.loadFlutterAsset),
      'loadHtmlString': VmProxy(identifier: 'loadHtmlString', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.loadHtmlString),
      'loadRequest': VmProxy(identifier: 'loadRequest', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.loadRequest),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.noSuchMethod),
      'params': VmProxy(identifier: 'params', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.params),
      'reload': VmProxy(identifier: 'reload', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.reload),
      'removeJavaScriptChannel': VmProxy(identifier: 'removeJavaScriptChannel', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.removeJavaScriptChannel),
      'runJavaScript': VmProxy(identifier: 'runJavaScript', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.runJavaScript),
      'runJavaScriptReturningResult': VmProxy(identifier: 'runJavaScriptReturningResult', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.runJavaScriptReturningResult),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.runtimeType),
      'scrollBy': VmProxy(identifier: 'scrollBy', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.scrollBy),
      'scrollTo': VmProxy(identifier: 'scrollTo', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.scrollTo),
      'setBackgroundColor': VmProxy(identifier: 'setBackgroundColor', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.setBackgroundColor),
      'setJavaScriptMode': VmProxy(identifier: 'setJavaScriptMode', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.setJavaScriptMode),
      'setOnConsoleMessage': VmProxy(identifier: 'setOnConsoleMessage', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.setOnConsoleMessage, externalInstanceFunctionCaller: (PlatformWebViewController instance, a0) => instance.setOnConsoleMessage((b0) => a0(b0))),
      'setOnPlatformPermissionRequest': VmProxy(identifier: 'setOnPlatformPermissionRequest', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.setOnPlatformPermissionRequest, externalInstanceFunctionCaller: (PlatformWebViewController instance, a0) => instance.setOnPlatformPermissionRequest((b0) => a0(b0))),
      'setPlatformNavigationDelegate': VmProxy(identifier: 'setPlatformNavigationDelegate', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.setPlatformNavigationDelegate),
      'setUserAgent': VmProxy(identifier: 'setUserAgent', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.setUserAgent),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PlatformWebViewController instance) => instance.toString),
    },
  );

  ///class PlatformWebViewControllerCreationParams
  static final classPlatformWebViewControllerCreationParams = VmClass<PlatformWebViewControllerCreationParams>(
    identifier: 'PlatformWebViewControllerCreationParams',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => PlatformWebViewControllerCreationParams.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PlatformWebViewControllerCreationParams instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PlatformWebViewControllerCreationParams instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PlatformWebViewControllerCreationParams instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PlatformWebViewControllerCreationParams instance) => instance.toString),
    },
  );

  ///class PlatformWebViewCookieManager
  static final classPlatformWebViewCookieManager = VmClass<PlatformWebViewCookieManager>(
    identifier: 'PlatformWebViewCookieManager',
    superclassNames: ['Object', 'PlatformInterface'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => PlatformWebViewCookieManager.new),
      'clearCookies': VmProxy(identifier: 'clearCookies', externalInstancePropertyReader: (PlatformWebViewCookieManager instance) => instance.clearCookies),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PlatformWebViewCookieManager instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PlatformWebViewCookieManager instance) => instance.noSuchMethod),
      'params': VmProxy(identifier: 'params', externalInstancePropertyReader: (PlatformWebViewCookieManager instance) => instance.params),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PlatformWebViewCookieManager instance) => instance.runtimeType),
      'setCookie': VmProxy(identifier: 'setCookie', externalInstancePropertyReader: (PlatformWebViewCookieManager instance) => instance.setCookie),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PlatformWebViewCookieManager instance) => instance.toString),
    },
  );

  ///class PlatformWebViewCookieManagerCreationParams
  static final classPlatformWebViewCookieManagerCreationParams = VmClass<PlatformWebViewCookieManagerCreationParams>(
    identifier: 'PlatformWebViewCookieManagerCreationParams',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => PlatformWebViewCookieManagerCreationParams.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PlatformWebViewCookieManagerCreationParams instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PlatformWebViewCookieManagerCreationParams instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PlatformWebViewCookieManagerCreationParams instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PlatformWebViewCookieManagerCreationParams instance) => instance.toString),
    },
  );

  ///class PlatformWebViewPermissionRequest
  static final classPlatformWebViewPermissionRequest = VmClass<PlatformWebViewPermissionRequest>(
    identifier: 'PlatformWebViewPermissionRequest',
    superclassNames: ['Object'],
    externalProxyMap: {
      'deny': VmProxy(identifier: 'deny', externalInstancePropertyReader: (PlatformWebViewPermissionRequest instance) => instance.deny),
      'grant': VmProxy(identifier: 'grant', externalInstancePropertyReader: (PlatformWebViewPermissionRequest instance) => instance.grant),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PlatformWebViewPermissionRequest instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PlatformWebViewPermissionRequest instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PlatformWebViewPermissionRequest instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PlatformWebViewPermissionRequest instance) => instance.toString),
      'types': VmProxy(identifier: 'types', externalInstancePropertyReader: (PlatformWebViewPermissionRequest instance) => instance.types),
    },
  );

  ///class PlatformWebViewWidget
  static final classPlatformWebViewWidget = VmClass<PlatformWebViewWidget>(
    identifier: 'PlatformWebViewWidget',
    superclassNames: ['Object', 'PlatformInterface'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => PlatformWebViewWidget.new),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (PlatformWebViewWidget instance) => instance.build),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PlatformWebViewWidget instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PlatformWebViewWidget instance) => instance.noSuchMethod),
      'params': VmProxy(identifier: 'params', externalInstancePropertyReader: (PlatformWebViewWidget instance) => instance.params),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PlatformWebViewWidget instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PlatformWebViewWidget instance) => instance.toString),
    },
  );

  ///class PlatformWebViewWidgetCreationParams
  static final classPlatformWebViewWidgetCreationParams = VmClass<PlatformWebViewWidgetCreationParams>(
    identifier: 'PlatformWebViewWidgetCreationParams',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => PlatformWebViewWidgetCreationParams.new),
      'controller': VmProxy(identifier: 'controller', externalInstancePropertyReader: (PlatformWebViewWidgetCreationParams instance) => instance.controller),
      'gestureRecognizers': VmProxy(identifier: 'gestureRecognizers', externalInstancePropertyReader: (PlatformWebViewWidgetCreationParams instance) => instance.gestureRecognizers),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PlatformWebViewWidgetCreationParams instance) => instance.hashCode),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (PlatformWebViewWidgetCreationParams instance) => instance.key),
      'layoutDirection': VmProxy(identifier: 'layoutDirection', externalInstancePropertyReader: (PlatformWebViewWidgetCreationParams instance) => instance.layoutDirection),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PlatformWebViewWidgetCreationParams instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PlatformWebViewWidgetCreationParams instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PlatformWebViewWidgetCreationParams instance) => instance.toString),
    },
  );

  ///class UrlChange
  static final classUrlChange = VmClass<UrlChange>(
    identifier: 'UrlChange',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => UrlChange.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (UrlChange instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (UrlChange instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (UrlChange instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (UrlChange instance) => instance.toString),
      'url': VmProxy(identifier: 'url', externalInstancePropertyReader: (UrlChange instance) => instance.url),
    },
  );

  ///class WebResourceError
  static final classWebResourceError = VmClass<WebResourceError>(
    identifier: 'WebResourceError',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => WebResourceError.new),
      'description': VmProxy(identifier: 'description', externalInstancePropertyReader: (WebResourceError instance) => instance.description),
      'errorCode': VmProxy(identifier: 'errorCode', externalInstancePropertyReader: (WebResourceError instance) => instance.errorCode),
      'errorType': VmProxy(identifier: 'errorType', externalInstancePropertyReader: (WebResourceError instance) => instance.errorType),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (WebResourceError instance) => instance.hashCode),
      'isForMainFrame': VmProxy(identifier: 'isForMainFrame', externalInstancePropertyReader: (WebResourceError instance) => instance.isForMainFrame),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (WebResourceError instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (WebResourceError instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (WebResourceError instance) => instance.toString),
      'url': VmProxy(identifier: 'url', externalInstancePropertyReader: (WebResourceError instance) => instance.url),
    },
  );

  ///class WebResourceErrorType
  static final classWebResourceErrorType = VmClass<WebResourceErrorType>(
    identifier: 'WebResourceErrorType',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'authentication': VmProxy(identifier: 'authentication', externalStaticPropertyReader: () => WebResourceErrorType.authentication),
      'badUrl': VmProxy(identifier: 'badUrl', externalStaticPropertyReader: () => WebResourceErrorType.badUrl),
      'connect': VmProxy(identifier: 'connect', externalStaticPropertyReader: () => WebResourceErrorType.connect),
      'failedSslHandshake': VmProxy(identifier: 'failedSslHandshake', externalStaticPropertyReader: () => WebResourceErrorType.failedSslHandshake),
      'file': VmProxy(identifier: 'file', externalStaticPropertyReader: () => WebResourceErrorType.file),
      'fileNotFound': VmProxy(identifier: 'fileNotFound', externalStaticPropertyReader: () => WebResourceErrorType.fileNotFound),
      'hostLookup': VmProxy(identifier: 'hostLookup', externalStaticPropertyReader: () => WebResourceErrorType.hostLookup),
      'io': VmProxy(identifier: 'io', externalStaticPropertyReader: () => WebResourceErrorType.io),
      'javaScriptExceptionOccurred': VmProxy(identifier: 'javaScriptExceptionOccurred', externalStaticPropertyReader: () => WebResourceErrorType.javaScriptExceptionOccurred),
      'javaScriptResultTypeIsUnsupported': VmProxy(identifier: 'javaScriptResultTypeIsUnsupported', externalStaticPropertyReader: () => WebResourceErrorType.javaScriptResultTypeIsUnsupported),
      'proxyAuthentication': VmProxy(identifier: 'proxyAuthentication', externalStaticPropertyReader: () => WebResourceErrorType.proxyAuthentication),
      'redirectLoop': VmProxy(identifier: 'redirectLoop', externalStaticPropertyReader: () => WebResourceErrorType.redirectLoop),
      'timeout': VmProxy(identifier: 'timeout', externalStaticPropertyReader: () => WebResourceErrorType.timeout),
      'tooManyRequests': VmProxy(identifier: 'tooManyRequests', externalStaticPropertyReader: () => WebResourceErrorType.tooManyRequests),
      'unknown': VmProxy(identifier: 'unknown', externalStaticPropertyReader: () => WebResourceErrorType.unknown),
      'unsafeResource': VmProxy(identifier: 'unsafeResource', externalStaticPropertyReader: () => WebResourceErrorType.unsafeResource),
      'unsupportedAuthScheme': VmProxy(identifier: 'unsupportedAuthScheme', externalStaticPropertyReader: () => WebResourceErrorType.unsupportedAuthScheme),
      'unsupportedScheme': VmProxy(identifier: 'unsupportedScheme', externalStaticPropertyReader: () => WebResourceErrorType.unsupportedScheme),
      'webContentProcessTerminated': VmProxy(identifier: 'webContentProcessTerminated', externalStaticPropertyReader: () => WebResourceErrorType.webContentProcessTerminated),
      'webViewInvalidated': VmProxy(identifier: 'webViewInvalidated', externalStaticPropertyReader: () => WebResourceErrorType.webViewInvalidated),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (WebResourceErrorType instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (WebResourceErrorType instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (WebResourceErrorType instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (WebResourceErrorType instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (WebResourceErrorType instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (WebResourceErrorType instance) => instance.toString),
    },
  );

  ///class WebViewController
  static final classWebViewController = VmClass<WebViewController>(
    identifier: 'WebViewController',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => WebViewController.new, externalStaticFunctionCaller: ({onPermissionRequest}) => WebViewController.new(onPermissionRequest: onPermissionRequest == null ? null : (b0) => onPermissionRequest(b0))),
      'fromPlatform': VmProxy(identifier: 'fromPlatform', externalStaticPropertyReader: () => WebViewController.fromPlatform, externalStaticFunctionCaller: (a0, {onPermissionRequest}) => WebViewController.fromPlatform(a0, onPermissionRequest: onPermissionRequest == null ? null : (b0) => onPermissionRequest(b0))),
      'fromPlatformCreationParams': VmProxy(identifier: 'fromPlatformCreationParams', externalStaticPropertyReader: () => WebViewController.fromPlatformCreationParams, externalStaticFunctionCaller: (a0, {onPermissionRequest}) => WebViewController.fromPlatformCreationParams(a0, onPermissionRequest: onPermissionRequest == null ? null : (b0) => onPermissionRequest(b0))),
      'addJavaScriptChannel': VmProxy(identifier: 'addJavaScriptChannel', externalInstancePropertyReader: (WebViewController instance) => instance.addJavaScriptChannel, externalInstanceFunctionCaller: (WebViewController instance, a0, {onMessageReceived}) => instance.addJavaScriptChannel(a0, onMessageReceived: (b0) => onMessageReceived(b0))),
      'canGoBack': VmProxy(identifier: 'canGoBack', externalInstancePropertyReader: (WebViewController instance) => instance.canGoBack),
      'canGoForward': VmProxy(identifier: 'canGoForward', externalInstancePropertyReader: (WebViewController instance) => instance.canGoForward),
      'clearCache': VmProxy(identifier: 'clearCache', externalInstancePropertyReader: (WebViewController instance) => instance.clearCache),
      'clearLocalStorage': VmProxy(identifier: 'clearLocalStorage', externalInstancePropertyReader: (WebViewController instance) => instance.clearLocalStorage),
      'currentUrl': VmProxy(identifier: 'currentUrl', externalInstancePropertyReader: (WebViewController instance) => instance.currentUrl),
      'enableZoom': VmProxy(identifier: 'enableZoom', externalInstancePropertyReader: (WebViewController instance) => instance.enableZoom),
      'getScrollPosition': VmProxy(identifier: 'getScrollPosition', externalInstancePropertyReader: (WebViewController instance) => instance.getScrollPosition),
      'getTitle': VmProxy(identifier: 'getTitle', externalInstancePropertyReader: (WebViewController instance) => instance.getTitle),
      'getUserAgent': VmProxy(identifier: 'getUserAgent', externalInstancePropertyReader: (WebViewController instance) => instance.getUserAgent),
      'goBack': VmProxy(identifier: 'goBack', externalInstancePropertyReader: (WebViewController instance) => instance.goBack),
      'goForward': VmProxy(identifier: 'goForward', externalInstancePropertyReader: (WebViewController instance) => instance.goForward),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (WebViewController instance) => instance.hashCode),
      'loadFile': VmProxy(identifier: 'loadFile', externalInstancePropertyReader: (WebViewController instance) => instance.loadFile),
      'loadFlutterAsset': VmProxy(identifier: 'loadFlutterAsset', externalInstancePropertyReader: (WebViewController instance) => instance.loadFlutterAsset),
      'loadHtmlString': VmProxy(identifier: 'loadHtmlString', externalInstancePropertyReader: (WebViewController instance) => instance.loadHtmlString),
      'loadRequest': VmProxy(identifier: 'loadRequest', externalInstancePropertyReader: (WebViewController instance) => instance.loadRequest),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (WebViewController instance) => instance.noSuchMethod),
      'platform': VmProxy(identifier: 'platform', externalInstancePropertyReader: (WebViewController instance) => instance.platform),
      'reload': VmProxy(identifier: 'reload', externalInstancePropertyReader: (WebViewController instance) => instance.reload),
      'removeJavaScriptChannel': VmProxy(identifier: 'removeJavaScriptChannel', externalInstancePropertyReader: (WebViewController instance) => instance.removeJavaScriptChannel),
      'runJavaScript': VmProxy(identifier: 'runJavaScript', externalInstancePropertyReader: (WebViewController instance) => instance.runJavaScript),
      'runJavaScriptReturningResult': VmProxy(identifier: 'runJavaScriptReturningResult', externalInstancePropertyReader: (WebViewController instance) => instance.runJavaScriptReturningResult),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (WebViewController instance) => instance.runtimeType),
      'scrollBy': VmProxy(identifier: 'scrollBy', externalInstancePropertyReader: (WebViewController instance) => instance.scrollBy),
      'scrollTo': VmProxy(identifier: 'scrollTo', externalInstancePropertyReader: (WebViewController instance) => instance.scrollTo),
      'setBackgroundColor': VmProxy(identifier: 'setBackgroundColor', externalInstancePropertyReader: (WebViewController instance) => instance.setBackgroundColor),
      'setJavaScriptMode': VmProxy(identifier: 'setJavaScriptMode', externalInstancePropertyReader: (WebViewController instance) => instance.setJavaScriptMode),
      'setNavigationDelegate': VmProxy(identifier: 'setNavigationDelegate', externalInstancePropertyReader: (WebViewController instance) => instance.setNavigationDelegate),
      'setOnConsoleMessage': VmProxy(identifier: 'setOnConsoleMessage', externalInstancePropertyReader: (WebViewController instance) => instance.setOnConsoleMessage, externalInstanceFunctionCaller: (WebViewController instance, a0) => instance.setOnConsoleMessage((b0) => a0(b0))),
      'setUserAgent': VmProxy(identifier: 'setUserAgent', externalInstancePropertyReader: (WebViewController instance) => instance.setUserAgent),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (WebViewController instance) => instance.toString),
    },
  );

  ///class WebViewCookie
  static final classWebViewCookie = VmClass<WebViewCookie>(
    identifier: 'WebViewCookie',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => WebViewCookie.new),
      'domain': VmProxy(identifier: 'domain', externalInstancePropertyReader: (WebViewCookie instance) => instance.domain),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (WebViewCookie instance) => instance.hashCode),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (WebViewCookie instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (WebViewCookie instance) => instance.noSuchMethod),
      'path': VmProxy(identifier: 'path', externalInstancePropertyReader: (WebViewCookie instance) => instance.path),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (WebViewCookie instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (WebViewCookie instance) => instance.toString),
      'value': VmProxy(identifier: 'value', externalInstancePropertyReader: (WebViewCookie instance) => instance.value),
    },
  );

  ///class WebViewCookieManager
  static final classWebViewCookieManager = VmClass<WebViewCookieManager>(
    identifier: 'WebViewCookieManager',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => WebViewCookieManager.new),
      'fromPlatform': VmProxy(identifier: 'fromPlatform', externalStaticPropertyReader: () => WebViewCookieManager.fromPlatform),
      'fromPlatformCreationParams': VmProxy(identifier: 'fromPlatformCreationParams', externalStaticPropertyReader: () => WebViewCookieManager.fromPlatformCreationParams),
      'clearCookies': VmProxy(identifier: 'clearCookies', externalInstancePropertyReader: (WebViewCookieManager instance) => instance.clearCookies),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (WebViewCookieManager instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (WebViewCookieManager instance) => instance.noSuchMethod),
      'platform': VmProxy(identifier: 'platform', externalInstancePropertyReader: (WebViewCookieManager instance) => instance.platform),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (WebViewCookieManager instance) => instance.runtimeType),
      'setCookie': VmProxy(identifier: 'setCookie', externalInstancePropertyReader: (WebViewCookieManager instance) => instance.setCookie),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (WebViewCookieManager instance) => instance.toString),
    },
  );

  ///class WebViewCredential
  static final classWebViewCredential = VmClass<WebViewCredential>(
    identifier: 'WebViewCredential',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => WebViewCredential.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (WebViewCredential instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (WebViewCredential instance) => instance.noSuchMethod),
      'password': VmProxy(identifier: 'password', externalInstancePropertyReader: (WebViewCredential instance) => instance.password),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (WebViewCredential instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (WebViewCredential instance) => instance.toString),
      'user': VmProxy(identifier: 'user', externalInstancePropertyReader: (WebViewCredential instance) => instance.user),
    },
  );

  ///class WebViewPermissionRequest
  static final classWebViewPermissionRequest = VmClass<WebViewPermissionRequest>(
    identifier: 'WebViewPermissionRequest',
    superclassNames: ['Object'],
    externalProxyMap: {
      'deny': VmProxy(identifier: 'deny', externalInstancePropertyReader: (WebViewPermissionRequest instance) => instance.deny),
      'grant': VmProxy(identifier: 'grant', externalInstancePropertyReader: (WebViewPermissionRequest instance) => instance.grant),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (WebViewPermissionRequest instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (WebViewPermissionRequest instance) => instance.noSuchMethod),
      'platform': VmProxy(identifier: 'platform', externalInstancePropertyReader: (WebViewPermissionRequest instance) => instance.platform),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (WebViewPermissionRequest instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (WebViewPermissionRequest instance) => instance.toString),
      'types': VmProxy(identifier: 'types', externalInstancePropertyReader: (WebViewPermissionRequest instance) => instance.types),
    },
  );

  ///class WebViewPermissionResourceType
  static final classWebViewPermissionResourceType = VmClass<WebViewPermissionResourceType>(
    identifier: 'WebViewPermissionResourceType',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => WebViewPermissionResourceType.new),
      'camera': VmProxy(identifier: 'camera', externalStaticPropertyReader: () => WebViewPermissionResourceType.camera),
      'microphone': VmProxy(identifier: 'microphone', externalStaticPropertyReader: () => WebViewPermissionResourceType.microphone),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (WebViewPermissionResourceType instance) => instance.hashCode),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (WebViewPermissionResourceType instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (WebViewPermissionResourceType instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (WebViewPermissionResourceType instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (WebViewPermissionResourceType instance) => instance.toString),
    },
  );

  ///class WebViewPlatform
  static final classWebViewPlatform = VmClass<WebViewPlatform>(
    identifier: 'WebViewPlatform',
    superclassNames: ['Object', 'PlatformInterface'],
    externalProxyMap: {
      'instance': VmProxy(identifier: 'instance', externalStaticPropertyReader: () => WebViewPlatform.instance, externalStaticPropertyWriter: (value) => WebViewPlatform.instance = value),
      'createPlatformCookieManager': VmProxy(identifier: 'createPlatformCookieManager', externalInstancePropertyReader: (WebViewPlatform instance) => instance.createPlatformCookieManager),
      'createPlatformNavigationDelegate': VmProxy(identifier: 'createPlatformNavigationDelegate', externalInstancePropertyReader: (WebViewPlatform instance) => instance.createPlatformNavigationDelegate),
      'createPlatformWebViewController': VmProxy(identifier: 'createPlatformWebViewController', externalInstancePropertyReader: (WebViewPlatform instance) => instance.createPlatformWebViewController),
      'createPlatformWebViewWidget': VmProxy(identifier: 'createPlatformWebViewWidget', externalInstancePropertyReader: (WebViewPlatform instance) => instance.createPlatformWebViewWidget),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (WebViewPlatform instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (WebViewPlatform instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (WebViewPlatform instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (WebViewPlatform instance) => instance.toString),
    },
  );

  ///class WebViewWidget
  static final classWebViewWidget = VmClass<WebViewWidget>(
    identifier: 'WebViewWidget',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatelessWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => WebViewWidget.new),
      'fromPlatform': VmProxy(identifier: 'fromPlatform', externalStaticPropertyReader: () => WebViewWidget.fromPlatform),
      'fromPlatformCreationParams': VmProxy(identifier: 'fromPlatformCreationParams', externalStaticPropertyReader: () => WebViewWidget.fromPlatformCreationParams),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (WebViewWidget instance) => instance.build),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (WebViewWidget instance) => instance.createElement),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (WebViewWidget instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (WebViewWidget instance) => instance.debugFillProperties),
      'gestureRecognizers': VmProxy(identifier: 'gestureRecognizers', externalInstancePropertyReader: (WebViewWidget instance) => instance.gestureRecognizers),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (WebViewWidget instance) => instance.hashCode),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (WebViewWidget instance) => instance.key),
      'layoutDirection': VmProxy(identifier: 'layoutDirection', externalInstancePropertyReader: (WebViewWidget instance) => instance.layoutDirection),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (WebViewWidget instance) => instance.noSuchMethod),
      'platform': VmProxy(identifier: 'platform', externalInstancePropertyReader: (WebViewWidget instance) => instance.platform),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (WebViewWidget instance) => instance.runtimeType),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (WebViewWidget instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (WebViewWidget instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (WebViewWidget instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (WebViewWidget instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (WebViewWidget instance) => instance.toStringShort),
    },
  );

  ///all class list
  static final libraryClassList = <VmClass>[
    classHttpAuthRequest,
    classHttpResponseError,
    classJavaScriptChannelParams,
    classJavaScriptConsoleMessage,
    classJavaScriptLogLevel,
    classJavaScriptMessage,
    classJavaScriptMode,
    classLoadRequestMethod,
    classLoadRequestParams,
    classNavigationDecision,
    classNavigationDelegate,
    classNavigationRequest,
    classPlatformNavigationDelegate,
    classPlatformNavigationDelegateCreationParams,
    classPlatformWebViewController,
    classPlatformWebViewControllerCreationParams,
    classPlatformWebViewCookieManager,
    classPlatformWebViewCookieManagerCreationParams,
    classPlatformWebViewPermissionRequest,
    classPlatformWebViewWidget,
    classPlatformWebViewWidgetCreationParams,
    classUrlChange,
    classWebResourceError,
    classWebResourceErrorType,
    classWebViewController,
    classWebViewCookie,
    classWebViewCookieManager,
    classWebViewCredential,
    classWebViewPermissionRequest,
    classWebViewPermissionResourceType,
    classWebViewPlatform,
    classWebViewWidget,
  ];

  ///all proxy list
  static final libraryProxyList = <VmProxy<void>>[];
}
