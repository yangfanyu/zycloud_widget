library zycloud_bridge;

export 'src/bridge/zy_bridge_native.dart' if (dart.library.html) 'src/bridge/zy_bridge_html.dart';
