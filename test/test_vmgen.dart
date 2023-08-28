import 'dart:convert';
import 'dart:io';

import 'package:pubspec_lock/pubspec_lock.dart';
import 'package:shelf_easy/shelf_easy.dart';

//读取环境的路径
final machineHome = Platform.environment['HOME']; //用户根目录
final flutterHome = Platform.environment['FLUTTER_HOME']; //flutter根目录
//核心服务相关库
final coreVersionMap = {
  'http': '',
  'http_parser': '',
  'bson': '',
  'shelf_easy': '',
  'zycloud_client': '',
};
String get httpVersion => coreVersionMap['http']!;
String get httpParserVersion => coreVersionMap['http_parser']!;
String get bsonVersion => coreVersionMap['bson']!;
String get shelfEasyVersion => coreVersionMap['shelf_easy']!;
String get zycloudClientVersion => coreVersionMap['zycloud_client']!;
//全部平台扩展库
final extendFullVersionMap = {
  'audioplayers': '',
  'flutter_linkify': '',
  'flutter_slidable': '',
  'flutter_vector_icons': '',
  'flutter_webrtc': '',
  'loading_indicator': '',
  'scrollable_positioned_list': '',
  'url_launcher': '',
};
String get audioPlayersVersion => extendFullVersionMap['audioplayers']!;
String get flutterLinkifyVersion => extendFullVersionMap['flutter_linkify']!;
String get flutterSlidableVersion => extendFullVersionMap['flutter_slidable']!;
String get flutterVectorIconsVersion => extendFullVersionMap['flutter_vector_icons']!;
String get flutterWebrtcVersion => extendFullVersionMap['flutter_webrtc']!;
String get loadingIndicatorVersion => extendFullVersionMap['loading_indicator']!;
String get scrollablePositionedListVersion => extendFullVersionMap['scrollable_positioned_list']!;
String get urlLauncherVersion => extendFullVersionMap['url_launcher']!;
//全部平台扩展库---依赖库
final extendFullDepVersionMap = {
  'audioplayers_platform_interface': '',
  'linkify': '',
  'webrtc_interface': '',
};
String get audioplayersPlatformInterfaceVersion => extendFullDepVersionMap['audioplayers_platform_interface']!; //该库为audioplayers的依赖库，项目中并未直接导出
String get linkifyVersion => extendFullDepVersionMap['linkify']!; //该库为flutter_linkify的依赖库，项目中并未直接导出
String get webrtcInterfaceVersion => extendFullDepVersionMap['webrtc_interface']!; //该库为flutter_webrtc的依赖库，项目中并未直接导出
//部分平台扩展库
final extendPartVersionMap = {
  'permission_handler': '',
  'webview_flutter': '',
};
String get permissionHandlerVersion => extendPartVersionMap['permission_handler']!;
String get webviewFlutterVersion => extendPartVersionMap['webview_flutter']!;
//部分平台扩展库---依赖库
final extendPartDepVersionMap = {
  'permission_handler_platform_interface': '',
  'webview_flutter_platform_interface': '',
};
String get permissionHandlerPlatformInterfaceVersion => extendPartDepVersionMap['permission_handler_platform_interface']!; //该库为permission_handler的依赖库，项目中并未直接导出
String get webviewFlutterPlatformInterfaceVersion => extendPartDepVersionMap['webview_flutter_platform_interface']!; //该库为webview_flutter的依赖库，项目中并未直接导出
//平台接口依赖库
final platformVersionMap = {
  'plugin_platform_interface': '',
};
String get pluginPlatformInterfaceVersion => platformVersionMap['plugin_platform_interface']!; //私有依赖的平台接口，项目中并未直接引入

void main(List<String> arguments) {
  final libraryName = arguments.isEmpty ? 'zywidget' : arguments.first;
  initDependenciesVersion(); //初始化版本
  switch (libraryName) {
    case 'dart':
      generateLibraryForDart();
      break;
    case 'dartui':
      generateLibraryForDartUI();
      break;
    case 'flutter':
      generateLibraryForFlutter();
      break;
    case 'zyclient':
      generateLibraryForZyClient();
      break;
    case 'zywidget':
      generateLibraryForZyWidget();
      break;

    ///extend_full
    case 'audioplayers':
      generateLibraryForExtendFull$Audioplayers(libraryName);
      break;
    case 'flutter_linkify':
      generateLibraryForExtendFull$FlutterLinkify(libraryName);
      break;
    case 'flutter_slidable':
      generateLibraryForExtendFull$FlutterSlidable(libraryName);
      break;
    case 'flutter_vector_icons':
      generateLibraryForExtendFull$FlutterVectorIcons(libraryName);
      break;
    case 'flutter_webrtc':
      generateLibraryForExtendFull$FlutterWebrtc(libraryName);
      break;
    case 'loading_indicator':
      generateLibraryForExtendFull$LoadingIndicator(libraryName);
      break;
    case 'scrollable_positioned_list':
      generateLibraryForExtendFull$ScrollablePositionedList(libraryName);
      break;
    case 'url_launcher':
      generateLibraryForExtendFull$UrlLauncher(libraryName);
      break;
    case 'extend_full':
      generateLibraryForExtendFull$Audioplayers('audioplayers');
      generateLibraryForExtendFull$FlutterLinkify('flutter_linkify');
      generateLibraryForExtendFull$FlutterSlidable('flutter_slidable');
      generateLibraryForExtendFull$FlutterVectorIcons('flutter_vector_icons');
      generateLibraryForExtendFull$FlutterWebrtc('flutter_webrtc');
      generateLibraryForExtendFull$LoadingIndicator('loading_indicator');
      generateLibraryForExtendFull$ScrollablePositionedList('scrollable_positioned_list');
      generateLibraryForExtendFull$UrlLauncher('url_launcher');
      break;

    ///extend_part
    case 'permission_handler':
      generateLibraryForExtendPart$PermissionHandler(libraryName);
      break;
    case 'webview_flutter':
      generateLibraryForExtendPart$WebviewFlutter(libraryName);
      break;
    case 'extend_part':
      generateLibraryForExtendPart$PermissionHandler('permission_handler');
      generateLibraryForExtendPart$WebviewFlutter('webview_flutter');
      break;
    default:
      throw ('Unsupport libraryName $libraryName');
  }
  //文件中字符串搜索命令
  //grep -n "GameFactory" -r path
}

void initDependenciesVersion() {
  final logger = EasyLogger();
  final file = File('pubspec.lock');
  final pubspecLock = file.readAsStringSync().loadPubspecLockFromYaml();
  logger.logDebug(['Loaded pubspec.lock with', pubspecLock.packages.length, 'package dependencies.']);

  for (var item in pubspecLock.packages) {
    final packageName = item.package();
    final packageVersion = item.version();
    final nameVersion = '$packageName-$packageVersion';
    if (coreVersionMap.containsKey(packageName)) {
      coreVersionMap[packageName] = nameVersion;
    } else if (extendFullVersionMap.containsKey(packageName)) {
      extendFullVersionMap[packageName] = nameVersion;
    } else if (extendFullDepVersionMap.containsKey(packageName)) {
      extendFullDepVersionMap[packageName] = nameVersion;
    } else if (extendPartVersionMap.containsKey(packageName)) {
      extendPartVersionMap[packageName] = nameVersion;
    } else if (extendPartDepVersionMap.containsKey(packageName)) {
      extendPartDepVersionMap[packageName] = nameVersion;
    } else if (platformVersionMap.containsKey(packageName)) {
      platformVersionMap[packageName] = nameVersion;
    }
  }
  const encoder = JsonEncoder.withIndent('  ');
  logger.logInfo(['coreVersionMap =>', encoder.convert(coreVersionMap)]);
  logger.logInfo(['extendFullVersionMap =>', encoder.convert(extendFullVersionMap)]);
  logger.logInfo(['extendFullDepVersionMap =>', encoder.convert(extendFullDepVersionMap)]);
  logger.logInfo(['extendPartVersionMap =>', encoder.convert(extendPartVersionMap)]);
  logger.logInfo(['extendPartDepVersionMap =>', encoder.convert(extendPartDepVersionMap)]);
  logger.logInfo(['platformVersionMap =>', encoder.convert(platformVersionMap)]);
}

void generateLibraryForDart() {
  final coder = EasyCoder(
    config: EasyCoderConfig(
      logLevel: EasyLogLevel.debug,
      absFolder: '${Directory.current.path}/lib/src/bridge',
    ),
  );
  coder.generateVmLibraries(
    outputFile: 'dart_library',
    importList: [
      'dart:async',
      'dart:collection',
      'dart:convert',
      'dart:core',
      // 'dart:developer', //与math库的log冲突，生产环境也不需要
      'dart:math',
      'dart:typed_data',
      'dart:io',
      'dart:isolate',
    ],
    className: 'DartLibrary',
    classDesc: 'Dart核心库桥接类',
    libraryPaths: [
      '$flutterHome/bin/cache/dart-sdk/lib/async',
      '$flutterHome/bin/cache/dart-sdk/lib/collection',
      '$flutterHome/bin/cache/dart-sdk/lib/convert',
      '$flutterHome/bin/cache/dart-sdk/lib/core',
      // '$flutterHome/bin/cache/dart-sdk/lib/developer',//与math库的log冲突，生产环境也不需要
      '$flutterHome/bin/cache/dart-sdk/lib/math',
      '$flutterHome/bin/cache/dart-sdk/lib/typed_data',
      '$flutterHome/bin/cache/dart-sdk/lib/io',
      '$flutterHome/bin/cache/dart-sdk/lib/isolate',
    ],
    privatePaths: [
      '$flutterHome/bin/cache/dart-sdk/lib/_http',
      '$flutterHome/bin/cache/dart-sdk/lib/internal',
      '$machineHome/.pub-cache/hosted/pub.dev/$shelfEasyVersion/lib/src/vm/vm_base.dart', //添加字符串的翻译扩展
    ],
  );
  //统一打印生成过程中的错误信息
  coder.logVmLibrarydErrors();
}

void generateLibraryForDartUI() {
  final coder = EasyCoder(
    config: EasyCoderConfig(
      logLevel: EasyLogLevel.debug,
      absFolder: '${Directory.current.path}/lib/src/bridge',
    ),
  );
  coder.generateVmLibraries(
    outputFile: 'dartui_library',
    importList: [
      'dart:ui',
    ],
    className: 'DartUILibrary',
    classDesc: 'Dart的UI库桥接类，与Flutter库分开避免作用域冲突',
    libraryPaths: [
      '$flutterHome/bin/cache/pkg/sky_engine/lib/ui',
    ],
    privatePaths: [
      '$flutterHome/bin/cache/dart-sdk/lib',
      '$flutterHome/bin/cache/pkg/sky_engine/lib',
      '$flutterHome/packages/flutter/lib',
    ],
    excludePathClass: {
      '$flutterHome/bin/cache/pkg/sky_engine/lib/ui': [
        'Codec', //dart库已包含
        'Gradient', //fluter库已包含
        'Image', //fluter库已包含
        'decodeImageFromList', //fluter库已包含
        'StrutStyle', //fluter库已包含
        'TextStyle', //fluter库已包含
        'clampDouble', //fluter库已包含
      ],
    },
  );
  coder.logVmLibrarydErrors();
}

void generateLibraryForFlutter() {
  final coder = EasyCoder(
    config: EasyCoderConfig(
      logLevel: EasyLogLevel.debug,
      absFolder: '${Directory.current.path}/lib/src/bridge',
    ),
  );
  coder.generateVmLibraries(
    outputFile: 'flutter_library',
    importList: [
      'import \'dart:ui\' as ui show BoxWidthStyle, BoxHeightStyle;',
      // 'package:flutter/animation.dart', //重复的导入项
      'package:flutter/cupertino.dart',
      'package:flutter/foundation.dart',
      'package:flutter/gestures.dart',
      'package:flutter/material.dart',
      // 'package:flutter/painting.dart', //重复的导入项
      'package:flutter/physics.dart',
      'package:flutter/rendering.dart',
      'package:flutter/scheduler.dart',
      // 'package:flutter/semantics.dart', //重复的导入项
      'package:flutter/services.dart',
      // 'package:flutter/widgets.dart', //重复的导入项
      'package:flutter_localizations/flutter_localizations.dart',
    ],
    className: 'FlutterLibrary',
    classDesc: 'Flutter完整库桥接类',
    libraryPaths: [
      '$flutterHome/packages/flutter/lib/src/animation',
      '$flutterHome/packages/flutter/lib/src/cupertino',
      '$flutterHome/packages/flutter/lib/src/foundation',
      '$flutterHome/packages/flutter/lib/src/gestures',
      '$flutterHome/packages/flutter/lib/src/material',
      '$flutterHome/packages/flutter/lib/src/painting',
      '$flutterHome/packages/flutter/lib/src/physics',
      '$flutterHome/packages/flutter/lib/src/rendering',
      '$flutterHome/packages/flutter/lib/src/scheduler',
      '$flutterHome/packages/flutter/lib/src/semantics',
      '$flutterHome/packages/flutter/lib/src/services',
      '$flutterHome/packages/flutter/lib/src/widgets',
      '$flutterHome/packages/flutter_localizations/lib/src/cupertino_localizations.dart',
      '$flutterHome/packages/flutter_localizations/lib/src/material_localizations.dart',
      '$flutterHome/packages/flutter_localizations/lib/src/widgets_localizations.dart',
    ],
    privatePaths: [
      '$flutterHome/bin/cache/dart-sdk/lib',
      '$flutterHome/bin/cache/pkg/sky_engine/lib',
      '$flutterHome/packages/flutter/lib',
    ],
    excludePathClass: {
      '$flutterHome/packages/flutter/lib': [
        'performanceTimestamp', //flutter-3.13.x出现的找不到的顶级proxy
      ],
    },
  );
  coder.logVmLibrarydErrors();
}

void generateLibraryForZyClient() {
  final coder = EasyCoder(
    config: EasyCoderConfig(
      logLevel: EasyLogLevel.debug,
      absFolder: '${Directory.current.path}/lib/src/bridge',
    ),
  );

  coder.generateVmLibraries(
    outputFile: 'zyclient_library',
    importList: [
      'package:zycloud_client/zycloud_client.dart',
    ],
    className: 'ZyClientLibrary',
    classDesc: 'ZyCloud网络客户端库桥接类',
    libraryPaths: [
      '$machineHome/.pub-cache/hosted/pub.dev/$httpVersion/lib',
      '$machineHome/.pub-cache/hosted/pub.dev/$httpParserVersion/lib',
      '$machineHome/.pub-cache/hosted/pub.dev/$bsonVersion/lib',
      '$machineHome/.pub-cache/hosted/pub.dev/$shelfEasyVersion/lib',
      '$machineHome/.pub-cache/hosted/pub.dev/$zycloudClientVersion/lib/',
    ],
    privatePaths: [
      '$flutterHome/bin/cache/dart-sdk/lib',
      '$machineHome/.pub-cache/hosted/pub.dev/$httpVersion/lib',
      '$machineHome/.pub-cache/hosted/pub.dev/$httpParserVersion/lib',
      '$machineHome/.pub-cache/hosted/pub.dev/$bsonVersion/lib',
      '$machineHome/.pub-cache/hosted/pub.dev/$shelfEasyVersion/lib',
    ],
    //不需要的类型
    excludePathClass: {
      '$machineHome/.pub-cache/hosted/pub.dev/$zycloudClientVersion/lib': [
        'CmdClient',
        'MenuItem',
      ],
    },
    //要导出的类型，与zycloud_client.dart文件对应
    includePathClass: {
      '$machineHome/.pub-cache/hosted/pub.dev/$httpVersion/lib': [
        'Request',
        'Response',
      ],
      '$machineHome/.pub-cache/hosted/pub.dev/$httpParserVersion/lib': [
        'MediaType',
      ],
      '$machineHome/.pub-cache/hosted/pub.dev/$bsonVersion/lib': [
        'ObjectId',
      ],
      '$machineHome/.pub-cache/hosted/pub.dev/$shelfEasyVersion/lib': [
        'DbJsonWraper',
        'DbQueryField',
        'EasyClient',
        'EasyClientConfig',
        'EasyLogHandler',
        'EasyLogLevel',
        'EasyLogger',
        'EasyPacket',
        'EasySecurity',
      ],
    },
  );
  coder.logVmLibrarydErrors();
}

void generateLibraryForZyWidget() {
  final coder = EasyCoder(
    config: EasyCoderConfig(
      logLevel: EasyLogLevel.debug,
      absFolder: '${Directory.current.path}/lib/src/bridge',
    ),
  );
  coder.generateVmLibraries(
    outputFile: 'zywidget_library',
    importList: [
      'package:flutter/material.dart',
      //launch
      '../launch/zy_app.dart',
      '../launch/zy_draw.dart',
      '../launch/zy_page.dart',
      '../launch/zy_view.dart',
      '../launch/zy_watch.dart',
      '../launch/zy_window.dart',
      //widget
      '../widget/zy_avator.dart',
      '../widget/zy_badge.dart',
      '../widget/zy_border.dart',
      '../widget/zy_button.dart',
      '../widget/zy_dialog.dart',
      '../widget/zy_divider.dart',
      '../widget/zy_editor.dart',
      '../widget/zy_emojis.dart',
      '../widget/zy_flexbox.dart',
      '../widget/zy_freebox.dart',
      '../widget/zy_image.dart',
      '../widget/zy_letters.dart',
      '../widget/zy_listtile.dart',
      '../widget/zy_loading.dart',
      '../widget/zy_picture.dart',
      '../widget/zy_qrcode.dart',
      '../widget/zy_qrscan.dart',
      '../widget/zy_sheet.dart',
      '../widget/zy_stroke_text.dart',
      //device
      '../device/zy_device.dart',
      '../device/zy_service.dart',
      '../device/zy_storage.dart',
      //engine
      '../engine/zy_anchor.dart',
      '../engine/zy_merger.dart',
      '../engine/zy_model.dart',
      '../engine/zy_sound.dart',
      '../engine/zy_sprite_image.dart',
      '../engine/zy_sprite_label.dart',
      '../engine/zy_sprite_layer.dart',
      '../engine/zy_sprite_shape.dart',
      '../engine/zy_sprite_sheet.dart',
      '../engine/zy_sprite_state.dart',
      '../engine/zy_sprite_style.dart',
      '../engine/zy_sprite.dart',
      '../engine/zy_texture_widget.dart',
      '../engine/zy_texture.dart',
      '../engine/zy_world.dart',
    ],
    className: 'ZyWidgetLibrary',
    classDesc: 'ZyCloud小部件封装库桥接类',
    libraryPaths: [
      '${Directory.current.path}/lib/src/launch',
      '${Directory.current.path}/lib/src/widget',
      '${Directory.current.path}/lib/src/device',
      '${Directory.current.path}/lib/src/engine',
    ],
    privatePaths: [
      '$flutterHome/bin/cache/dart-sdk/lib',
      '$flutterHome/bin/cache/pkg/sky_engine/lib',
      '$flutterHome/packages/flutter/lib',
      '$machineHome/.pub-cache/hosted/pub.dev/$shelfEasyVersion/lib/src/db/db_base.dart',
      '$machineHome/.pub-cache/hosted/pub.dev/$shelfEasyVersion/lib/src/vm/vm_base.dart',
    ],
  );
  coder.logVmLibrarydErrors();
}

void generateLibraryForExtendFull$Audioplayers(String libraryName) {
  final coder = EasyCoder(
    config: EasyCoderConfig(
      logLevel: EasyLogLevel.debug,
      absFolder: '${Directory.current.path}/lib/src/bridge/extend_full',
    ),
  );
  coder.generateVmLibraries(
    outputFile: '${libraryName}_library',
    className: '${libraryName.toPascalCase}Library',
    classDesc: '$libraryName库桥接类',
    importList: [
      'package:audioplayers/audioplayers.dart',
      // 'package:audioplayers_platform_interface',//导出的类在audioplayers库中已包含无需再次导入
    ],
    libraryPaths: [
      '$machineHome/.pub-cache/hosted/pub.dev/$audioPlayersVersion/lib',
      '$machineHome/.pub-cache/hosted/pub.dev/$audioplayersPlatformInterfaceVersion/lib',
    ],
    privatePaths: [
      '$flutterHome/bin/cache/dart-sdk/lib',
      '$flutterHome/bin/cache/pkg/sky_engine/lib',
      '$flutterHome/packages/flutter/lib',
      '$machineHome/.pub-cache/hosted/pub.dev/$pluginPlatformInterfaceVersion/lib',
    ],
    //将IDE无法自动修复的类或代理统统去掉，这基本上是扩展库中未公开导出的类或全局属性
    excludePathClass: {
      '$machineHome/.pub-cache/hosted/pub.dev/$audioplayersPlatformInterfaceVersion/lib': [
        //找不到的class
        'AudioplayersPlatform',
        'AudioplayersPlatformInterface',
        'EventChannelAudioplayersPlatform',
        'EventChannelAudioplayersPlatformInterface',
        'EventChannelGlobalAudioplayersPlatform',
        'EventChannelGlobalAudioplayersPlatformInterface',
        'GlobalAudioplayersPlatform',
        'GlobalAudioplayersPlatformInterface',
        'MethodChannelAudioplayersPlatform',
        'MethodChannelAudioplayersPlatformInterface',
        'MethodChannelGlobalAudioplayersPlatform',
        'MethodChannelGlobalAudioplayersPlatformInterface',
      ],
    },
  );
  coder.logVmLibrarydErrors();
}

void generateLibraryForExtendFull$FlutterLinkify(String libraryName) {
  final coder = EasyCoder(
    config: EasyCoderConfig(
      logLevel: EasyLogLevel.debug,
      absFolder: '${Directory.current.path}/lib/src/bridge/extend_full',
    ),
  );
  coder.generateVmLibraries(
    outputFile: '${libraryName}_library',
    className: '${libraryName.toPascalCase}Library',
    classDesc: '$libraryName库桥接类',
    importList: [
      'package:flutter/gestures.dart',
      'package:flutter/material.dart',
      'package:flutter_linkify/flutter_linkify.dart',
      'package:linkify/linkify.dart',
    ],
    libraryPaths: [
      '$machineHome/.pub-cache/hosted/pub.dev/$flutterLinkifyVersion/lib',
      '$machineHome/.pub-cache/hosted/pub.dev/$linkifyVersion/lib',
    ],
    privatePaths: [
      '$flutterHome/bin/cache/dart-sdk/lib',
      '$flutterHome/bin/cache/pkg/sky_engine/lib',
      '$flutterHome/packages/flutter/lib',
    ],
  );
  coder.logVmLibrarydErrors();
}

void generateLibraryForExtendFull$FlutterSlidable(String libraryName) {
  final coder = EasyCoder(
    config: EasyCoderConfig(
      logLevel: EasyLogLevel.debug,
      absFolder: '${Directory.current.path}/lib/src/bridge/extend_full',
    ),
  );
  coder.generateVmLibraries(
    outputFile: '${libraryName}_library',
    className: '${libraryName.toPascalCase}Library',
    classDesc: '$libraryName库桥接类',
    importList: [
      'package:flutter/cupertino.dart',
      'package:flutter_slidable/flutter_slidable.dart',
    ],
    libraryPaths: [
      '$machineHome/.pub-cache/hosted/pub.dev/$flutterSlidableVersion/lib',
    ],
    privatePaths: [
      '$flutterHome/bin/cache/dart-sdk/lib',
      '$flutterHome/bin/cache/pkg/sky_engine/lib',
      '$flutterHome/packages/flutter/lib',
    ],
    ignoreIssuePaths: [
      '/flutter/lib/src/widgets/dismissible.dart', //属性 ConfirmDismissCallback 和 _kDismissThreshold 冲突
    ],
    excludePathClass: {
      '$machineHome/.pub-cache/hosted/pub.dev/$flutterSlidableVersion/lib': [
        //找不到的class
        'ActionPaneConfiguration',
        'ClosingGesture',
        'DismissGesture',
        'EndGesture',
        'FlexEntranceTransition',
        'FlexExitTransition',
        'GestureDirection',
        'OpeningGesture',
        'RatioConfigurator',
        'SlidableAutoCloseBarrierBehaviorListener',
        'SlidableAutoCloseBarrierInteractor',
        'SlidableAutoCloseBarrierNotification',
        'SlidableAutoCloseBarrierNotificationSender',
        'SlidableAutoCloseBehaviorInteractor',
        'SlidableAutoCloseBehaviorListener',
        'SlidableAutoCloseInteractor',
        'SlidableAutoCloseNotificationSender',
        'SlidableDismissal',
        'SlidableGestureDetector',
        'SlidableNotificationSender',
        'SlidableScrollingBehavior',
        'StillGesture',
      ],
    },
  );
  coder.logVmLibrarydErrors();
}

void generateLibraryForExtendFull$FlutterVectorIcons(String libraryName) {
  final coder = EasyCoder(
    config: EasyCoderConfig(
      logLevel: EasyLogLevel.debug,
      absFolder: '${Directory.current.path}/lib/src/bridge/extend_full',
    ),
  );
  coder.generateVmLibraries(
    outputFile: '${libraryName}_library',
    className: '${libraryName.toPascalCase}Library',
    classDesc: '$libraryName库桥接类',
    importList: [
      'package:flutter_vector_icons/flutter_vector_icons.dart',
    ],
    libraryPaths: [
      '$machineHome/.pub-cache/hosted/pub.dev/$flutterVectorIconsVersion/lib',
    ],
    privatePaths: [
      '$flutterHome/bin/cache/dart-sdk/lib',
    ],
  );
  coder.logVmLibrarydErrors();
}

void generateLibraryForExtendFull$FlutterWebrtc(String libraryName) {
  final coder = EasyCoder(
    config: EasyCoderConfig(
      logLevel: EasyLogLevel.debug,
      absFolder: '${Directory.current.path}/lib/src/bridge/extend_full',
    ),
  );
  coder.generateVmLibraries(
    outputFile: '${libraryName}_library',
    className: '${libraryName.toPascalCase}Library',
    classDesc: '$libraryName库桥接类',
    importList: [
      'package:flutter/material.dart',
      'import "package:flutter_webrtc/flutter_webrtc.dart" hide MediaDevices, MediaRecorder;', //hide的类在原生环境下实际上是继承自webrtc_interface的同名类，所以这里去掉无用的同名类
      'import "package:webrtc_interface/webrtc_interface.dart" show MediaDevices, MediaRecorder;', //其他的类在flutter_webrtc库中已包含无需再次导入
    ],
    libraryPaths: [
      '$machineHome/.pub-cache/hosted/pub.dev/$flutterWebrtcVersion/lib',
      '$machineHome/.pub-cache/hosted/pub.dev/$webrtcInterfaceVersion/lib',
    ],
    privatePaths: [
      '$flutterHome/bin/cache/dart-sdk/lib',
      '$flutterHome/bin/cache/pkg/sky_engine/lib',
      '$flutterHome/packages/flutter/lib',
      '$machineHome/.pub-cache/hosted/pub.dev/$pluginPlatformInterfaceVersion/lib',
    ],
    ignoreIssuePaths: [
      '$machineHome/.pub-cache/hosted/pub.dev/$flutterWebrtcVersion/lib/src/web', //忽略掉web平台的实现，否则会复制一些web平台的属性
    ],
    excludePathClass: {
      '$machineHome/.pub-cache/hosted/pub.dev/$flutterWebrtcVersion/lib': [
        //找不到的class
        'AppleAudioCategory',
        'AppleAudioCategoryOption',
        'AppleAudioConfiguration',
        'AppleAudioIOMode',
        'AppleAudioMode',
        'AppleNativeAudioManagement',
        'DesktopCapturerNative',
        'DesktopCapturerSourceNative',
        'FlutterWebRTCEventChannel',
        'FrameCryptorFactoryImpl',
        'FrameCryptorImpl',
        'KeyProviderImpl',
        'MediaDeviceNative',
        'MediaRecorderNative',
        'MediaStreamNative',
        'MediaStreamTrackNative',
        'NavigatorNative',
        'NativeAudioManagement',
        'RTCDataChannelNative',
        'RTCDTMFSenderNative',
        'RTCPeerConnectionNative',
        'RTCRtpReceiverNative',
        'RTCRtpSenderNative',
        'RTCRtpTransceiverInitNative',
        'RTCRtpTransceiverNative',
        'RTCTrackEventNative',
        //hide的类在原生环境下实际上是继承自webrtc_interface的同名类，所以这里去掉无用的同名类
        'MediaDevices', //对类的属性无任何影响，还是写上吧
        'MediaRecorder',
      ],
      '$machineHome/.pub-cache/hosted/pub.dev/$webrtcInterfaceVersion/lib': [
        // 'MediaDevices',
        // 'MediaRecorder',
        //与flutter库冲突
        'Navigator',
      ],
    },
  );
  coder.logVmLibrarydErrors();
}

void generateLibraryForExtendFull$LoadingIndicator(String libraryName) {
  final coder = EasyCoder(
    config: EasyCoderConfig(
      logLevel: EasyLogLevel.debug,
      absFolder: '${Directory.current.path}/lib/src/bridge/extend_full',
    ),
  );
  coder.generateVmLibraries(
    outputFile: '${libraryName}_library',
    className: '${libraryName.toPascalCase}Library',
    classDesc: '$libraryName库桥接类',
    importList: [
      'package:loading_indicator/loading_indicator.dart',
    ],
    libraryPaths: [
      '$machineHome/.pub-cache/hosted/pub.dev/$loadingIndicatorVersion/lib',
    ],
    privatePaths: [
      '$flutterHome/bin/cache/dart-sdk/lib',
      '$flutterHome/bin/cache/pkg/sky_engine/lib',
      '$flutterHome/packages/flutter/lib',
    ],
    includePathClass: {
      //导出类参考：https://pub.dev/documentation/loading_indicator/latest/loading_indicator/loading_indicator-library.html
      '$machineHome/.pub-cache/hosted/pub.dev/$loadingIndicatorVersion/lib': [
        'Indicator',
        'LoadingIndicator',
      ],
    },
  );
  coder.logVmLibrarydErrors();
}

void generateLibraryForExtendFull$ScrollablePositionedList(String libraryName) {
  final coder = EasyCoder(
    config: EasyCoderConfig(
      logLevel: EasyLogLevel.debug,
      absFolder: '${Directory.current.path}/lib/src/bridge/extend_full',
    ),
  );
  coder.generateVmLibraries(
    outputFile: '${libraryName}_library',
    className: '${libraryName.toPascalCase}Library',
    classDesc: '$libraryName库桥接类',
    importList: [
      'package:flutter/material.dart',
      'package:scrollable_positioned_list/scrollable_positioned_list.dart',
    ],
    libraryPaths: [
      '$machineHome/.pub-cache/hosted/pub.dev/$scrollablePositionedListVersion/lib',
    ],
    privatePaths: [
      '$flutterHome/bin/cache/dart-sdk/lib',
      '$flutterHome/bin/cache/pkg/sky_engine/lib',
      '$flutterHome/packages/flutter/lib',
    ],
    includePathClass: {
      //导出类参考：https://pub.dev/documentation/scrollable_positioned_list/latest/scrollable_positioned_list/scrollable_positioned_list-library.html
      '$machineHome/.pub-cache/hosted/pub.dev/$scrollablePositionedListVersion/lib': [
        'ItemPosition',
        'ItemPositionsListener',
        'ItemScrollController',
        'ScrollablePositionedList',
        'ScrollOffsetController',
        'ScrollOffsetListener',
      ],
    },
  );
  coder.logVmLibrarydErrors();
}

void generateLibraryForExtendFull$UrlLauncher(String libraryName) {
  final coder = EasyCoder(
    config: EasyCoderConfig(
      logLevel: EasyLogLevel.debug,
      absFolder: '${Directory.current.path}/lib/src/bridge/extend_full',
    ),
  );
  coder.generateVmLibraries(
    outputFile: '${libraryName}_library',
    className: '${libraryName.toPascalCase}Library',
    classDesc: '$libraryName库桥接类',
    importList: [
      'package:url_launcher/url_launcher.dart',
      'package:url_launcher/url_launcher_string.dart', //url_launcher的另外一个导出文件
    ],
    libraryPaths: [
      '$machineHome/.pub-cache/hosted/pub.dev/$urlLauncherVersion/lib',
    ],
    privatePaths: [
      '$flutterHome/bin/cache/dart-sdk/lib',
      '$flutterHome/bin/cache/pkg/sky_engine/lib',
      '$flutterHome/packages/flutter/lib',
    ],
    excludePathClass: {
      '$machineHome/.pub-cache/hosted/pub.dev/$urlLauncherVersion/lib': [
        //找不到的class
        'DefaultLinkDelegate',
        'Link',
        //找不到的proxy
        'convertConfiguration',
        'convertLaunchMode',
        'pushRouteToFrameworkFunction',
      ],
    },
  );
  coder.logVmLibrarydErrors();
}

void generateLibraryForExtendPart$PermissionHandler(String libraryName) {
  final coder = EasyCoder(
    config: EasyCoderConfig(
      logLevel: EasyLogLevel.debug,
      absFolder: '${Directory.current.path}/lib/src/bridge/extend_part',
    ),
  );
  coder.generateVmLibraries(
    outputFile: '${libraryName}_library',
    className: '${libraryName.toPascalCase}Library',
    classDesc: '$libraryName库桥接类',
    importList: [
      'package:permission_handler/permission_handler.dart',
      'package:permission_handler_platform_interface/permission_handler_platform_interface.dart',
    ],
    libraryPaths: [
      '$machineHome/.pub-cache/hosted/pub.dev/$permissionHandlerVersion/lib',
      '$machineHome/.pub-cache/hosted/pub.dev/$permissionHandlerPlatformInterfaceVersion/lib',
    ],
    privatePaths: [
      '$flutterHome/bin/cache/dart-sdk/lib',
      '$flutterHome/bin/cache/pkg/sky_engine/lib',
      '$flutterHome/packages/flutter/lib',
      '$machineHome/.pub-cache/hosted/pub.dev/$pluginPlatformInterfaceVersion/lib',
    ],
    excludePathClass: {
      '$machineHome/.pub-cache/hosted/pub.dev/$permissionHandlerPlatformInterfaceVersion/lib': [
        //找不到的class
        'MethodChannelPermissionHandler',
        //找不到的proxy
        'decodePermissionRequestResult',
        'decodePermissionStatus',
        'decodeServiceStatus',
        'encodePermissions',
      ],
    },
  );
  coder.logVmLibrarydErrors();
}

void generateLibraryForExtendPart$WebviewFlutter(String libraryName) {
  final coder = EasyCoder(
    config: EasyCoderConfig(
      logLevel: EasyLogLevel.debug,
      absFolder: '${Directory.current.path}/lib/src/bridge/extend_part',
    ),
  );
  coder.generateVmLibraries(
    outputFile: '${libraryName}_library',
    className: '${libraryName.toPascalCase}Library',
    classDesc: '$libraryName库桥接类',
    importList: [
      'package:webview_flutter/webview_flutter.dart',
      'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart',
    ],
    libraryPaths: [
      '$machineHome/.pub-cache/hosted/pub.dev/$webviewFlutterVersion/lib',
      '$machineHome/.pub-cache/hosted/pub.dev/$webviewFlutterPlatformInterfaceVersion/lib',
    ],
    privatePaths: [
      '$flutterHome/bin/cache/dart-sdk/lib',
      '$flutterHome/bin/cache/pkg/sky_engine/lib',
      '$flutterHome/packages/flutter/lib',
      '$machineHome/.pub-cache/hosted/pub.dev/$pluginPlatformInterfaceVersion/lib',
    ],
    ignoreIssuePaths: [
      '$machineHome/.pub-cache/hosted/pub.dev/$webviewFlutterVersion/lib/src/legacy', //忽略掉废弃的文件夹
      '$machineHome/.pub-cache/hosted/pub.dev/$webviewFlutterPlatformInterfaceVersion/lib/src/legacy', //忽略掉废弃的文件夹
    ],
  );
  coder.logVmLibrarydErrors();
}

extension on String {
  String get toPascalCase {
    final arr = split('_');
    return arr.map((e) => e.isEmpty ? e : '${e[0].toUpperCase()}${e.substring(1)}').join('');
  }
}
