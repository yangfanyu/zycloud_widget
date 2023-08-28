//core
import 'core/dart_library.dart';
import 'core/dartui_library.dart';
import 'core/flutter_library.dart';
import 'core/zyclient_library.dart';
import 'core/zywidget_library.dart';

//extend_full
import 'extend_full/audioplayers_library.dart';
import 'extend_full/flutter_linkify_library.dart';
import 'extend_full/flutter_slidable_library.dart';
import 'extend_full/flutter_vector_icons_library.dart';
import 'extend_full/flutter_webrtc_library.dart';
import 'extend_full/loading_indicator_library.dart';
import 'extend_full/scrollable_positioned_list_library.dart';
import 'extend_full/url_launcher_library.dart';

//extend_part
import 'extend_part/permission_handler_library.dart';
import 'extend_part/webview_flutter_library.dart';

///
///Native环境的桥接库列表
///
class ZyBridge {
  ///核心类型库
  static final coreClassList = [
    ...DartLibrary.libraryClassList,
    ...DartuiLibrary.libraryClassList,
    ...FlutterLibrary.libraryClassList,
    ...ZyclientLibrary.libraryClassList,
    ...ZywidgetLibrary.libraryClassList,
  ];

  ///核心代理库
  static final coreProxyList = [
    ...DartLibrary.libraryProxyList,
    ...DartuiLibrary.libraryProxyList,
    ...FlutterLibrary.libraryProxyList,
    ...ZyclientLibrary.libraryProxyList,
    ...ZywidgetLibrary.libraryProxyList,
  ];

  ///三方类型库
  static final userClassList = [
    //extend_full
    ...AudioplayersLibrary.libraryClassList,
    ...FlutterLinkifyLibrary.libraryClassList,
    ...FlutterSlidableLibrary.libraryClassList,
    ...FlutterVectorIconsLibrary.libraryClassList,
    ...FlutterWebrtcLibrary.libraryClassList,
    ...LoadingIndicatorLibrary.libraryClassList,
    ...ScrollablePositionedListLibrary.libraryClassList,
    ...UrlLauncherLibrary.libraryClassList,
    //extend_part
    ...PermissionHandlerLibrary.libraryClassList,
    ...WebviewFlutterLibrary.libraryClassList,
  ];

  ///三方代理库
  static final userProxyList = [
    //extend_full
    ...AudioplayersLibrary.libraryProxyList,
    ...FlutterLinkifyLibrary.libraryProxyList,
    ...FlutterSlidableLibrary.libraryProxyList,
    ...FlutterVectorIconsLibrary.libraryProxyList,
    ...FlutterWebrtcLibrary.libraryProxyList,
    ...LoadingIndicatorLibrary.libraryProxyList,
    ...ScrollablePositionedListLibrary.libraryProxyList,
    ...UrlLauncherLibrary.libraryProxyList,
    //extend_part
    ...PermissionHandlerLibrary.libraryProxyList,
    ...WebviewFlutterLibrary.libraryProxyList,
  ];
}
