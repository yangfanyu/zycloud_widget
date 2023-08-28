import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:platform_device_id/platform_device_id.dart';

///
///设备类型
///
enum ZyDeviceType {
  ///web浏览器
  web,

  ///andrid移动设备
  android,

  ///ios移动设备
  ios,

  ///macos桌面设备
  macos,

  ///linux桌面设备
  linux,

  ///windows桌面设备
  windows,

  ///fuchsia桌面设备
  fuchsia,

  ///others桌面设备
  others,
}

///
///设备信息
///
class ZyDeviceInfo {
  ///设备标识
  static late final String _deviceId;

  ///设备类型
  static late final ZyDeviceType _deviceType;

  ///设备应用包信息
  static late final ZyDevicePackge _devicePackge;

  ///设备详细的信息
  static late final ZyDeviceDetail _deviceDetail;

  ///设备网络Agent
  static late final String _deviceNetAgent;

  ///是否为物理设备
  static late final bool _isPhysicalDevice;

  ///临时文件目录
  static late final String _temporaryDirectory;

  ///应用支持目录
  static late final String _applicationSupportDirectory;

  ///应用文档目录
  static late final String _applicationDocumentsDirectory;

  ///初始化
  static Future<void> init({String agentFlag = 'ZyDevice'}) async {
    ///_deviceType
    if (kIsWeb) {
      _deviceType = ZyDeviceType.web;
    } else if (Platform.isAndroid) {
      _deviceType = ZyDeviceType.android;
    } else if (Platform.isIOS) {
      _deviceType = ZyDeviceType.ios;
    } else if (Platform.isMacOS) {
      _deviceType = ZyDeviceType.macos;
    } else if (Platform.isLinux) {
      _deviceType = ZyDeviceType.linux;
    } else if (Platform.isWindows) {
      _deviceType = ZyDeviceType.windows;
    } else if (Platform.isFuchsia) {
      _deviceType = ZyDeviceType.fuchsia;
    } else {
      _deviceType = ZyDeviceType.others;
    }

    ///_deviceId: https://pub.dev/packages/platform_device_id
    final tempDeviceId = await PlatformDeviceId.getDeviceId;
    if (_deviceType == ZyDeviceType.linux) {
      _deviceId = tempDeviceId == null || tempDeviceId.isEmpty ? (await DeviceInfoPlugin().linuxInfo).machineId ?? 'Unknow' : tempDeviceId;
    } else {
      _deviceId = tempDeviceId == null || tempDeviceId.isEmpty ? 'Unknow' : tempDeviceId;
    }

    ///_devicePackge: https://pub.dev/packages/package_info_plus
    final tempPackageInfo = await PackageInfo.fromPlatform();
    _devicePackge = ZyDevicePackge(
      appName: tempPackageInfo.appName,
      packageName: tempPackageInfo.packageName,
      version: tempPackageInfo.version,
      buildNumber: tempPackageInfo.buildNumber,
      buildSignature: tempPackageInfo.buildSignature,
      installerStore: tempPackageInfo.installerStore,
    );

    ///_deviceInfo and _agentInfo: https://pub.dev/packages/device_info_plus
    switch (_deviceType) {
      case ZyDeviceType.web:
        final webBrowserInfo = await DeviceInfoPlugin().webBrowserInfo;
        _deviceDetail = ZyDeviceDetail(data: webBrowserInfo.data..['browserName'] = webBrowserInfo.browserName.name, originData: webBrowserInfo); //browserName为枚举类型，web端不支持枚举转json会报错
        _deviceNetAgent = 'Browser ${webBrowserInfo.appVersion}; ${webBrowserInfo.browserName.name}; ${agentFlag}Messenger ${_devicePackge.version}';
        _isPhysicalDevice = true;
        break;
      case ZyDeviceType.android:
        final androidInfo = await DeviceInfoPlugin().androidInfo;
        _deviceDetail = ZyDeviceDetail(data: androidInfo.data, originData: androidInfo);
        _deviceNetAgent = 'Android ${androidInfo.version.release}; ${androidInfo.brand} ${androidInfo.model}; ${agentFlag}Messenger ${_devicePackge.version}';
        _isPhysicalDevice = androidInfo.isPhysicalDevice;
        break;
      case ZyDeviceType.ios:
        final iosInfo = await DeviceInfoPlugin().iosInfo;
        _deviceDetail = ZyDeviceDetail(data: iosInfo.data, originData: iosInfo);
        _deviceNetAgent = 'IOS ${iosInfo.systemVersion}; ${iosInfo.utsname.machine}; ${agentFlag}Messenger ${_devicePackge.version}';
        _isPhysicalDevice = iosInfo.isPhysicalDevice;
        break;
      case ZyDeviceType.macos:
        final macOsInfo = await DeviceInfoPlugin().macOsInfo;
        _deviceDetail = ZyDeviceDetail(data: macOsInfo.data, originData: macOsInfo);
        _deviceNetAgent = 'MacOS ${macOsInfo.osRelease}; ${macOsInfo.model}; ${agentFlag}Messenger ${_devicePackge.version}';
        _isPhysicalDevice = true;
        break;
      case ZyDeviceType.linux:
        final linuxInfo = await DeviceInfoPlugin().linuxInfo;
        _deviceDetail = ZyDeviceDetail(data: linuxInfo.data, originData: linuxInfo);
        _deviceNetAgent = 'Linux ${linuxInfo.version}; ${linuxInfo.versionCodename}; ${agentFlag}Messenger ${_devicePackge.version}';
        _isPhysicalDevice = true;
        break;
      case ZyDeviceType.windows:
        final windowsInfo = await DeviceInfoPlugin().windowsInfo;
        _deviceDetail = ZyDeviceDetail(data: windowsInfo.data, originData: windowsInfo);
        _deviceNetAgent = 'Windows ${windowsInfo.computerName}; ${agentFlag}Messenger ${_devicePackge.version}';
        _isPhysicalDevice = true;
        break;
      case ZyDeviceType.fuchsia:
        _deviceDetail = ZyDeviceDetail(data: {'name': _deviceType.name}, originData: null);
        _deviceNetAgent = 'Fuchsia ${agentFlag}Messenger ${_devicePackge.version}';
        _isPhysicalDevice = true;
        break;
      case ZyDeviceType.others:
        _deviceDetail = ZyDeviceDetail(data: {'name': _deviceType.name}, originData: null);
        _deviceNetAgent = 'Unknow ${agentFlag}Messenger ${_devicePackge.version}';
        _isPhysicalDevice = true;
        break;
    }

    ///directories: https://pub.dev/packages/path_provider
    if (_deviceType == ZyDeviceType.web) {
      _temporaryDirectory = '/';
      _applicationSupportDirectory = '/';
      _applicationDocumentsDirectory = '/';
    } else {
      _temporaryDirectory = (await getTemporaryDirectory()).path;
      _applicationSupportDirectory = (await getApplicationSupportDirectory()).path;
      _applicationDocumentsDirectory = (await getApplicationDocumentsDirectory()).path;
    }
  }

  ///设备标识
  static String get deviceId => _deviceId;

  ///设备类型
  static ZyDeviceType get deviceType => _deviceType;

  ///设备应用包信息
  static ZyDevicePackge get devicePackge => _devicePackge;

  ///设备详细的信息
  static ZyDeviceDetail get deviceDetail => _deviceDetail;

  ///设备网络Agent
  static String get deviceNetAgent => _deviceNetAgent;

  ///是否为物理设备
  static bool get isPhysicalDevice => _isPhysicalDevice;

  ///是否为移动设备
  static bool get isMobileDevice => _deviceType == ZyDeviceType.android || _deviceType == ZyDeviceType.ios;

  ///是否为桌面设备
  static bool get isDesktopDevice => _deviceType == ZyDeviceType.macos || _deviceType == ZyDeviceType.linux || _deviceType == ZyDeviceType.windows || _deviceType == ZyDeviceType.fuchsia;

  ///是否为苹果设备
  static bool get isAppleDevice => _deviceType == ZyDeviceType.ios || _deviceType == ZyDeviceType.macos;

  ///是否为web环境
  static bool get isWeb => _deviceType == ZyDeviceType.web;

  ///是否为android环境
  static bool get isAndroid => _deviceType == ZyDeviceType.android;

  ///是否为ios环境
  static bool get isIOS => _deviceType == ZyDeviceType.ios;

  ///是否为macos环境
  static bool get isMacOS => _deviceType == ZyDeviceType.macos;

  ///是否为linux环境
  static bool get isLinux => _deviceType == ZyDeviceType.linux;

  ///是否为windows环境
  static bool get isWindows => _deviceType == ZyDeviceType.windows;

  ///是否为fuchsia环境
  static bool get isFuchsia => _deviceType == ZyDeviceType.fuchsia;

  ///是否为others环境
  static bool get isOthers => _deviceType == ZyDeviceType.others;

  ///临时文件目录
  static String get temporaryDirectory => _temporaryDirectory;

  ///应用支持目录
  static String get applicationSupportDirectory => _applicationSupportDirectory;

  ///应用文档目录
  static String get applicationDocumentsDirectory => _applicationDocumentsDirectory;
}

///
///设备应用包信息[PackageInfo]的封装
///
class ZyDevicePackge {
  /// The app name. `CFBundleDisplayName` on iOS, `application/label` on Android.
  final String appName;

  /// The package name. `bundleIdentifier` on iOS, `getPackageName` on Android.
  final String packageName;

  /// The package version. `CFBundleShortVersionString` on iOS, `versionName` on Android.
  final String version;

  /// The build number. `CFBundleVersion` on iOS, `versionCode` on Android.
  final String buildNumber;

  /// The build signature. Empty string on iOS, signing key signature (hex) on Android.
  final String buildSignature;

  /// The installer store. Indicates through which store this application was installed.
  final String? installerStore;

  ZyDevicePackge({
    required this.appName,
    required this.packageName,
    required this.version,
    required this.buildNumber,
    required this.buildSignature,
    required this.installerStore,
  });

  ///整数构建号
  int get intBuildNumber => int.tryParse(buildNumber) ?? 0;

  ///Map数据
  Map<String, dynamic> get data => {
        'appName': appName,
        'packageName': packageName,
        'version': version,
        'buildNumber': buildNumber,
        'buildSignature': buildSignature,
        'installerStore': installerStore,
      };
}

///
///设备详细信息[DeviceInfoPlugin]的封装
///
class ZyDeviceDetail {
  ///Map数据
  final Map<String, dynamic> data;

  ///原始数据
  final dynamic originData;

  ZyDeviceDetail({required this.data, required this.originData});
}
