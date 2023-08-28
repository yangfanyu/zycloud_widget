// ignore_for_file: avoid_function_literals_in_foreach_calls
// ignore_for_file: deprecated_member_use
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: unnecessary_constructor_name

import 'package:shelf_easy/shelf_easy.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

///
///url_launcher库桥接类
///
class UrlLauncherLibrary {
  ///class LaunchMode
  static final classLaunchMode = VmClass<LaunchMode>(
    identifier: 'LaunchMode',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'externalApplication': VmProxy(identifier: 'externalApplication', externalStaticPropertyReader: () => LaunchMode.externalApplication),
      'externalNonBrowserApplication': VmProxy(identifier: 'externalNonBrowserApplication', externalStaticPropertyReader: () => LaunchMode.externalNonBrowserApplication),
      'inAppWebView': VmProxy(identifier: 'inAppWebView', externalStaticPropertyReader: () => LaunchMode.inAppWebView),
      'platformDefault': VmProxy(identifier: 'platformDefault', externalStaticPropertyReader: () => LaunchMode.platformDefault),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (LaunchMode instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (LaunchMode instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (LaunchMode instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (LaunchMode instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (LaunchMode instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (LaunchMode instance) => instance.toString),
    },
  );

  ///class WebViewConfiguration
  static final classWebViewConfiguration = VmClass<WebViewConfiguration>(
    identifier: 'WebViewConfiguration',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => WebViewConfiguration.new),
      'enableDomStorage': VmProxy(identifier: 'enableDomStorage', externalInstancePropertyReader: (WebViewConfiguration instance) => instance.enableDomStorage),
      'enableJavaScript': VmProxy(identifier: 'enableJavaScript', externalInstancePropertyReader: (WebViewConfiguration instance) => instance.enableJavaScript),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (WebViewConfiguration instance) => instance.hashCode),
      'headers': VmProxy(identifier: 'headers', externalInstancePropertyReader: (WebViewConfiguration instance) => instance.headers),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (WebViewConfiguration instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (WebViewConfiguration instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (WebViewConfiguration instance) => instance.toString),
    },
  );

  ///all class list
  static final libraryClassList = <VmClass>[
    classLaunchMode,
    classWebViewConfiguration,
  ];

  ///all proxy list
  static final libraryProxyList = <VmProxy<void>>[
    VmProxy(identifier: 'canLaunch', externalStaticPropertyReader: () => canLaunch),
    VmProxy(identifier: 'canLaunchUrl', externalStaticPropertyReader: () => canLaunchUrl),
    VmProxy(identifier: 'canLaunchUrlString', externalStaticPropertyReader: () => canLaunchUrlString),
    VmProxy(identifier: 'closeInAppWebView', externalStaticPropertyReader: () => closeInAppWebView),
    VmProxy(identifier: 'closeWebView', externalStaticPropertyReader: () => closeWebView),
    VmProxy(identifier: 'launch', externalStaticPropertyReader: () => launch),
    VmProxy(identifier: 'launchUrl', externalStaticPropertyReader: () => launchUrl),
    VmProxy(identifier: 'launchUrlString', externalStaticPropertyReader: () => launchUrlString),
  ];
}
