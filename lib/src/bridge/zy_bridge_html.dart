import 'package:shelf_easy/shelf_easy.dart';

///
///web环境无需桥接库
///
class ZyBridge {
  ///核心类型库
  static final coreClassList = <VmClass>[];

  ///核心代理库
  static final coreProxyList = <VmProxy>[];

  ///三方类型库
  static final userClassList = <VmClass>[];

  ///三方代理库
  static final userProxyList = <VmProxy>[];
}
