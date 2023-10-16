// ignore_for_file: avoid_function_literals_in_foreach_calls
// ignore_for_file: deprecated_member_use
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: unnecessary_constructor_name

import 'package:shelf_easy/shelf_easy.dart';
import 'package:app_links/app_links.dart';

///
///app_links库桥接类
///
class AppLinksLibrary {
  ///class AppLinks
  static final classAppLinks = VmClass<AppLinks>(
    identifier: 'AppLinks',
    superclassNames: ['Object', 'PlatformInterface', 'AppLinksPlatform'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => AppLinks.new),
      'allStringLinkStream': VmProxy(identifier: 'allStringLinkStream', externalInstancePropertyReader: (AppLinks instance) => instance.allStringLinkStream),
      'allUriLinkStream': VmProxy(identifier: 'allUriLinkStream', externalInstancePropertyReader: (AppLinks instance) => instance.allUriLinkStream),
      'getInitialAppLink': VmProxy(identifier: 'getInitialAppLink', externalInstancePropertyReader: (AppLinks instance) => instance.getInitialAppLink),
      'getInitialAppLinkString': VmProxy(identifier: 'getInitialAppLinkString', externalInstancePropertyReader: (AppLinks instance) => instance.getInitialAppLinkString),
      'getLatestAppLink': VmProxy(identifier: 'getLatestAppLink', externalInstancePropertyReader: (AppLinks instance) => instance.getLatestAppLink),
      'getLatestAppLinkString': VmProxy(identifier: 'getLatestAppLinkString', externalInstancePropertyReader: (AppLinks instance) => instance.getLatestAppLinkString),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AppLinks instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AppLinks instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AppLinks instance) => instance.runtimeType),
      'stringLinkStream': VmProxy(identifier: 'stringLinkStream', externalInstancePropertyReader: (AppLinks instance) => instance.stringLinkStream),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AppLinks instance) => instance.toString),
      'uriLinkStream': VmProxy(identifier: 'uriLinkStream', externalInstancePropertyReader: (AppLinks instance) => instance.uriLinkStream),
    },
  );

  ///all class list
  static final libraryClassList = <VmClass>[
    classAppLinks,
  ];

  ///all proxy list
  static final libraryProxyList = <VmProxy<void>>[];
}
