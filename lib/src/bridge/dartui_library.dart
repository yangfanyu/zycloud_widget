// ignore_for_file: avoid_function_literals_in_foreach_calls
// ignore_for_file: deprecated_member_use
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: unnecessary_constructor_name

import 'package:shelf_easy/shelf_easy.dart';
import 'dart:ui';

///
///Dart的UI库桥接类，与Flutter库分开避免作用域冲突
///
class DartUILibrary {
  ///class AccessibilityFeatures
  static final classAccessibilityFeatures = VmClass<AccessibilityFeatures>(
    identifier: 'AccessibilityFeatures',
    superclassNames: ['Object'],
    externalProxyMap: {
      'accessibleNavigation': VmProxy(identifier: 'accessibleNavigation', externalInstancePropertyReader: (AccessibilityFeatures instance) => instance.accessibleNavigation),
      'boldText': VmProxy(identifier: 'boldText', externalInstancePropertyReader: (AccessibilityFeatures instance) => instance.boldText),
      'disableAnimations': VmProxy(identifier: 'disableAnimations', externalInstancePropertyReader: (AccessibilityFeatures instance) => instance.disableAnimations),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AccessibilityFeatures instance) => instance.hashCode),
      'highContrast': VmProxy(identifier: 'highContrast', externalInstancePropertyReader: (AccessibilityFeatures instance) => instance.highContrast),
      'invertColors': VmProxy(identifier: 'invertColors', externalInstancePropertyReader: (AccessibilityFeatures instance) => instance.invertColors),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AccessibilityFeatures instance) => instance.noSuchMethod),
      'onOffSwitchLabels': VmProxy(identifier: 'onOffSwitchLabels', externalInstancePropertyReader: (AccessibilityFeatures instance) => instance.onOffSwitchLabels),
      'reduceMotion': VmProxy(identifier: 'reduceMotion', externalInstancePropertyReader: (AccessibilityFeatures instance) => instance.reduceMotion),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AccessibilityFeatures instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AccessibilityFeatures instance) => instance.toString),
    },
  );

  ///class AppExitResponse
  static final classAppExitResponse = VmClass<AppExitResponse>(
    identifier: 'AppExitResponse',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'cancel': VmProxy(identifier: 'cancel', externalStaticPropertyReader: () => AppExitResponse.cancel),
      'exit': VmProxy(identifier: 'exit', externalStaticPropertyReader: () => AppExitResponse.exit),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AppExitResponse instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (AppExitResponse instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (AppExitResponse instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AppExitResponse instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AppExitResponse instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AppExitResponse instance) => instance.toString),
    },
  );

  ///class AppExitType
  static final classAppExitType = VmClass<AppExitType>(
    identifier: 'AppExitType',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'cancelable': VmProxy(identifier: 'cancelable', externalStaticPropertyReader: () => AppExitType.cancelable),
      'required': VmProxy(identifier: 'required', externalStaticPropertyReader: () => AppExitType.required),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AppExitType instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (AppExitType instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (AppExitType instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AppExitType instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AppExitType instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AppExitType instance) => instance.toString),
    },
  );

  ///class AppLifecycleState
  static final classAppLifecycleState = VmClass<AppLifecycleState>(
    identifier: 'AppLifecycleState',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'detached': VmProxy(identifier: 'detached', externalStaticPropertyReader: () => AppLifecycleState.detached),
      'hidden': VmProxy(identifier: 'hidden', externalStaticPropertyReader: () => AppLifecycleState.hidden),
      'inactive': VmProxy(identifier: 'inactive', externalStaticPropertyReader: () => AppLifecycleState.inactive),
      'paused': VmProxy(identifier: 'paused', externalStaticPropertyReader: () => AppLifecycleState.paused),
      'resumed': VmProxy(identifier: 'resumed', externalStaticPropertyReader: () => AppLifecycleState.resumed),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AppLifecycleState instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (AppLifecycleState instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (AppLifecycleState instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AppLifecycleState instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AppLifecycleState instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AppLifecycleState instance) => instance.toString),
    },
  );

  ///class BackdropFilterEngineLayer
  static final classBackdropFilterEngineLayer = VmClass<BackdropFilterEngineLayer>(
    identifier: 'BackdropFilterEngineLayer',
    superclassNames: ['Object', 'EngineLayer', '_EngineLayerWrapper'],
    externalProxyMap: {
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (BackdropFilterEngineLayer instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (BackdropFilterEngineLayer instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (BackdropFilterEngineLayer instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (BackdropFilterEngineLayer instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (BackdropFilterEngineLayer instance) => instance.toString),
    },
  );

  ///class BlendMode
  static final classBlendMode = VmClass<BlendMode>(
    identifier: 'BlendMode',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'clear': VmProxy(identifier: 'clear', externalStaticPropertyReader: () => BlendMode.clear),
      'color': VmProxy(identifier: 'color', externalStaticPropertyReader: () => BlendMode.color),
      'colorBurn': VmProxy(identifier: 'colorBurn', externalStaticPropertyReader: () => BlendMode.colorBurn),
      'colorDodge': VmProxy(identifier: 'colorDodge', externalStaticPropertyReader: () => BlendMode.colorDodge),
      'darken': VmProxy(identifier: 'darken', externalStaticPropertyReader: () => BlendMode.darken),
      'difference': VmProxy(identifier: 'difference', externalStaticPropertyReader: () => BlendMode.difference),
      'dst': VmProxy(identifier: 'dst', externalStaticPropertyReader: () => BlendMode.dst),
      'dstATop': VmProxy(identifier: 'dstATop', externalStaticPropertyReader: () => BlendMode.dstATop),
      'dstIn': VmProxy(identifier: 'dstIn', externalStaticPropertyReader: () => BlendMode.dstIn),
      'dstOut': VmProxy(identifier: 'dstOut', externalStaticPropertyReader: () => BlendMode.dstOut),
      'dstOver': VmProxy(identifier: 'dstOver', externalStaticPropertyReader: () => BlendMode.dstOver),
      'exclusion': VmProxy(identifier: 'exclusion', externalStaticPropertyReader: () => BlendMode.exclusion),
      'hardLight': VmProxy(identifier: 'hardLight', externalStaticPropertyReader: () => BlendMode.hardLight),
      'hue': VmProxy(identifier: 'hue', externalStaticPropertyReader: () => BlendMode.hue),
      'lighten': VmProxy(identifier: 'lighten', externalStaticPropertyReader: () => BlendMode.lighten),
      'luminosity': VmProxy(identifier: 'luminosity', externalStaticPropertyReader: () => BlendMode.luminosity),
      'modulate': VmProxy(identifier: 'modulate', externalStaticPropertyReader: () => BlendMode.modulate),
      'multiply': VmProxy(identifier: 'multiply', externalStaticPropertyReader: () => BlendMode.multiply),
      'overlay': VmProxy(identifier: 'overlay', externalStaticPropertyReader: () => BlendMode.overlay),
      'plus': VmProxy(identifier: 'plus', externalStaticPropertyReader: () => BlendMode.plus),
      'saturation': VmProxy(identifier: 'saturation', externalStaticPropertyReader: () => BlendMode.saturation),
      'screen': VmProxy(identifier: 'screen', externalStaticPropertyReader: () => BlendMode.screen),
      'softLight': VmProxy(identifier: 'softLight', externalStaticPropertyReader: () => BlendMode.softLight),
      'src': VmProxy(identifier: 'src', externalStaticPropertyReader: () => BlendMode.src),
      'srcATop': VmProxy(identifier: 'srcATop', externalStaticPropertyReader: () => BlendMode.srcATop),
      'srcIn': VmProxy(identifier: 'srcIn', externalStaticPropertyReader: () => BlendMode.srcIn),
      'srcOut': VmProxy(identifier: 'srcOut', externalStaticPropertyReader: () => BlendMode.srcOut),
      'srcOver': VmProxy(identifier: 'srcOver', externalStaticPropertyReader: () => BlendMode.srcOver),
      'xor': VmProxy(identifier: 'xor', externalStaticPropertyReader: () => BlendMode.xor),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (BlendMode instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (BlendMode instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (BlendMode instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (BlendMode instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (BlendMode instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (BlendMode instance) => instance.toString),
    },
  );

  ///class BlurStyle
  static final classBlurStyle = VmClass<BlurStyle>(
    identifier: 'BlurStyle',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'inner': VmProxy(identifier: 'inner', externalStaticPropertyReader: () => BlurStyle.inner),
      'normal': VmProxy(identifier: 'normal', externalStaticPropertyReader: () => BlurStyle.normal),
      'outer': VmProxy(identifier: 'outer', externalStaticPropertyReader: () => BlurStyle.outer),
      'solid': VmProxy(identifier: 'solid', externalStaticPropertyReader: () => BlurStyle.solid),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (BlurStyle instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (BlurStyle instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (BlurStyle instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (BlurStyle instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (BlurStyle instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (BlurStyle instance) => instance.toString),
    },
  );

  ///class BoxHeightStyle
  static final classBoxHeightStyle = VmClass<BoxHeightStyle>(
    identifier: 'BoxHeightStyle',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'includeLineSpacingBottom': VmProxy(identifier: 'includeLineSpacingBottom', externalStaticPropertyReader: () => BoxHeightStyle.includeLineSpacingBottom),
      'includeLineSpacingMiddle': VmProxy(identifier: 'includeLineSpacingMiddle', externalStaticPropertyReader: () => BoxHeightStyle.includeLineSpacingMiddle),
      'includeLineSpacingTop': VmProxy(identifier: 'includeLineSpacingTop', externalStaticPropertyReader: () => BoxHeightStyle.includeLineSpacingTop),
      'max': VmProxy(identifier: 'max', externalStaticPropertyReader: () => BoxHeightStyle.max),
      'strut': VmProxy(identifier: 'strut', externalStaticPropertyReader: () => BoxHeightStyle.strut),
      'tight': VmProxy(identifier: 'tight', externalStaticPropertyReader: () => BoxHeightStyle.tight),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (BoxHeightStyle instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (BoxHeightStyle instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (BoxHeightStyle instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (BoxHeightStyle instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (BoxHeightStyle instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (BoxHeightStyle instance) => instance.toString),
    },
  );

  ///class BoxWidthStyle
  static final classBoxWidthStyle = VmClass<BoxWidthStyle>(
    identifier: 'BoxWidthStyle',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'max': VmProxy(identifier: 'max', externalStaticPropertyReader: () => BoxWidthStyle.max),
      'tight': VmProxy(identifier: 'tight', externalStaticPropertyReader: () => BoxWidthStyle.tight),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (BoxWidthStyle instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (BoxWidthStyle instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (BoxWidthStyle instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (BoxWidthStyle instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (BoxWidthStyle instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (BoxWidthStyle instance) => instance.toString),
    },
  );

  ///class Brightness
  static final classBrightness = VmClass<Brightness>(
    identifier: 'Brightness',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'dark': VmProxy(identifier: 'dark', externalStaticPropertyReader: () => Brightness.dark),
      'light': VmProxy(identifier: 'light', externalStaticPropertyReader: () => Brightness.light),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Brightness instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (Brightness instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (Brightness instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Brightness instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Brightness instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Brightness instance) => instance.toString),
    },
  );

  ///class CallbackHandle
  static final classCallbackHandle = VmClass<CallbackHandle>(
    identifier: 'CallbackHandle',
    superclassNames: ['Object'],
    externalProxyMap: {
      'fromRawHandle': VmProxy(identifier: 'fromRawHandle', externalStaticPropertyReader: () => CallbackHandle.fromRawHandle),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (CallbackHandle instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (CallbackHandle instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (CallbackHandle instance) => instance.runtimeType),
      'toRawHandle': VmProxy(identifier: 'toRawHandle', externalInstancePropertyReader: (CallbackHandle instance) => instance.toRawHandle),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (CallbackHandle instance) => instance.toString),
    },
  );

  ///class Canvas
  static final classCanvas = VmClass<Canvas>(
    identifier: 'Canvas',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => Canvas.new),
      'clipPath': VmProxy(identifier: 'clipPath', externalInstancePropertyReader: (Canvas instance) => instance.clipPath),
      'clipRect': VmProxy(identifier: 'clipRect', externalInstancePropertyReader: (Canvas instance) => instance.clipRect),
      'clipRRect': VmProxy(identifier: 'clipRRect', externalInstancePropertyReader: (Canvas instance) => instance.clipRRect),
      'drawArc': VmProxy(identifier: 'drawArc', externalInstancePropertyReader: (Canvas instance) => instance.drawArc),
      'drawAtlas': VmProxy(identifier: 'drawAtlas', externalInstancePropertyReader: (Canvas instance) => instance.drawAtlas),
      'drawCircle': VmProxy(identifier: 'drawCircle', externalInstancePropertyReader: (Canvas instance) => instance.drawCircle),
      'drawColor': VmProxy(identifier: 'drawColor', externalInstancePropertyReader: (Canvas instance) => instance.drawColor),
      'drawDRRect': VmProxy(identifier: 'drawDRRect', externalInstancePropertyReader: (Canvas instance) => instance.drawDRRect),
      'drawImage': VmProxy(identifier: 'drawImage', externalInstancePropertyReader: (Canvas instance) => instance.drawImage),
      'drawImageNine': VmProxy(identifier: 'drawImageNine', externalInstancePropertyReader: (Canvas instance) => instance.drawImageNine),
      'drawImageRect': VmProxy(identifier: 'drawImageRect', externalInstancePropertyReader: (Canvas instance) => instance.drawImageRect),
      'drawLine': VmProxy(identifier: 'drawLine', externalInstancePropertyReader: (Canvas instance) => instance.drawLine),
      'drawOval': VmProxy(identifier: 'drawOval', externalInstancePropertyReader: (Canvas instance) => instance.drawOval),
      'drawPaint': VmProxy(identifier: 'drawPaint', externalInstancePropertyReader: (Canvas instance) => instance.drawPaint),
      'drawParagraph': VmProxy(identifier: 'drawParagraph', externalInstancePropertyReader: (Canvas instance) => instance.drawParagraph),
      'drawPath': VmProxy(identifier: 'drawPath', externalInstancePropertyReader: (Canvas instance) => instance.drawPath),
      'drawPicture': VmProxy(identifier: 'drawPicture', externalInstancePropertyReader: (Canvas instance) => instance.drawPicture),
      'drawPoints': VmProxy(identifier: 'drawPoints', externalInstancePropertyReader: (Canvas instance) => instance.drawPoints),
      'drawRawAtlas': VmProxy(identifier: 'drawRawAtlas', externalInstancePropertyReader: (Canvas instance) => instance.drawRawAtlas),
      'drawRawPoints': VmProxy(identifier: 'drawRawPoints', externalInstancePropertyReader: (Canvas instance) => instance.drawRawPoints),
      'drawRect': VmProxy(identifier: 'drawRect', externalInstancePropertyReader: (Canvas instance) => instance.drawRect),
      'drawRRect': VmProxy(identifier: 'drawRRect', externalInstancePropertyReader: (Canvas instance) => instance.drawRRect),
      'drawShadow': VmProxy(identifier: 'drawShadow', externalInstancePropertyReader: (Canvas instance) => instance.drawShadow),
      'drawVertices': VmProxy(identifier: 'drawVertices', externalInstancePropertyReader: (Canvas instance) => instance.drawVertices),
      'getDestinationClipBounds': VmProxy(identifier: 'getDestinationClipBounds', externalInstancePropertyReader: (Canvas instance) => instance.getDestinationClipBounds),
      'getLocalClipBounds': VmProxy(identifier: 'getLocalClipBounds', externalInstancePropertyReader: (Canvas instance) => instance.getLocalClipBounds),
      'getSaveCount': VmProxy(identifier: 'getSaveCount', externalInstancePropertyReader: (Canvas instance) => instance.getSaveCount),
      'getTransform': VmProxy(identifier: 'getTransform', externalInstancePropertyReader: (Canvas instance) => instance.getTransform),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Canvas instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Canvas instance) => instance.noSuchMethod),
      'restore': VmProxy(identifier: 'restore', externalInstancePropertyReader: (Canvas instance) => instance.restore),
      'restoreToCount': VmProxy(identifier: 'restoreToCount', externalInstancePropertyReader: (Canvas instance) => instance.restoreToCount),
      'rotate': VmProxy(identifier: 'rotate', externalInstancePropertyReader: (Canvas instance) => instance.rotate),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Canvas instance) => instance.runtimeType),
      'save': VmProxy(identifier: 'save', externalInstancePropertyReader: (Canvas instance) => instance.save),
      'saveLayer': VmProxy(identifier: 'saveLayer', externalInstancePropertyReader: (Canvas instance) => instance.saveLayer),
      'scale': VmProxy(identifier: 'scale', externalInstancePropertyReader: (Canvas instance) => instance.scale),
      'skew': VmProxy(identifier: 'skew', externalInstancePropertyReader: (Canvas instance) => instance.skew),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Canvas instance) => instance.toString),
      'transform': VmProxy(identifier: 'transform', externalInstancePropertyReader: (Canvas instance) => instance.transform),
      'translate': VmProxy(identifier: 'translate', externalInstancePropertyReader: (Canvas instance) => instance.translate),
    },
  );

  ///class ChannelBuffers
  static final classChannelBuffers = VmClass<ChannelBuffers>(
    identifier: 'ChannelBuffers',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => ChannelBuffers.new),
      'kControlChannelName': VmProxy(identifier: 'kControlChannelName', externalStaticPropertyReader: () => ChannelBuffers.kControlChannelName),
      'kDefaultBufferSize': VmProxy(identifier: 'kDefaultBufferSize', externalStaticPropertyReader: () => ChannelBuffers.kDefaultBufferSize),
      'allowOverflow': VmProxy(identifier: 'allowOverflow', externalInstancePropertyReader: (ChannelBuffers instance) => instance.allowOverflow),
      'clearListener': VmProxy(identifier: 'clearListener', externalInstancePropertyReader: (ChannelBuffers instance) => instance.clearListener),
      'drain': VmProxy(identifier: 'drain', externalInstancePropertyReader: (ChannelBuffers instance) => instance.drain, externalInstanceFunctionCaller: (ChannelBuffers instance, a0, a1) => instance.drain(a0, (b0, b1) => a1(b0, b1))),
      'handleMessage': VmProxy(identifier: 'handleMessage', externalInstancePropertyReader: (ChannelBuffers instance) => instance.handleMessage),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ChannelBuffers instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ChannelBuffers instance) => instance.noSuchMethod),
      'push': VmProxy(identifier: 'push', externalInstancePropertyReader: (ChannelBuffers instance) => instance.push, externalInstanceFunctionCaller: (ChannelBuffers instance, a0, a1, a2) => instance.push(a0, a1, (b0) => a2(b0))),
      'resize': VmProxy(identifier: 'resize', externalInstancePropertyReader: (ChannelBuffers instance) => instance.resize),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ChannelBuffers instance) => instance.runtimeType),
      'setListener': VmProxy(identifier: 'setListener', externalInstancePropertyReader: (ChannelBuffers instance) => instance.setListener, externalInstanceFunctionCaller: (ChannelBuffers instance, a0, a1) => instance.setListener(a0, (b0, b1) => a1(b0, b1))),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ChannelBuffers instance) => instance.toString),
    },
  );

  ///class Clip
  static final classClip = VmClass<Clip>(
    identifier: 'Clip',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'antiAlias': VmProxy(identifier: 'antiAlias', externalStaticPropertyReader: () => Clip.antiAlias),
      'antiAliasWithSaveLayer': VmProxy(identifier: 'antiAliasWithSaveLayer', externalStaticPropertyReader: () => Clip.antiAliasWithSaveLayer),
      'hardEdge': VmProxy(identifier: 'hardEdge', externalStaticPropertyReader: () => Clip.hardEdge),
      'none': VmProxy(identifier: 'none', externalStaticPropertyReader: () => Clip.none),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Clip instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (Clip instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (Clip instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Clip instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Clip instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Clip instance) => instance.toString),
    },
  );

  ///class ClipOp
  static final classClipOp = VmClass<ClipOp>(
    identifier: 'ClipOp',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'difference': VmProxy(identifier: 'difference', externalStaticPropertyReader: () => ClipOp.difference),
      'intersect': VmProxy(identifier: 'intersect', externalStaticPropertyReader: () => ClipOp.intersect),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ClipOp instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (ClipOp instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (ClipOp instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ClipOp instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ClipOp instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ClipOp instance) => instance.toString),
    },
  );

  ///class ClipPathEngineLayer
  static final classClipPathEngineLayer = VmClass<ClipPathEngineLayer>(
    identifier: 'ClipPathEngineLayer',
    superclassNames: ['Object', 'EngineLayer', '_EngineLayerWrapper'],
    externalProxyMap: {
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (ClipPathEngineLayer instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ClipPathEngineLayer instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ClipPathEngineLayer instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ClipPathEngineLayer instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ClipPathEngineLayer instance) => instance.toString),
    },
  );

  ///class ClipRectEngineLayer
  static final classClipRectEngineLayer = VmClass<ClipRectEngineLayer>(
    identifier: 'ClipRectEngineLayer',
    superclassNames: ['Object', 'EngineLayer', '_EngineLayerWrapper'],
    externalProxyMap: {
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (ClipRectEngineLayer instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ClipRectEngineLayer instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ClipRectEngineLayer instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ClipRectEngineLayer instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ClipRectEngineLayer instance) => instance.toString),
    },
  );

  ///class ClipRRectEngineLayer
  static final classClipRRectEngineLayer = VmClass<ClipRRectEngineLayer>(
    identifier: 'ClipRRectEngineLayer',
    superclassNames: ['Object', 'EngineLayer', '_EngineLayerWrapper'],
    externalProxyMap: {
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (ClipRRectEngineLayer instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ClipRRectEngineLayer instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ClipRRectEngineLayer instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ClipRRectEngineLayer instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ClipRRectEngineLayer instance) => instance.toString),
    },
  );

  ///class Color
  static final classColor = VmClass<Color>(
    identifier: 'Color',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => Color.new),
      'fromARGB': VmProxy(identifier: 'fromARGB', externalStaticPropertyReader: () => Color.fromARGB),
      'fromRGBO': VmProxy(identifier: 'fromRGBO', externalStaticPropertyReader: () => Color.fromRGBO),
      'alphaBlend': VmProxy(identifier: 'alphaBlend', externalStaticPropertyReader: () => Color.alphaBlend),
      'getAlphaFromOpacity': VmProxy(identifier: 'getAlphaFromOpacity', externalStaticPropertyReader: () => Color.getAlphaFromOpacity),
      'lerp': VmProxy(identifier: 'lerp', externalStaticPropertyReader: () => Color.lerp),
      'alpha': VmProxy(identifier: 'alpha', externalInstancePropertyReader: (Color instance) => instance.alpha),
      'blue': VmProxy(identifier: 'blue', externalInstancePropertyReader: (Color instance) => instance.blue),
      'computeLuminance': VmProxy(identifier: 'computeLuminance', externalInstancePropertyReader: (Color instance) => instance.computeLuminance),
      'green': VmProxy(identifier: 'green', externalInstancePropertyReader: (Color instance) => instance.green),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Color instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Color instance) => instance.noSuchMethod),
      'opacity': VmProxy(identifier: 'opacity', externalInstancePropertyReader: (Color instance) => instance.opacity),
      'red': VmProxy(identifier: 'red', externalInstancePropertyReader: (Color instance) => instance.red),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Color instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Color instance) => instance.toString),
      'value': VmProxy(identifier: 'value', externalInstancePropertyReader: (Color instance) => instance.value),
      'withAlpha': VmProxy(identifier: 'withAlpha', externalInstancePropertyReader: (Color instance) => instance.withAlpha),
      'withBlue': VmProxy(identifier: 'withBlue', externalInstancePropertyReader: (Color instance) => instance.withBlue),
      'withGreen': VmProxy(identifier: 'withGreen', externalInstancePropertyReader: (Color instance) => instance.withGreen),
      'withOpacity': VmProxy(identifier: 'withOpacity', externalInstancePropertyReader: (Color instance) => instance.withOpacity),
      'withRed': VmProxy(identifier: 'withRed', externalInstancePropertyReader: (Color instance) => instance.withRed),
    },
  );

  ///class ColorFilter
  static final classColorFilter = VmClass<ColorFilter>(
    identifier: 'ColorFilter',
    superclassNames: ['Object', 'ImageFilter'],
    externalProxyMap: {
      'linearToSrgbGamma': VmProxy(identifier: 'linearToSrgbGamma', externalStaticPropertyReader: () => ColorFilter.linearToSrgbGamma),
      'matrix': VmProxy(identifier: 'matrix', externalStaticPropertyReader: () => ColorFilter.matrix),
      'mode': VmProxy(identifier: 'mode', externalStaticPropertyReader: () => ColorFilter.mode),
      'srgbToLinearGamma': VmProxy(identifier: 'srgbToLinearGamma', externalStaticPropertyReader: () => ColorFilter.srgbToLinearGamma),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ColorFilter instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ColorFilter instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ColorFilter instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ColorFilter instance) => instance.toString),
    },
  );

  ///class ColorFilterEngineLayer
  static final classColorFilterEngineLayer = VmClass<ColorFilterEngineLayer>(
    identifier: 'ColorFilterEngineLayer',
    superclassNames: ['Object', 'EngineLayer', '_EngineLayerWrapper'],
    externalProxyMap: {
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (ColorFilterEngineLayer instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ColorFilterEngineLayer instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ColorFilterEngineLayer instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ColorFilterEngineLayer instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ColorFilterEngineLayer instance) => instance.toString),
    },
  );

  ///class ColorSpace
  static final classColorSpace = VmClass<ColorSpace>(
    identifier: 'ColorSpace',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'extendedSRGB': VmProxy(identifier: 'extendedSRGB', externalStaticPropertyReader: () => ColorSpace.extendedSRGB),
      'sRGB': VmProxy(identifier: 'sRGB', externalStaticPropertyReader: () => ColorSpace.sRGB),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ColorSpace instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (ColorSpace instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (ColorSpace instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ColorSpace instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ColorSpace instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ColorSpace instance) => instance.toString),
    },
  );

  ///class DartPerformanceMode
  static final classDartPerformanceMode = VmClass<DartPerformanceMode>(
    identifier: 'DartPerformanceMode',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'balanced': VmProxy(identifier: 'balanced', externalStaticPropertyReader: () => DartPerformanceMode.balanced),
      'latency': VmProxy(identifier: 'latency', externalStaticPropertyReader: () => DartPerformanceMode.latency),
      'memory': VmProxy(identifier: 'memory', externalStaticPropertyReader: () => DartPerformanceMode.memory),
      'throughput': VmProxy(identifier: 'throughput', externalStaticPropertyReader: () => DartPerformanceMode.throughput),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (DartPerformanceMode instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (DartPerformanceMode instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (DartPerformanceMode instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (DartPerformanceMode instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (DartPerformanceMode instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (DartPerformanceMode instance) => instance.toString),
    },
  );

  ///class DartPluginRegistrant
  static final classDartPluginRegistrant = VmClass<DartPluginRegistrant>(
    identifier: 'DartPluginRegistrant',
    superclassNames: ['Object'],
    externalProxyMap: {
      'ensureInitialized': VmProxy(identifier: 'ensureInitialized', externalStaticPropertyReader: () => DartPluginRegistrant.ensureInitialized),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (DartPluginRegistrant instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (DartPluginRegistrant instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (DartPluginRegistrant instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (DartPluginRegistrant instance) => instance.toString),
    },
  );

  ///class Display
  static final classDisplay = VmClass<Display>(
    identifier: 'Display',
    superclassNames: ['Object'],
    externalProxyMap: {
      'devicePixelRatio': VmProxy(identifier: 'devicePixelRatio', externalInstancePropertyReader: (Display instance) => instance.devicePixelRatio),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Display instance) => instance.hashCode),
      'id': VmProxy(identifier: 'id', externalInstancePropertyReader: (Display instance) => instance.id),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Display instance) => instance.noSuchMethod),
      'refreshRate': VmProxy(identifier: 'refreshRate', externalInstancePropertyReader: (Display instance) => instance.refreshRate),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Display instance) => instance.runtimeType),
      'size': VmProxy(identifier: 'size', externalInstancePropertyReader: (Display instance) => instance.size),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Display instance) => instance.toString),
    },
  );

  ///class DisplayFeature
  static final classDisplayFeature = VmClass<DisplayFeature>(
    identifier: 'DisplayFeature',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => DisplayFeature.new),
      'bounds': VmProxy(identifier: 'bounds', externalInstancePropertyReader: (DisplayFeature instance) => instance.bounds),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (DisplayFeature instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (DisplayFeature instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (DisplayFeature instance) => instance.runtimeType),
      'state': VmProxy(identifier: 'state', externalInstancePropertyReader: (DisplayFeature instance) => instance.state),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (DisplayFeature instance) => instance.toString),
      'type': VmProxy(identifier: 'type', externalInstancePropertyReader: (DisplayFeature instance) => instance.type),
    },
  );

  ///class DisplayFeatureState
  static final classDisplayFeatureState = VmClass<DisplayFeatureState>(
    identifier: 'DisplayFeatureState',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'postureFlat': VmProxy(identifier: 'postureFlat', externalStaticPropertyReader: () => DisplayFeatureState.postureFlat),
      'postureHalfOpened': VmProxy(identifier: 'postureHalfOpened', externalStaticPropertyReader: () => DisplayFeatureState.postureHalfOpened),
      'unknown': VmProxy(identifier: 'unknown', externalStaticPropertyReader: () => DisplayFeatureState.unknown),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (DisplayFeatureState instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (DisplayFeatureState instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (DisplayFeatureState instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (DisplayFeatureState instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (DisplayFeatureState instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (DisplayFeatureState instance) => instance.toString),
    },
  );

  ///class DisplayFeatureType
  static final classDisplayFeatureType = VmClass<DisplayFeatureType>(
    identifier: 'DisplayFeatureType',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'cutout': VmProxy(identifier: 'cutout', externalStaticPropertyReader: () => DisplayFeatureType.cutout),
      'fold': VmProxy(identifier: 'fold', externalStaticPropertyReader: () => DisplayFeatureType.fold),
      'hinge': VmProxy(identifier: 'hinge', externalStaticPropertyReader: () => DisplayFeatureType.hinge),
      'unknown': VmProxy(identifier: 'unknown', externalStaticPropertyReader: () => DisplayFeatureType.unknown),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (DisplayFeatureType instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (DisplayFeatureType instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (DisplayFeatureType instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (DisplayFeatureType instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (DisplayFeatureType instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (DisplayFeatureType instance) => instance.toString),
    },
  );

  ///class EngineLayer
  static final classEngineLayer = VmClass<EngineLayer>(
    identifier: 'EngineLayer',
    superclassNames: ['Object'],
    externalProxyMap: {
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (EngineLayer instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (EngineLayer instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (EngineLayer instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (EngineLayer instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (EngineLayer instance) => instance.toString),
    },
  );

  ///class FilterQuality
  static final classFilterQuality = VmClass<FilterQuality>(
    identifier: 'FilterQuality',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'high': VmProxy(identifier: 'high', externalStaticPropertyReader: () => FilterQuality.high),
      'low': VmProxy(identifier: 'low', externalStaticPropertyReader: () => FilterQuality.low),
      'medium': VmProxy(identifier: 'medium', externalStaticPropertyReader: () => FilterQuality.medium),
      'none': VmProxy(identifier: 'none', externalStaticPropertyReader: () => FilterQuality.none),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (FilterQuality instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (FilterQuality instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (FilterQuality instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (FilterQuality instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (FilterQuality instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (FilterQuality instance) => instance.toString),
    },
  );

  ///class FlutterView
  static final classFlutterView = VmClass<FlutterView>(
    identifier: 'FlutterView',
    superclassNames: ['Object'],
    externalProxyMap: {
      'devicePixelRatio': VmProxy(identifier: 'devicePixelRatio', externalInstancePropertyReader: (FlutterView instance) => instance.devicePixelRatio),
      'display': VmProxy(identifier: 'display', externalInstancePropertyReader: (FlutterView instance) => instance.display),
      'displayFeatures': VmProxy(identifier: 'displayFeatures', externalInstancePropertyReader: (FlutterView instance) => instance.displayFeatures),
      'gestureSettings': VmProxy(identifier: 'gestureSettings', externalInstancePropertyReader: (FlutterView instance) => instance.gestureSettings),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (FlutterView instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (FlutterView instance) => instance.noSuchMethod),
      'padding': VmProxy(identifier: 'padding', externalInstancePropertyReader: (FlutterView instance) => instance.padding),
      'physicalGeometry': VmProxy(identifier: 'physicalGeometry', externalInstancePropertyReader: (FlutterView instance) => instance.physicalGeometry),
      'physicalSize': VmProxy(identifier: 'physicalSize', externalInstancePropertyReader: (FlutterView instance) => instance.physicalSize),
      'platformDispatcher': VmProxy(identifier: 'platformDispatcher', externalInstancePropertyReader: (FlutterView instance) => instance.platformDispatcher),
      'render': VmProxy(identifier: 'render', externalInstancePropertyReader: (FlutterView instance) => instance.render),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (FlutterView instance) => instance.runtimeType),
      'systemGestureInsets': VmProxy(identifier: 'systemGestureInsets', externalInstancePropertyReader: (FlutterView instance) => instance.systemGestureInsets),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (FlutterView instance) => instance.toString),
      'updateSemantics': VmProxy(identifier: 'updateSemantics', externalInstancePropertyReader: (FlutterView instance) => instance.updateSemantics),
      'viewId': VmProxy(identifier: 'viewId', externalInstancePropertyReader: (FlutterView instance) => instance.viewId),
      'viewInsets': VmProxy(identifier: 'viewInsets', externalInstancePropertyReader: (FlutterView instance) => instance.viewInsets),
      'viewPadding': VmProxy(identifier: 'viewPadding', externalInstancePropertyReader: (FlutterView instance) => instance.viewPadding),
    },
  );

  ///class FontFeature
  static final classFontFeature = VmClass<FontFeature>(
    identifier: 'FontFeature',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => FontFeature.new),
      'characterVariant': VmProxy(identifier: 'characterVariant', externalStaticPropertyReader: () => FontFeature.characterVariant),
      'stylisticSet': VmProxy(identifier: 'stylisticSet', externalStaticPropertyReader: () => FontFeature.stylisticSet),
      'alternative': VmProxy(identifier: 'alternative', externalStaticPropertyReader: () => FontFeature.alternative),
      'alternativeFractions': VmProxy(identifier: 'alternativeFractions', externalStaticPropertyReader: () => FontFeature.alternativeFractions),
      'caseSensitiveForms': VmProxy(identifier: 'caseSensitiveForms', externalStaticPropertyReader: () => FontFeature.caseSensitiveForms),
      'contextualAlternates': VmProxy(identifier: 'contextualAlternates', externalStaticPropertyReader: () => FontFeature.contextualAlternates),
      'denominator': VmProxy(identifier: 'denominator', externalStaticPropertyReader: () => FontFeature.denominator),
      'disable': VmProxy(identifier: 'disable', externalStaticPropertyReader: () => FontFeature.disable),
      'enable': VmProxy(identifier: 'enable', externalStaticPropertyReader: () => FontFeature.enable),
      'fractions': VmProxy(identifier: 'fractions', externalStaticPropertyReader: () => FontFeature.fractions),
      'historicalForms': VmProxy(identifier: 'historicalForms', externalStaticPropertyReader: () => FontFeature.historicalForms),
      'historicalLigatures': VmProxy(identifier: 'historicalLigatures', externalStaticPropertyReader: () => FontFeature.historicalLigatures),
      'liningFigures': VmProxy(identifier: 'liningFigures', externalStaticPropertyReader: () => FontFeature.liningFigures),
      'localeAware': VmProxy(identifier: 'localeAware', externalStaticPropertyReader: () => FontFeature.localeAware),
      'notationalForms': VmProxy(identifier: 'notationalForms', externalStaticPropertyReader: () => FontFeature.notationalForms),
      'numerators': VmProxy(identifier: 'numerators', externalStaticPropertyReader: () => FontFeature.numerators),
      'oldstyleFigures': VmProxy(identifier: 'oldstyleFigures', externalStaticPropertyReader: () => FontFeature.oldstyleFigures),
      'ordinalForms': VmProxy(identifier: 'ordinalForms', externalStaticPropertyReader: () => FontFeature.ordinalForms),
      'proportionalFigures': VmProxy(identifier: 'proportionalFigures', externalStaticPropertyReader: () => FontFeature.proportionalFigures),
      'randomize': VmProxy(identifier: 'randomize', externalStaticPropertyReader: () => FontFeature.randomize),
      'scientificInferiors': VmProxy(identifier: 'scientificInferiors', externalStaticPropertyReader: () => FontFeature.scientificInferiors),
      'slashedZero': VmProxy(identifier: 'slashedZero', externalStaticPropertyReader: () => FontFeature.slashedZero),
      'stylisticAlternates': VmProxy(identifier: 'stylisticAlternates', externalStaticPropertyReader: () => FontFeature.stylisticAlternates),
      'subscripts': VmProxy(identifier: 'subscripts', externalStaticPropertyReader: () => FontFeature.subscripts),
      'superscripts': VmProxy(identifier: 'superscripts', externalStaticPropertyReader: () => FontFeature.superscripts),
      'swash': VmProxy(identifier: 'swash', externalStaticPropertyReader: () => FontFeature.swash),
      'tabularFigures': VmProxy(identifier: 'tabularFigures', externalStaticPropertyReader: () => FontFeature.tabularFigures),
      'feature': VmProxy(identifier: 'feature', externalInstancePropertyReader: (FontFeature instance) => instance.feature),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (FontFeature instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (FontFeature instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (FontFeature instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (FontFeature instance) => instance.toString),
      'value': VmProxy(identifier: 'value', externalInstancePropertyReader: (FontFeature instance) => instance.value),
    },
  );

  ///class FontStyle
  static final classFontStyle = VmClass<FontStyle>(
    identifier: 'FontStyle',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'italic': VmProxy(identifier: 'italic', externalStaticPropertyReader: () => FontStyle.italic),
      'normal': VmProxy(identifier: 'normal', externalStaticPropertyReader: () => FontStyle.normal),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (FontStyle instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (FontStyle instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (FontStyle instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (FontStyle instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (FontStyle instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (FontStyle instance) => instance.toString),
    },
  );

  ///class FontVariation
  static final classFontVariation = VmClass<FontVariation>(
    identifier: 'FontVariation',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => FontVariation.new),
      'axis': VmProxy(identifier: 'axis', externalInstancePropertyReader: (FontVariation instance) => instance.axis),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (FontVariation instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (FontVariation instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (FontVariation instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (FontVariation instance) => instance.toString),
      'value': VmProxy(identifier: 'value', externalInstancePropertyReader: (FontVariation instance) => instance.value),
    },
  );

  ///class FontWeight
  static final classFontWeight = VmClass<FontWeight>(
    identifier: 'FontWeight',
    superclassNames: ['Object'],
    externalProxyMap: {
      'bold': VmProxy(identifier: 'bold', externalStaticPropertyReader: () => FontWeight.bold),
      'lerp': VmProxy(identifier: 'lerp', externalStaticPropertyReader: () => FontWeight.lerp),
      'normal': VmProxy(identifier: 'normal', externalStaticPropertyReader: () => FontWeight.normal),
      'values': VmProxy(identifier: 'values', externalStaticPropertyReader: () => FontWeight.values),
      'w100': VmProxy(identifier: 'w100', externalStaticPropertyReader: () => FontWeight.w100),
      'w200': VmProxy(identifier: 'w200', externalStaticPropertyReader: () => FontWeight.w200),
      'w300': VmProxy(identifier: 'w300', externalStaticPropertyReader: () => FontWeight.w300),
      'w400': VmProxy(identifier: 'w400', externalStaticPropertyReader: () => FontWeight.w400),
      'w500': VmProxy(identifier: 'w500', externalStaticPropertyReader: () => FontWeight.w500),
      'w600': VmProxy(identifier: 'w600', externalStaticPropertyReader: () => FontWeight.w600),
      'w700': VmProxy(identifier: 'w700', externalStaticPropertyReader: () => FontWeight.w700),
      'w800': VmProxy(identifier: 'w800', externalStaticPropertyReader: () => FontWeight.w800),
      'w900': VmProxy(identifier: 'w900', externalStaticPropertyReader: () => FontWeight.w900),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (FontWeight instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (FontWeight instance) => instance.index),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (FontWeight instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (FontWeight instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (FontWeight instance) => instance.toString),
      'value': VmProxy(identifier: 'value', externalInstancePropertyReader: (FontWeight instance) => instance.value),
    },
  );

  ///class FragmentProgram
  static final classFragmentProgram = VmClass<FragmentProgram>(
    identifier: 'FragmentProgram',
    superclassNames: ['Object', 'NativeFieldWrapperClass1'],
    externalProxyMap: {
      'fromAsset': VmProxy(identifier: 'fromAsset', externalStaticPropertyReader: () => FragmentProgram.fromAsset),
      'fragmentShader': VmProxy(identifier: 'fragmentShader', externalInstancePropertyReader: (FragmentProgram instance) => instance.fragmentShader),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (FragmentProgram instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (FragmentProgram instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (FragmentProgram instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (FragmentProgram instance) => instance.toString),
    },
  );

  ///class FragmentShader
  static final classFragmentShader = VmClass<FragmentShader>(
    identifier: 'FragmentShader',
    superclassNames: ['Object', 'NativeFieldWrapperClass1', 'Shader'],
    externalProxyMap: {
      'debugDisposed': VmProxy(identifier: 'debugDisposed', externalInstancePropertyReader: (FragmentShader instance) => instance.debugDisposed),
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (FragmentShader instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (FragmentShader instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (FragmentShader instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (FragmentShader instance) => instance.runtimeType),
      'setFloat': VmProxy(identifier: 'setFloat', externalInstancePropertyReader: (FragmentShader instance) => instance.setFloat),
      'setImageSampler': VmProxy(identifier: 'setImageSampler', externalInstancePropertyReader: (FragmentShader instance) => instance.setImageSampler),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (FragmentShader instance) => instance.toString),
    },
  );

  ///class FrameData
  static final classFrameData = VmClass<FrameData>(
    identifier: 'FrameData',
    superclassNames: ['Object'],
    externalProxyMap: {
      'frameNumber': VmProxy(identifier: 'frameNumber', externalInstancePropertyReader: (FrameData instance) => instance.frameNumber),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (FrameData instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (FrameData instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (FrameData instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (FrameData instance) => instance.toString),
    },
  );

  ///class FrameInfo
  static final classFrameInfo = VmClass<FrameInfo>(
    identifier: 'FrameInfo',
    superclassNames: ['Object'],
    externalProxyMap: {
      'duration': VmProxy(identifier: 'duration', externalInstancePropertyReader: (FrameInfo instance) => instance.duration),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (FrameInfo instance) => instance.hashCode),
      'image': VmProxy(identifier: 'image', externalInstancePropertyReader: (FrameInfo instance) => instance.image),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (FrameInfo instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (FrameInfo instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (FrameInfo instance) => instance.toString),
    },
  );

  ///class FramePhase
  static final classFramePhase = VmClass<FramePhase>(
    identifier: 'FramePhase',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'buildFinish': VmProxy(identifier: 'buildFinish', externalStaticPropertyReader: () => FramePhase.buildFinish),
      'buildStart': VmProxy(identifier: 'buildStart', externalStaticPropertyReader: () => FramePhase.buildStart),
      'rasterFinish': VmProxy(identifier: 'rasterFinish', externalStaticPropertyReader: () => FramePhase.rasterFinish),
      'rasterFinishWallTime': VmProxy(identifier: 'rasterFinishWallTime', externalStaticPropertyReader: () => FramePhase.rasterFinishWallTime),
      'rasterStart': VmProxy(identifier: 'rasterStart', externalStaticPropertyReader: () => FramePhase.rasterStart),
      'vsyncStart': VmProxy(identifier: 'vsyncStart', externalStaticPropertyReader: () => FramePhase.vsyncStart),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (FramePhase instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (FramePhase instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (FramePhase instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (FramePhase instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (FramePhase instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (FramePhase instance) => instance.toString),
    },
  );

  ///class FrameTiming
  static final classFrameTiming = VmClass<FrameTiming>(
    identifier: 'FrameTiming',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => FrameTiming.new),
      'buildDuration': VmProxy(identifier: 'buildDuration', externalInstancePropertyReader: (FrameTiming instance) => instance.buildDuration),
      'frameNumber': VmProxy(identifier: 'frameNumber', externalInstancePropertyReader: (FrameTiming instance) => instance.frameNumber),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (FrameTiming instance) => instance.hashCode),
      'layerCacheBytes': VmProxy(identifier: 'layerCacheBytes', externalInstancePropertyReader: (FrameTiming instance) => instance.layerCacheBytes),
      'layerCacheCount': VmProxy(identifier: 'layerCacheCount', externalInstancePropertyReader: (FrameTiming instance) => instance.layerCacheCount),
      'layerCacheMegabytes': VmProxy(identifier: 'layerCacheMegabytes', externalInstancePropertyReader: (FrameTiming instance) => instance.layerCacheMegabytes),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (FrameTiming instance) => instance.noSuchMethod),
      'pictureCacheBytes': VmProxy(identifier: 'pictureCacheBytes', externalInstancePropertyReader: (FrameTiming instance) => instance.pictureCacheBytes),
      'pictureCacheCount': VmProxy(identifier: 'pictureCacheCount', externalInstancePropertyReader: (FrameTiming instance) => instance.pictureCacheCount),
      'pictureCacheMegabytes': VmProxy(identifier: 'pictureCacheMegabytes', externalInstancePropertyReader: (FrameTiming instance) => instance.pictureCacheMegabytes),
      'rasterDuration': VmProxy(identifier: 'rasterDuration', externalInstancePropertyReader: (FrameTiming instance) => instance.rasterDuration),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (FrameTiming instance) => instance.runtimeType),
      'timestampInMicroseconds': VmProxy(identifier: 'timestampInMicroseconds', externalInstancePropertyReader: (FrameTiming instance) => instance.timestampInMicroseconds),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (FrameTiming instance) => instance.toString),
      'totalSpan': VmProxy(identifier: 'totalSpan', externalInstancePropertyReader: (FrameTiming instance) => instance.totalSpan),
      'vsyncOverhead': VmProxy(identifier: 'vsyncOverhead', externalInstancePropertyReader: (FrameTiming instance) => instance.vsyncOverhead),
    },
  );

  ///class GestureSettings
  static final classGestureSettings = VmClass<GestureSettings>(
    identifier: 'GestureSettings',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => GestureSettings.new),
      'copyWith': VmProxy(identifier: 'copyWith', externalInstancePropertyReader: (GestureSettings instance) => instance.copyWith),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (GestureSettings instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (GestureSettings instance) => instance.noSuchMethod),
      'physicalDoubleTapSlop': VmProxy(identifier: 'physicalDoubleTapSlop', externalInstancePropertyReader: (GestureSettings instance) => instance.physicalDoubleTapSlop),
      'physicalTouchSlop': VmProxy(identifier: 'physicalTouchSlop', externalInstancePropertyReader: (GestureSettings instance) => instance.physicalTouchSlop),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (GestureSettings instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (GestureSettings instance) => instance.toString),
    },
  );

  ///class ImageByteFormat
  static final classImageByteFormat = VmClass<ImageByteFormat>(
    identifier: 'ImageByteFormat',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'png': VmProxy(identifier: 'png', externalStaticPropertyReader: () => ImageByteFormat.png),
      'rawExtendedRgba128': VmProxy(identifier: 'rawExtendedRgba128', externalStaticPropertyReader: () => ImageByteFormat.rawExtendedRgba128),
      'rawRgba': VmProxy(identifier: 'rawRgba', externalStaticPropertyReader: () => ImageByteFormat.rawRgba),
      'rawStraightRgba': VmProxy(identifier: 'rawStraightRgba', externalStaticPropertyReader: () => ImageByteFormat.rawStraightRgba),
      'rawUnmodified': VmProxy(identifier: 'rawUnmodified', externalStaticPropertyReader: () => ImageByteFormat.rawUnmodified),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ImageByteFormat instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (ImageByteFormat instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (ImageByteFormat instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ImageByteFormat instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ImageByteFormat instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ImageByteFormat instance) => instance.toString),
    },
  );

  ///class ImageDescriptor
  static final classImageDescriptor = VmClass<ImageDescriptor>(
    identifier: 'ImageDescriptor',
    superclassNames: ['Object'],
    externalProxyMap: {
      'raw': VmProxy(identifier: 'raw', externalStaticPropertyReader: () => ImageDescriptor.raw),
      'encoded': VmProxy(identifier: 'encoded', externalStaticPropertyReader: () => ImageDescriptor.encoded),
      'bytesPerPixel': VmProxy(identifier: 'bytesPerPixel', externalInstancePropertyReader: (ImageDescriptor instance) => instance.bytesPerPixel),
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (ImageDescriptor instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ImageDescriptor instance) => instance.hashCode),
      'height': VmProxy(identifier: 'height', externalInstancePropertyReader: (ImageDescriptor instance) => instance.height),
      'instantiateCodec': VmProxy(identifier: 'instantiateCodec', externalInstancePropertyReader: (ImageDescriptor instance) => instance.instantiateCodec),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ImageDescriptor instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ImageDescriptor instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ImageDescriptor instance) => instance.toString),
      'width': VmProxy(identifier: 'width', externalInstancePropertyReader: (ImageDescriptor instance) => instance.width),
    },
  );

  ///class ImageFilter
  static final classImageFilter = VmClass<ImageFilter>(
    identifier: 'ImageFilter',
    superclassNames: ['Object'],
    externalProxyMap: {
      'blur': VmProxy(identifier: 'blur', externalStaticPropertyReader: () => ImageFilter.blur),
      'compose': VmProxy(identifier: 'compose', externalStaticPropertyReader: () => ImageFilter.compose),
      'dilate': VmProxy(identifier: 'dilate', externalStaticPropertyReader: () => ImageFilter.dilate),
      'erode': VmProxy(identifier: 'erode', externalStaticPropertyReader: () => ImageFilter.erode),
      'matrix': VmProxy(identifier: 'matrix', externalStaticPropertyReader: () => ImageFilter.matrix),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ImageFilter instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ImageFilter instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ImageFilter instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ImageFilter instance) => instance.toString),
    },
  );

  ///class ImageFilterEngineLayer
  static final classImageFilterEngineLayer = VmClass<ImageFilterEngineLayer>(
    identifier: 'ImageFilterEngineLayer',
    superclassNames: ['Object', 'EngineLayer', '_EngineLayerWrapper'],
    externalProxyMap: {
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (ImageFilterEngineLayer instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ImageFilterEngineLayer instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ImageFilterEngineLayer instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ImageFilterEngineLayer instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ImageFilterEngineLayer instance) => instance.toString),
    },
  );

  ///class ImageShader
  static final classImageShader = VmClass<ImageShader>(
    identifier: 'ImageShader',
    superclassNames: ['Object', 'NativeFieldWrapperClass1', 'Shader'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => ImageShader.new),
      'debugDisposed': VmProxy(identifier: 'debugDisposed', externalInstancePropertyReader: (ImageShader instance) => instance.debugDisposed),
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (ImageShader instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ImageShader instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ImageShader instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ImageShader instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ImageShader instance) => instance.toString),
    },
  );

  ///class ImmutableBuffer
  static final classImmutableBuffer = VmClass<ImmutableBuffer>(
    identifier: 'ImmutableBuffer',
    superclassNames: ['Object', 'NativeFieldWrapperClass1'],
    externalProxyMap: {
      'fromAsset': VmProxy(identifier: 'fromAsset', externalStaticPropertyReader: () => ImmutableBuffer.fromAsset),
      'fromFilePath': VmProxy(identifier: 'fromFilePath', externalStaticPropertyReader: () => ImmutableBuffer.fromFilePath),
      'fromUint8List': VmProxy(identifier: 'fromUint8List', externalStaticPropertyReader: () => ImmutableBuffer.fromUint8List),
      'debugDisposed': VmProxy(identifier: 'debugDisposed', externalInstancePropertyReader: (ImmutableBuffer instance) => instance.debugDisposed),
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (ImmutableBuffer instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ImmutableBuffer instance) => instance.hashCode),
      'length': VmProxy(identifier: 'length', externalInstancePropertyReader: (ImmutableBuffer instance) => instance.length),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ImmutableBuffer instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ImmutableBuffer instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ImmutableBuffer instance) => instance.toString),
    },
  );

  ///class IsolateNameServer
  static final classIsolateNameServer = VmClass<IsolateNameServer>(
    identifier: 'IsolateNameServer',
    superclassNames: ['Object'],
    externalProxyMap: {
      'lookupPortByName': VmProxy(identifier: 'lookupPortByName', externalStaticPropertyReader: () => IsolateNameServer.lookupPortByName),
      'registerPortWithName': VmProxy(identifier: 'registerPortWithName', externalStaticPropertyReader: () => IsolateNameServer.registerPortWithName),
      'removePortNameMapping': VmProxy(identifier: 'removePortNameMapping', externalStaticPropertyReader: () => IsolateNameServer.removePortNameMapping),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (IsolateNameServer instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (IsolateNameServer instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (IsolateNameServer instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (IsolateNameServer instance) => instance.toString),
    },
  );

  ///class KeyData
  static final classKeyData = VmClass<KeyData>(
    identifier: 'KeyData',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => KeyData.new),
      'character': VmProxy(identifier: 'character', externalInstancePropertyReader: (KeyData instance) => instance.character),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (KeyData instance) => instance.hashCode),
      'logical': VmProxy(identifier: 'logical', externalInstancePropertyReader: (KeyData instance) => instance.logical),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (KeyData instance) => instance.noSuchMethod),
      'physical': VmProxy(identifier: 'physical', externalInstancePropertyReader: (KeyData instance) => instance.physical),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (KeyData instance) => instance.runtimeType),
      'synthesized': VmProxy(identifier: 'synthesized', externalInstancePropertyReader: (KeyData instance) => instance.synthesized),
      'timeStamp': VmProxy(identifier: 'timeStamp', externalInstancePropertyReader: (KeyData instance) => instance.timeStamp),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (KeyData instance) => instance.toString),
      'toStringFull': VmProxy(identifier: 'toStringFull', externalInstancePropertyReader: (KeyData instance) => instance.toStringFull),
      'type': VmProxy(identifier: 'type', externalInstancePropertyReader: (KeyData instance) => instance.type),
    },
  );

  ///class KeyEventType
  static final classKeyEventType = VmClass<KeyEventType>(
    identifier: 'KeyEventType',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'down': VmProxy(identifier: 'down', externalStaticPropertyReader: () => KeyEventType.down),
      'repeat': VmProxy(identifier: 'repeat', externalStaticPropertyReader: () => KeyEventType.repeat),
      'up': VmProxy(identifier: 'up', externalStaticPropertyReader: () => KeyEventType.up),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (KeyEventType instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (KeyEventType instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (KeyEventType instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (KeyEventType instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (KeyEventType instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (KeyEventType instance) => instance.toString),
    },
  );

  ///class LineMetrics
  static final classLineMetrics = VmClass<LineMetrics>(
    identifier: 'LineMetrics',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => LineMetrics.new),
      'ascent': VmProxy(identifier: 'ascent', externalInstancePropertyReader: (LineMetrics instance) => instance.ascent),
      'baseline': VmProxy(identifier: 'baseline', externalInstancePropertyReader: (LineMetrics instance) => instance.baseline),
      'descent': VmProxy(identifier: 'descent', externalInstancePropertyReader: (LineMetrics instance) => instance.descent),
      'hardBreak': VmProxy(identifier: 'hardBreak', externalInstancePropertyReader: (LineMetrics instance) => instance.hardBreak),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (LineMetrics instance) => instance.hashCode),
      'height': VmProxy(identifier: 'height', externalInstancePropertyReader: (LineMetrics instance) => instance.height),
      'left': VmProxy(identifier: 'left', externalInstancePropertyReader: (LineMetrics instance) => instance.left),
      'lineNumber': VmProxy(identifier: 'lineNumber', externalInstancePropertyReader: (LineMetrics instance) => instance.lineNumber),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (LineMetrics instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (LineMetrics instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (LineMetrics instance) => instance.toString),
      'unscaledAscent': VmProxy(identifier: 'unscaledAscent', externalInstancePropertyReader: (LineMetrics instance) => instance.unscaledAscent),
      'width': VmProxy(identifier: 'width', externalInstancePropertyReader: (LineMetrics instance) => instance.width),
    },
  );

  ///class Locale
  static final classLocale = VmClass<Locale>(
    identifier: 'Locale',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => Locale.new),
      'fromSubtags': VmProxy(identifier: 'fromSubtags', externalStaticPropertyReader: () => Locale.fromSubtags),
      'countryCode': VmProxy(identifier: 'countryCode', externalInstancePropertyReader: (Locale instance) => instance.countryCode),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Locale instance) => instance.hashCode),
      'languageCode': VmProxy(identifier: 'languageCode', externalInstancePropertyReader: (Locale instance) => instance.languageCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Locale instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Locale instance) => instance.runtimeType),
      'scriptCode': VmProxy(identifier: 'scriptCode', externalInstancePropertyReader: (Locale instance) => instance.scriptCode),
      'toLanguageTag': VmProxy(identifier: 'toLanguageTag', externalInstancePropertyReader: (Locale instance) => instance.toLanguageTag),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Locale instance) => instance.toString),
    },
  );

  ///class LocaleStringAttribute
  static final classLocaleStringAttribute = VmClass<LocaleStringAttribute>(
    identifier: 'LocaleStringAttribute',
    superclassNames: ['Object', 'NativeFieldWrapperClass1', 'StringAttribute'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => LocaleStringAttribute.new),
      'copy': VmProxy(identifier: 'copy', externalInstancePropertyReader: (LocaleStringAttribute instance) => instance.copy),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (LocaleStringAttribute instance) => instance.hashCode),
      'locale': VmProxy(identifier: 'locale', externalInstancePropertyReader: (LocaleStringAttribute instance) => instance.locale),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (LocaleStringAttribute instance) => instance.noSuchMethod),
      'range': VmProxy(identifier: 'range', externalInstancePropertyReader: (LocaleStringAttribute instance) => instance.range),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (LocaleStringAttribute instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (LocaleStringAttribute instance) => instance.toString),
    },
  );

  ///class MaskFilter
  static final classMaskFilter = VmClass<MaskFilter>(
    identifier: 'MaskFilter',
    superclassNames: ['Object'],
    externalProxyMap: {
      'blur': VmProxy(identifier: 'blur', externalStaticPropertyReader: () => MaskFilter.blur),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (MaskFilter instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (MaskFilter instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (MaskFilter instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (MaskFilter instance) => instance.toString),
    },
  );

  ///class Offset
  static final classOffset = VmClass<Offset>(
    identifier: 'Offset',
    superclassNames: ['Object', 'OffsetBase'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => Offset.new),
      'fromDirection': VmProxy(identifier: 'fromDirection', externalStaticPropertyReader: () => Offset.fromDirection),
      'infinite': VmProxy(identifier: 'infinite', externalStaticPropertyReader: () => Offset.infinite),
      'lerp': VmProxy(identifier: 'lerp', externalStaticPropertyReader: () => Offset.lerp),
      'zero': VmProxy(identifier: 'zero', externalStaticPropertyReader: () => Offset.zero),
      'direction': VmProxy(identifier: 'direction', externalInstancePropertyReader: (Offset instance) => instance.direction),
      'distance': VmProxy(identifier: 'distance', externalInstancePropertyReader: (Offset instance) => instance.distance),
      'distanceSquared': VmProxy(identifier: 'distanceSquared', externalInstancePropertyReader: (Offset instance) => instance.distanceSquared),
      'dx': VmProxy(identifier: 'dx', externalInstancePropertyReader: (Offset instance) => instance.dx),
      'dy': VmProxy(identifier: 'dy', externalInstancePropertyReader: (Offset instance) => instance.dy),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Offset instance) => instance.hashCode),
      'isFinite': VmProxy(identifier: 'isFinite', externalInstancePropertyReader: (Offset instance) => instance.isFinite),
      'isInfinite': VmProxy(identifier: 'isInfinite', externalInstancePropertyReader: (Offset instance) => instance.isInfinite),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Offset instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Offset instance) => instance.runtimeType),
      'scale': VmProxy(identifier: 'scale', externalInstancePropertyReader: (Offset instance) => instance.scale),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Offset instance) => instance.toString),
      'translate': VmProxy(identifier: 'translate', externalInstancePropertyReader: (Offset instance) => instance.translate),
    },
  );

  ///class OffsetBase
  static final classOffsetBase = VmClass<OffsetBase>(
    identifier: 'OffsetBase',
    superclassNames: ['Object'],
    externalProxyMap: {
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (OffsetBase instance) => instance.hashCode),
      'isFinite': VmProxy(identifier: 'isFinite', externalInstancePropertyReader: (OffsetBase instance) => instance.isFinite),
      'isInfinite': VmProxy(identifier: 'isInfinite', externalInstancePropertyReader: (OffsetBase instance) => instance.isInfinite),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (OffsetBase instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (OffsetBase instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (OffsetBase instance) => instance.toString),
    },
  );

  ///class OffsetEngineLayer
  static final classOffsetEngineLayer = VmClass<OffsetEngineLayer>(
    identifier: 'OffsetEngineLayer',
    superclassNames: ['Object', 'EngineLayer', '_EngineLayerWrapper'],
    externalProxyMap: {
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (OffsetEngineLayer instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (OffsetEngineLayer instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (OffsetEngineLayer instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (OffsetEngineLayer instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (OffsetEngineLayer instance) => instance.toString),
    },
  );

  ///class OpacityEngineLayer
  static final classOpacityEngineLayer = VmClass<OpacityEngineLayer>(
    identifier: 'OpacityEngineLayer',
    superclassNames: ['Object', 'EngineLayer', '_EngineLayerWrapper'],
    externalProxyMap: {
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (OpacityEngineLayer instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (OpacityEngineLayer instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (OpacityEngineLayer instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (OpacityEngineLayer instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (OpacityEngineLayer instance) => instance.toString),
    },
  );

  ///class Paint
  static final classPaint = VmClass<Paint>(
    identifier: 'Paint',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => Paint.new),
      'enableDithering': VmProxy(identifier: 'enableDithering', externalStaticPropertyReader: () => Paint.enableDithering, externalStaticPropertyWriter: (value) => Paint.enableDithering = value),
      'blendMode': VmProxy(identifier: 'blendMode', externalInstancePropertyReader: (Paint instance) => instance.blendMode, externalInstancePropertyWriter: (Paint instance, value) => instance.blendMode = value),
      'color': VmProxy(identifier: 'color', externalInstancePropertyWriter: (Paint instance, value) => instance.color = value, externalInstancePropertyReader: (Paint instance) => instance.color),
      'colorFilter': VmProxy(identifier: 'colorFilter', externalInstancePropertyWriter: (Paint instance, value) => instance.colorFilter = value, externalInstancePropertyReader: (Paint instance) => instance.colorFilter),
      'filterQuality': VmProxy(identifier: 'filterQuality', externalInstancePropertyReader: (Paint instance) => instance.filterQuality, externalInstancePropertyWriter: (Paint instance, value) => instance.filterQuality = value),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Paint instance) => instance.hashCode),
      'imageFilter': VmProxy(identifier: 'imageFilter', externalInstancePropertyReader: (Paint instance) => instance.imageFilter, externalInstancePropertyWriter: (Paint instance, value) => instance.imageFilter = value),
      'invertColors': VmProxy(identifier: 'invertColors', externalInstancePropertyReader: (Paint instance) => instance.invertColors, externalInstancePropertyWriter: (Paint instance, value) => instance.invertColors = value),
      'isAntiAlias': VmProxy(identifier: 'isAntiAlias', externalInstancePropertyWriter: (Paint instance, value) => instance.isAntiAlias = value, externalInstancePropertyReader: (Paint instance) => instance.isAntiAlias),
      'maskFilter': VmProxy(identifier: 'maskFilter', externalInstancePropertyReader: (Paint instance) => instance.maskFilter, externalInstancePropertyWriter: (Paint instance, value) => instance.maskFilter = value),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Paint instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Paint instance) => instance.runtimeType),
      'shader': VmProxy(identifier: 'shader', externalInstancePropertyWriter: (Paint instance, value) => instance.shader = value, externalInstancePropertyReader: (Paint instance) => instance.shader),
      'strokeCap': VmProxy(identifier: 'strokeCap', externalInstancePropertyWriter: (Paint instance, value) => instance.strokeCap = value, externalInstancePropertyReader: (Paint instance) => instance.strokeCap),
      'strokeJoin': VmProxy(identifier: 'strokeJoin', externalInstancePropertyWriter: (Paint instance, value) => instance.strokeJoin = value, externalInstancePropertyReader: (Paint instance) => instance.strokeJoin),
      'strokeMiterLimit': VmProxy(identifier: 'strokeMiterLimit', externalInstancePropertyWriter: (Paint instance, value) => instance.strokeMiterLimit = value, externalInstancePropertyReader: (Paint instance) => instance.strokeMiterLimit),
      'strokeWidth': VmProxy(identifier: 'strokeWidth', externalInstancePropertyWriter: (Paint instance, value) => instance.strokeWidth = value, externalInstancePropertyReader: (Paint instance) => instance.strokeWidth),
      'style': VmProxy(identifier: 'style', externalInstancePropertyWriter: (Paint instance, value) => instance.style = value, externalInstancePropertyReader: (Paint instance) => instance.style),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Paint instance) => instance.toString),
    },
  );

  ///class PaintingStyle
  static final classPaintingStyle = VmClass<PaintingStyle>(
    identifier: 'PaintingStyle',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'fill': VmProxy(identifier: 'fill', externalStaticPropertyReader: () => PaintingStyle.fill),
      'stroke': VmProxy(identifier: 'stroke', externalStaticPropertyReader: () => PaintingStyle.stroke),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PaintingStyle instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (PaintingStyle instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (PaintingStyle instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PaintingStyle instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PaintingStyle instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PaintingStyle instance) => instance.toString),
    },
  );

  ///class Paragraph
  static final classParagraph = VmClass<Paragraph>(
    identifier: 'Paragraph',
    superclassNames: ['Object'],
    externalProxyMap: {
      'alphabeticBaseline': VmProxy(identifier: 'alphabeticBaseline', externalInstancePropertyReader: (Paragraph instance) => instance.alphabeticBaseline),
      'computeLineMetrics': VmProxy(identifier: 'computeLineMetrics', externalInstancePropertyReader: (Paragraph instance) => instance.computeLineMetrics),
      'debugDisposed': VmProxy(identifier: 'debugDisposed', externalInstancePropertyReader: (Paragraph instance) => instance.debugDisposed),
      'didExceedMaxLines': VmProxy(identifier: 'didExceedMaxLines', externalInstancePropertyReader: (Paragraph instance) => instance.didExceedMaxLines),
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (Paragraph instance) => instance.dispose),
      'getBoxesForPlaceholders': VmProxy(identifier: 'getBoxesForPlaceholders', externalInstancePropertyReader: (Paragraph instance) => instance.getBoxesForPlaceholders),
      'getBoxesForRange': VmProxy(identifier: 'getBoxesForRange', externalInstancePropertyReader: (Paragraph instance) => instance.getBoxesForRange),
      'getLineBoundary': VmProxy(identifier: 'getLineBoundary', externalInstancePropertyReader: (Paragraph instance) => instance.getLineBoundary),
      'getPositionForOffset': VmProxy(identifier: 'getPositionForOffset', externalInstancePropertyReader: (Paragraph instance) => instance.getPositionForOffset),
      'getWordBoundary': VmProxy(identifier: 'getWordBoundary', externalInstancePropertyReader: (Paragraph instance) => instance.getWordBoundary),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Paragraph instance) => instance.hashCode),
      'height': VmProxy(identifier: 'height', externalInstancePropertyReader: (Paragraph instance) => instance.height),
      'ideographicBaseline': VmProxy(identifier: 'ideographicBaseline', externalInstancePropertyReader: (Paragraph instance) => instance.ideographicBaseline),
      'layout': VmProxy(identifier: 'layout', externalInstancePropertyReader: (Paragraph instance) => instance.layout),
      'longestLine': VmProxy(identifier: 'longestLine', externalInstancePropertyReader: (Paragraph instance) => instance.longestLine),
      'maxIntrinsicWidth': VmProxy(identifier: 'maxIntrinsicWidth', externalInstancePropertyReader: (Paragraph instance) => instance.maxIntrinsicWidth),
      'minIntrinsicWidth': VmProxy(identifier: 'minIntrinsicWidth', externalInstancePropertyReader: (Paragraph instance) => instance.minIntrinsicWidth),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Paragraph instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Paragraph instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Paragraph instance) => instance.toString),
      'width': VmProxy(identifier: 'width', externalInstancePropertyReader: (Paragraph instance) => instance.width),
    },
  );

  ///class ParagraphBuilder
  static final classParagraphBuilder = VmClass<ParagraphBuilder>(
    identifier: 'ParagraphBuilder',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => ParagraphBuilder.new),
      'addPlaceholder': VmProxy(identifier: 'addPlaceholder', externalInstancePropertyReader: (ParagraphBuilder instance) => instance.addPlaceholder),
      'addText': VmProxy(identifier: 'addText', externalInstancePropertyReader: (ParagraphBuilder instance) => instance.addText),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (ParagraphBuilder instance) => instance.build),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ParagraphBuilder instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ParagraphBuilder instance) => instance.noSuchMethod),
      'placeholderCount': VmProxy(identifier: 'placeholderCount', externalInstancePropertyReader: (ParagraphBuilder instance) => instance.placeholderCount),
      'placeholderScales': VmProxy(identifier: 'placeholderScales', externalInstancePropertyReader: (ParagraphBuilder instance) => instance.placeholderScales),
      'pop': VmProxy(identifier: 'pop', externalInstancePropertyReader: (ParagraphBuilder instance) => instance.pop),
      'pushStyle': VmProxy(identifier: 'pushStyle', externalInstancePropertyReader: (ParagraphBuilder instance) => instance.pushStyle),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ParagraphBuilder instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ParagraphBuilder instance) => instance.toString),
    },
  );

  ///class ParagraphConstraints
  static final classParagraphConstraints = VmClass<ParagraphConstraints>(
    identifier: 'ParagraphConstraints',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => ParagraphConstraints.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ParagraphConstraints instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ParagraphConstraints instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ParagraphConstraints instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ParagraphConstraints instance) => instance.toString),
      'width': VmProxy(identifier: 'width', externalInstancePropertyReader: (ParagraphConstraints instance) => instance.width),
    },
  );

  ///class ParagraphStyle
  static final classParagraphStyle = VmClass<ParagraphStyle>(
    identifier: 'ParagraphStyle',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => ParagraphStyle.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ParagraphStyle instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ParagraphStyle instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ParagraphStyle instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ParagraphStyle instance) => instance.toString),
    },
  );

  ///class Path
  static final classPath = VmClass<Path>(
    identifier: 'Path',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => Path.new),
      'from': VmProxy(identifier: 'from', externalStaticPropertyReader: () => Path.from),
      'combine': VmProxy(identifier: 'combine', externalStaticPropertyReader: () => Path.combine),
      'addArc': VmProxy(identifier: 'addArc', externalInstancePropertyReader: (Path instance) => instance.addArc),
      'addOval': VmProxy(identifier: 'addOval', externalInstancePropertyReader: (Path instance) => instance.addOval),
      'addPath': VmProxy(identifier: 'addPath', externalInstancePropertyReader: (Path instance) => instance.addPath),
      'addPolygon': VmProxy(identifier: 'addPolygon', externalInstancePropertyReader: (Path instance) => instance.addPolygon),
      'addRect': VmProxy(identifier: 'addRect', externalInstancePropertyReader: (Path instance) => instance.addRect),
      'addRRect': VmProxy(identifier: 'addRRect', externalInstancePropertyReader: (Path instance) => instance.addRRect),
      'arcTo': VmProxy(identifier: 'arcTo', externalInstancePropertyReader: (Path instance) => instance.arcTo),
      'arcToPoint': VmProxy(identifier: 'arcToPoint', externalInstancePropertyReader: (Path instance) => instance.arcToPoint),
      'close': VmProxy(identifier: 'close', externalInstancePropertyReader: (Path instance) => instance.close),
      'computeMetrics': VmProxy(identifier: 'computeMetrics', externalInstancePropertyReader: (Path instance) => instance.computeMetrics),
      'conicTo': VmProxy(identifier: 'conicTo', externalInstancePropertyReader: (Path instance) => instance.conicTo),
      'contains': VmProxy(identifier: 'contains', externalInstancePropertyReader: (Path instance) => instance.contains),
      'cubicTo': VmProxy(identifier: 'cubicTo', externalInstancePropertyReader: (Path instance) => instance.cubicTo),
      'extendWithPath': VmProxy(identifier: 'extendWithPath', externalInstancePropertyReader: (Path instance) => instance.extendWithPath),
      'fillType': VmProxy(identifier: 'fillType', externalInstancePropertyReader: (Path instance) => instance.fillType, externalInstancePropertyWriter: (Path instance, value) => instance.fillType = value),
      'getBounds': VmProxy(identifier: 'getBounds', externalInstancePropertyReader: (Path instance) => instance.getBounds),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Path instance) => instance.hashCode),
      'lineTo': VmProxy(identifier: 'lineTo', externalInstancePropertyReader: (Path instance) => instance.lineTo),
      'moveTo': VmProxy(identifier: 'moveTo', externalInstancePropertyReader: (Path instance) => instance.moveTo),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Path instance) => instance.noSuchMethod),
      'quadraticBezierTo': VmProxy(identifier: 'quadraticBezierTo', externalInstancePropertyReader: (Path instance) => instance.quadraticBezierTo),
      'relativeArcToPoint': VmProxy(identifier: 'relativeArcToPoint', externalInstancePropertyReader: (Path instance) => instance.relativeArcToPoint),
      'relativeConicTo': VmProxy(identifier: 'relativeConicTo', externalInstancePropertyReader: (Path instance) => instance.relativeConicTo),
      'relativeCubicTo': VmProxy(identifier: 'relativeCubicTo', externalInstancePropertyReader: (Path instance) => instance.relativeCubicTo),
      'relativeLineTo': VmProxy(identifier: 'relativeLineTo', externalInstancePropertyReader: (Path instance) => instance.relativeLineTo),
      'relativeMoveTo': VmProxy(identifier: 'relativeMoveTo', externalInstancePropertyReader: (Path instance) => instance.relativeMoveTo),
      'relativeQuadraticBezierTo': VmProxy(identifier: 'relativeQuadraticBezierTo', externalInstancePropertyReader: (Path instance) => instance.relativeQuadraticBezierTo),
      'reset': VmProxy(identifier: 'reset', externalInstancePropertyReader: (Path instance) => instance.reset),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Path instance) => instance.runtimeType),
      'shift': VmProxy(identifier: 'shift', externalInstancePropertyReader: (Path instance) => instance.shift),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Path instance) => instance.toString),
      'transform': VmProxy(identifier: 'transform', externalInstancePropertyReader: (Path instance) => instance.transform),
    },
  );

  ///class PathFillType
  static final classPathFillType = VmClass<PathFillType>(
    identifier: 'PathFillType',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'evenOdd': VmProxy(identifier: 'evenOdd', externalStaticPropertyReader: () => PathFillType.evenOdd),
      'nonZero': VmProxy(identifier: 'nonZero', externalStaticPropertyReader: () => PathFillType.nonZero),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PathFillType instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (PathFillType instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (PathFillType instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PathFillType instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PathFillType instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PathFillType instance) => instance.toString),
    },
  );

  ///class PathMetric
  static final classPathMetric = VmClass<PathMetric>(
    identifier: 'PathMetric',
    superclassNames: ['Object'],
    externalProxyMap: {
      'contourIndex': VmProxy(identifier: 'contourIndex', externalInstancePropertyReader: (PathMetric instance) => instance.contourIndex),
      'extractPath': VmProxy(identifier: 'extractPath', externalInstancePropertyReader: (PathMetric instance) => instance.extractPath),
      'getTangentForOffset': VmProxy(identifier: 'getTangentForOffset', externalInstancePropertyReader: (PathMetric instance) => instance.getTangentForOffset),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PathMetric instance) => instance.hashCode),
      'isClosed': VmProxy(identifier: 'isClosed', externalInstancePropertyReader: (PathMetric instance) => instance.isClosed),
      'length': VmProxy(identifier: 'length', externalInstancePropertyReader: (PathMetric instance) => instance.length),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PathMetric instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PathMetric instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PathMetric instance) => instance.toString),
    },
  );

  ///class PathMetricIterator
  static final classPathMetricIterator = VmClass<PathMetricIterator>(
    identifier: 'PathMetricIterator',
    superclassNames: ['Object', 'Iterator'],
    externalProxyMap: {
      'current': VmProxy(identifier: 'current', externalInstancePropertyReader: (PathMetricIterator instance) => instance.current),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PathMetricIterator instance) => instance.hashCode),
      'moveNext': VmProxy(identifier: 'moveNext', externalInstancePropertyReader: (PathMetricIterator instance) => instance.moveNext),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PathMetricIterator instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PathMetricIterator instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PathMetricIterator instance) => instance.toString),
    },
  );

  ///class PathMetrics
  static final classPathMetrics = VmClass<PathMetrics>(
    identifier: 'PathMetrics',
    superclassNames: ['Object', 'Iterable', 'IterableBase'],
    externalProxyMap: {
      'any': VmProxy(identifier: 'any', externalInstancePropertyReader: (PathMetrics instance) => instance.any, externalInstanceFunctionCaller: (PathMetrics instance, a0) => instance.any((b0) => a0(b0))),
      'cast': VmProxy(identifier: 'cast', externalInstancePropertyReader: (PathMetrics instance) => instance.cast),
      'contains': VmProxy(identifier: 'contains', externalInstancePropertyReader: (PathMetrics instance) => instance.contains),
      'elementAt': VmProxy(identifier: 'elementAt', externalInstancePropertyReader: (PathMetrics instance) => instance.elementAt),
      'elementAtOrNull': VmProxy(identifier: 'elementAtOrNull', externalInstancePropertyReader: (PathMetrics instance) => instance.elementAtOrNull),
      'every': VmProxy(identifier: 'every', externalInstancePropertyReader: (PathMetrics instance) => instance.every, externalInstanceFunctionCaller: (PathMetrics instance, a0) => instance.every((b0) => a0(b0))),
      'expand': VmProxy(identifier: 'expand', externalInstancePropertyReader: (PathMetrics instance) => instance.expand, externalInstanceFunctionCaller: (PathMetrics instance, a0) => instance.expand((b0) => a0(b0))),
      'first': VmProxy(identifier: 'first', externalInstancePropertyReader: (PathMetrics instance) => instance.first),
      'firstOrNull': VmProxy(identifier: 'firstOrNull', externalInstancePropertyReader: (PathMetrics instance) => instance.firstOrNull),
      'firstWhere': VmProxy(identifier: 'firstWhere', externalInstancePropertyReader: (PathMetrics instance) => instance.firstWhere, externalInstanceFunctionCaller: (PathMetrics instance, a0, {orElse}) => instance.firstWhere((b0) => a0(b0), orElse: orElse == null ? null : () => orElse())),
      'fold': VmProxy(identifier: 'fold', externalInstancePropertyReader: (PathMetrics instance) => instance.fold, externalInstanceFunctionCaller: (PathMetrics instance, a0, a1) => instance.fold(a0, (b0, b1) => a1(b0, b1))),
      'followedBy': VmProxy(identifier: 'followedBy', externalInstancePropertyReader: (PathMetrics instance) => instance.followedBy),
      'forEach': VmProxy(identifier: 'forEach', externalInstancePropertyReader: (PathMetrics instance) => instance.forEach, externalInstanceFunctionCaller: (PathMetrics instance, a0) => instance.forEach((b0) => a0(b0))),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PathMetrics instance) => instance.hashCode),
      'indexed': VmProxy(identifier: 'indexed', externalInstancePropertyReader: (PathMetrics instance) => instance.indexed),
      'isEmpty': VmProxy(identifier: 'isEmpty', externalInstancePropertyReader: (PathMetrics instance) => instance.isEmpty),
      'isNotEmpty': VmProxy(identifier: 'isNotEmpty', externalInstancePropertyReader: (PathMetrics instance) => instance.isNotEmpty),
      'iterator': VmProxy(identifier: 'iterator', externalInstancePropertyReader: (PathMetrics instance) => instance.iterator),
      'join': VmProxy(identifier: 'join', externalInstancePropertyReader: (PathMetrics instance) => instance.join),
      'last': VmProxy(identifier: 'last', externalInstancePropertyReader: (PathMetrics instance) => instance.last),
      'lastOrNull': VmProxy(identifier: 'lastOrNull', externalInstancePropertyReader: (PathMetrics instance) => instance.lastOrNull),
      'lastWhere': VmProxy(identifier: 'lastWhere', externalInstancePropertyReader: (PathMetrics instance) => instance.lastWhere, externalInstanceFunctionCaller: (PathMetrics instance, a0, {orElse}) => instance.lastWhere((b0) => a0(b0), orElse: orElse == null ? null : () => orElse())),
      'length': VmProxy(identifier: 'length', externalInstancePropertyReader: (PathMetrics instance) => instance.length),
      'map': VmProxy(identifier: 'map', externalInstancePropertyReader: (PathMetrics instance) => instance.map, externalInstanceFunctionCaller: (PathMetrics instance, a0) => instance.map((b0) => a0(b0))),
      'nonNulls': VmProxy(identifier: 'nonNulls', externalInstancePropertyReader: (PathMetrics instance) => instance.nonNulls),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PathMetrics instance) => instance.noSuchMethod),
      'reduce': VmProxy(identifier: 'reduce', externalInstancePropertyReader: (PathMetrics instance) => instance.reduce, externalInstanceFunctionCaller: (PathMetrics instance, a0) => instance.reduce((b0, b1) => a0(b0, b1))),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PathMetrics instance) => instance.runtimeType),
      'single': VmProxy(identifier: 'single', externalInstancePropertyReader: (PathMetrics instance) => instance.single),
      'singleOrNull': VmProxy(identifier: 'singleOrNull', externalInstancePropertyReader: (PathMetrics instance) => instance.singleOrNull),
      'singleWhere': VmProxy(identifier: 'singleWhere', externalInstancePropertyReader: (PathMetrics instance) => instance.singleWhere, externalInstanceFunctionCaller: (PathMetrics instance, a0, {orElse}) => instance.singleWhere((b0) => a0(b0), orElse: orElse == null ? null : () => orElse())),
      'skip': VmProxy(identifier: 'skip', externalInstancePropertyReader: (PathMetrics instance) => instance.skip),
      'skipWhile': VmProxy(identifier: 'skipWhile', externalInstancePropertyReader: (PathMetrics instance) => instance.skipWhile, externalInstanceFunctionCaller: (PathMetrics instance, a0) => instance.skipWhile((b0) => a0(b0))),
      'take': VmProxy(identifier: 'take', externalInstancePropertyReader: (PathMetrics instance) => instance.take),
      'takeWhile': VmProxy(identifier: 'takeWhile', externalInstancePropertyReader: (PathMetrics instance) => instance.takeWhile, externalInstanceFunctionCaller: (PathMetrics instance, a0) => instance.takeWhile((b0) => a0(b0))),
      'toList': VmProxy(identifier: 'toList', externalInstancePropertyReader: (PathMetrics instance) => instance.toList),
      'toSet': VmProxy(identifier: 'toSet', externalInstancePropertyReader: (PathMetrics instance) => instance.toSet),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PathMetrics instance) => instance.toString),
      'where': VmProxy(identifier: 'where', externalInstancePropertyReader: (PathMetrics instance) => instance.where, externalInstanceFunctionCaller: (PathMetrics instance, a0) => instance.where((b0) => a0(b0))),
      'whereType': VmProxy(identifier: 'whereType', externalInstancePropertyReader: (PathMetrics instance) => instance.whereType),
    },
  );

  ///class PathOperation
  static final classPathOperation = VmClass<PathOperation>(
    identifier: 'PathOperation',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'difference': VmProxy(identifier: 'difference', externalStaticPropertyReader: () => PathOperation.difference),
      'intersect': VmProxy(identifier: 'intersect', externalStaticPropertyReader: () => PathOperation.intersect),
      'reverseDifference': VmProxy(identifier: 'reverseDifference', externalStaticPropertyReader: () => PathOperation.reverseDifference),
      'union': VmProxy(identifier: 'union', externalStaticPropertyReader: () => PathOperation.union),
      'xor': VmProxy(identifier: 'xor', externalStaticPropertyReader: () => PathOperation.xor),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PathOperation instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (PathOperation instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (PathOperation instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PathOperation instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PathOperation instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PathOperation instance) => instance.toString),
    },
  );

  ///class Picture
  static final classPicture = VmClass<Picture>(
    identifier: 'Picture',
    superclassNames: ['Object'],
    externalProxyMap: {
      'onCreate': VmProxy(identifier: 'onCreate', externalStaticPropertyReader: () => Picture.onCreate, externalStaticPropertyWriter: (value) => Picture.onCreate = value),
      'onDispose': VmProxy(identifier: 'onDispose', externalStaticPropertyReader: () => Picture.onDispose, externalStaticPropertyWriter: (value) => Picture.onDispose = value),
      'approximateBytesUsed': VmProxy(identifier: 'approximateBytesUsed', externalInstancePropertyReader: (Picture instance) => instance.approximateBytesUsed),
      'debugDisposed': VmProxy(identifier: 'debugDisposed', externalInstancePropertyReader: (Picture instance) => instance.debugDisposed),
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (Picture instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Picture instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Picture instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Picture instance) => instance.runtimeType),
      'toImage': VmProxy(identifier: 'toImage', externalInstancePropertyReader: (Picture instance) => instance.toImage),
      'toImageSync': VmProxy(identifier: 'toImageSync', externalInstancePropertyReader: (Picture instance) => instance.toImageSync),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Picture instance) => instance.toString),
    },
  );

  ///class PictureRasterizationException
  static final classPictureRasterizationException = VmClass<PictureRasterizationException>(
    identifier: 'PictureRasterizationException',
    superclassNames: ['Object', 'Exception'],
    externalProxyMap: {
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PictureRasterizationException instance) => instance.hashCode),
      'message': VmProxy(identifier: 'message', externalInstancePropertyReader: (PictureRasterizationException instance) => instance.message),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PictureRasterizationException instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PictureRasterizationException instance) => instance.runtimeType),
      'stack': VmProxy(identifier: 'stack', externalInstancePropertyReader: (PictureRasterizationException instance) => instance.stack),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PictureRasterizationException instance) => instance.toString),
    },
  );

  ///class PictureRecorder
  static final classPictureRecorder = VmClass<PictureRecorder>(
    identifier: 'PictureRecorder',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => PictureRecorder.new),
      'endRecording': VmProxy(identifier: 'endRecording', externalInstancePropertyReader: (PictureRecorder instance) => instance.endRecording),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PictureRecorder instance) => instance.hashCode),
      'isRecording': VmProxy(identifier: 'isRecording', externalInstancePropertyReader: (PictureRecorder instance) => instance.isRecording),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PictureRecorder instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PictureRecorder instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PictureRecorder instance) => instance.toString),
    },
  );

  ///class PixelFormat
  static final classPixelFormat = VmClass<PixelFormat>(
    identifier: 'PixelFormat',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'bgra8888': VmProxy(identifier: 'bgra8888', externalStaticPropertyReader: () => PixelFormat.bgra8888),
      'rgba8888': VmProxy(identifier: 'rgba8888', externalStaticPropertyReader: () => PixelFormat.rgba8888),
      'rgbaFloat32': VmProxy(identifier: 'rgbaFloat32', externalStaticPropertyReader: () => PixelFormat.rgbaFloat32),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PixelFormat instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (PixelFormat instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (PixelFormat instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PixelFormat instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PixelFormat instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PixelFormat instance) => instance.toString),
    },
  );

  ///class PlaceholderAlignment
  static final classPlaceholderAlignment = VmClass<PlaceholderAlignment>(
    identifier: 'PlaceholderAlignment',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'aboveBaseline': VmProxy(identifier: 'aboveBaseline', externalStaticPropertyReader: () => PlaceholderAlignment.aboveBaseline),
      'baseline': VmProxy(identifier: 'baseline', externalStaticPropertyReader: () => PlaceholderAlignment.baseline),
      'belowBaseline': VmProxy(identifier: 'belowBaseline', externalStaticPropertyReader: () => PlaceholderAlignment.belowBaseline),
      'bottom': VmProxy(identifier: 'bottom', externalStaticPropertyReader: () => PlaceholderAlignment.bottom),
      'middle': VmProxy(identifier: 'middle', externalStaticPropertyReader: () => PlaceholderAlignment.middle),
      'top': VmProxy(identifier: 'top', externalStaticPropertyReader: () => PlaceholderAlignment.top),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PlaceholderAlignment instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (PlaceholderAlignment instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (PlaceholderAlignment instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PlaceholderAlignment instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PlaceholderAlignment instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PlaceholderAlignment instance) => instance.toString),
    },
  );

  ///class PlatformDispatcher
  static final classPlatformDispatcher = VmClass<PlatformDispatcher>(
    identifier: 'PlatformDispatcher',
    superclassNames: ['Object'],
    externalProxyMap: {
      'instance': VmProxy(identifier: 'instance', externalStaticPropertyReader: () => PlatformDispatcher.instance),
      'accessibilityFeatures': VmProxy(identifier: 'accessibilityFeatures', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.accessibilityFeatures),
      'alwaysUse24HourFormat': VmProxy(identifier: 'alwaysUse24HourFormat', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.alwaysUse24HourFormat),
      'brieflyShowPassword': VmProxy(identifier: 'brieflyShowPassword', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.brieflyShowPassword),
      'computePlatformResolvedLocale': VmProxy(identifier: 'computePlatformResolvedLocale', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.computePlatformResolvedLocale),
      'defaultRouteName': VmProxy(identifier: 'defaultRouteName', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.defaultRouteName),
      'displays': VmProxy(identifier: 'displays', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.displays),
      'frameData': VmProxy(identifier: 'frameData', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.frameData),
      'getPersistentIsolateData': VmProxy(identifier: 'getPersistentIsolateData', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.getPersistentIsolateData),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.hashCode),
      'implicitView': VmProxy(identifier: 'implicitView', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.implicitView),
      'initialLifecycleState': VmProxy(identifier: 'initialLifecycleState', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.initialLifecycleState),
      'locale': VmProxy(identifier: 'locale', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.locale),
      'locales': VmProxy(identifier: 'locales', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.locales),
      'nativeSpellCheckServiceDefined': VmProxy(identifier: 'nativeSpellCheckServiceDefined', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.nativeSpellCheckServiceDefined),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.noSuchMethod),
      'onAccessibilityFeaturesChanged': VmProxy(identifier: 'onAccessibilityFeaturesChanged', externalInstancePropertyWriter: (PlatformDispatcher instance, value) => instance.onAccessibilityFeaturesChanged = value, externalInstancePropertyReader: (PlatformDispatcher instance) => instance.onAccessibilityFeaturesChanged),
      'onBeginFrame': VmProxy(identifier: 'onBeginFrame', externalInstancePropertyWriter: (PlatformDispatcher instance, value) => instance.onBeginFrame = value, externalInstancePropertyReader: (PlatformDispatcher instance) => instance.onBeginFrame),
      'onDrawFrame': VmProxy(identifier: 'onDrawFrame', externalInstancePropertyWriter: (PlatformDispatcher instance, value) => instance.onDrawFrame = value, externalInstancePropertyReader: (PlatformDispatcher instance) => instance.onDrawFrame),
      'onError': VmProxy(identifier: 'onError', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.onError, externalInstancePropertyWriter: (PlatformDispatcher instance, value) => instance.onError = value),
      'onFrameDataChanged': VmProxy(identifier: 'onFrameDataChanged', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.onFrameDataChanged, externalInstancePropertyWriter: (PlatformDispatcher instance, value) => instance.onFrameDataChanged = value),
      'onKeyData': VmProxy(identifier: 'onKeyData', externalInstancePropertyWriter: (PlatformDispatcher instance, value) => instance.onKeyData = value, externalInstancePropertyReader: (PlatformDispatcher instance) => instance.onKeyData),
      'onLocaleChanged': VmProxy(identifier: 'onLocaleChanged', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.onLocaleChanged, externalInstancePropertyWriter: (PlatformDispatcher instance, value) => instance.onLocaleChanged = value),
      'onMetricsChanged': VmProxy(identifier: 'onMetricsChanged', externalInstancePropertyWriter: (PlatformDispatcher instance, value) => instance.onMetricsChanged = value, externalInstancePropertyReader: (PlatformDispatcher instance) => instance.onMetricsChanged),
      'onPlatformBrightnessChanged': VmProxy(identifier: 'onPlatformBrightnessChanged', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.onPlatformBrightnessChanged, externalInstancePropertyWriter: (PlatformDispatcher instance, value) => instance.onPlatformBrightnessChanged = value),
      'onPlatformConfigurationChanged': VmProxy(identifier: 'onPlatformConfigurationChanged', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.onPlatformConfigurationChanged, externalInstancePropertyWriter: (PlatformDispatcher instance, value) => instance.onPlatformConfigurationChanged = value),
      'onPlatformMessage': VmProxy(identifier: 'onPlatformMessage', externalInstancePropertyWriter: (PlatformDispatcher instance, value) => instance.onPlatformMessage = value, externalInstancePropertyReader: (PlatformDispatcher instance) => instance.onPlatformMessage),
      'onPointerDataPacket': VmProxy(identifier: 'onPointerDataPacket', externalInstancePropertyWriter: (PlatformDispatcher instance, value) => instance.onPointerDataPacket = value, externalInstancePropertyReader: (PlatformDispatcher instance) => instance.onPointerDataPacket),
      'onReportTimings': VmProxy(identifier: 'onReportTimings', externalInstancePropertyWriter: (PlatformDispatcher instance, value) => instance.onReportTimings = value, externalInstancePropertyReader: (PlatformDispatcher instance) => instance.onReportTimings),
      'onSemanticsActionEvent': VmProxy(identifier: 'onSemanticsActionEvent', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.onSemanticsActionEvent, externalInstancePropertyWriter: (PlatformDispatcher instance, value) => instance.onSemanticsActionEvent = value),
      'onSemanticsEnabledChanged': VmProxy(identifier: 'onSemanticsEnabledChanged', externalInstancePropertyWriter: (PlatformDispatcher instance, value) => instance.onSemanticsEnabledChanged = value, externalInstancePropertyReader: (PlatformDispatcher instance) => instance.onSemanticsEnabledChanged),
      'onSystemFontFamilyChanged': VmProxy(identifier: 'onSystemFontFamilyChanged', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.onSystemFontFamilyChanged, externalInstancePropertyWriter: (PlatformDispatcher instance, value) => instance.onSystemFontFamilyChanged = value),
      'onTextScaleFactorChanged': VmProxy(identifier: 'onTextScaleFactorChanged', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.onTextScaleFactorChanged, externalInstancePropertyWriter: (PlatformDispatcher instance, value) => instance.onTextScaleFactorChanged = value),
      'platformBrightness': VmProxy(identifier: 'platformBrightness', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.platformBrightness),
      'registerBackgroundIsolate': VmProxy(identifier: 'registerBackgroundIsolate', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.registerBackgroundIsolate),
      'requestDartPerformanceMode': VmProxy(identifier: 'requestDartPerformanceMode', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.requestDartPerformanceMode),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.runtimeType),
      'scheduleFrame': VmProxy(identifier: 'scheduleFrame', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.scheduleFrame),
      'semanticsEnabled': VmProxy(identifier: 'semanticsEnabled', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.semanticsEnabled),
      'sendPlatformMessage': VmProxy(identifier: 'sendPlatformMessage', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.sendPlatformMessage, externalInstanceFunctionCaller: (PlatformDispatcher instance, a0, a1, a2) => instance.sendPlatformMessage(a0, a1, a2 == null ? null : (b0) => a2(b0))),
      'sendPortPlatformMessage': VmProxy(identifier: 'sendPortPlatformMessage', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.sendPortPlatformMessage),
      'setIsolateDebugName': VmProxy(identifier: 'setIsolateDebugName', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.setIsolateDebugName),
      'systemFontFamily': VmProxy(identifier: 'systemFontFamily', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.systemFontFamily),
      'textScaleFactor': VmProxy(identifier: 'textScaleFactor', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.textScaleFactor),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.toString),
      'updateSemantics': VmProxy(identifier: 'updateSemantics', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.updateSemantics),
      'view': VmProxy(identifier: 'view', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.view),
      'views': VmProxy(identifier: 'views', externalInstancePropertyReader: (PlatformDispatcher instance) => instance.views),
    },
  );

  ///class PluginUtilities
  static final classPluginUtilities = VmClass<PluginUtilities>(
    identifier: 'PluginUtilities',
    superclassNames: ['Object'],
    externalProxyMap: {
      'getCallbackFromHandle': VmProxy(identifier: 'getCallbackFromHandle', externalStaticPropertyReader: () => PluginUtilities.getCallbackFromHandle),
      'getCallbackHandle': VmProxy(identifier: 'getCallbackHandle', externalStaticPropertyReader: () => PluginUtilities.getCallbackHandle),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PluginUtilities instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PluginUtilities instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PluginUtilities instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PluginUtilities instance) => instance.toString),
    },
  );

  ///class PointerChange
  static final classPointerChange = VmClass<PointerChange>(
    identifier: 'PointerChange',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'add': VmProxy(identifier: 'add', externalStaticPropertyReader: () => PointerChange.add),
      'cancel': VmProxy(identifier: 'cancel', externalStaticPropertyReader: () => PointerChange.cancel),
      'down': VmProxy(identifier: 'down', externalStaticPropertyReader: () => PointerChange.down),
      'hover': VmProxy(identifier: 'hover', externalStaticPropertyReader: () => PointerChange.hover),
      'move': VmProxy(identifier: 'move', externalStaticPropertyReader: () => PointerChange.move),
      'panZoomEnd': VmProxy(identifier: 'panZoomEnd', externalStaticPropertyReader: () => PointerChange.panZoomEnd),
      'panZoomStart': VmProxy(identifier: 'panZoomStart', externalStaticPropertyReader: () => PointerChange.panZoomStart),
      'panZoomUpdate': VmProxy(identifier: 'panZoomUpdate', externalStaticPropertyReader: () => PointerChange.panZoomUpdate),
      'remove': VmProxy(identifier: 'remove', externalStaticPropertyReader: () => PointerChange.remove),
      'up': VmProxy(identifier: 'up', externalStaticPropertyReader: () => PointerChange.up),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PointerChange instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (PointerChange instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (PointerChange instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PointerChange instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PointerChange instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PointerChange instance) => instance.toString),
    },
  );

  ///class PointerData
  static final classPointerData = VmClass<PointerData>(
    identifier: 'PointerData',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => PointerData.new),
      'buttons': VmProxy(identifier: 'buttons', externalInstancePropertyReader: (PointerData instance) => instance.buttons),
      'change': VmProxy(identifier: 'change', externalInstancePropertyReader: (PointerData instance) => instance.change),
      'device': VmProxy(identifier: 'device', externalInstancePropertyReader: (PointerData instance) => instance.device),
      'distance': VmProxy(identifier: 'distance', externalInstancePropertyReader: (PointerData instance) => instance.distance),
      'distanceMax': VmProxy(identifier: 'distanceMax', externalInstancePropertyReader: (PointerData instance) => instance.distanceMax),
      'embedderId': VmProxy(identifier: 'embedderId', externalInstancePropertyReader: (PointerData instance) => instance.embedderId),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PointerData instance) => instance.hashCode),
      'kind': VmProxy(identifier: 'kind', externalInstancePropertyReader: (PointerData instance) => instance.kind),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PointerData instance) => instance.noSuchMethod),
      'obscured': VmProxy(identifier: 'obscured', externalInstancePropertyReader: (PointerData instance) => instance.obscured),
      'orientation': VmProxy(identifier: 'orientation', externalInstancePropertyReader: (PointerData instance) => instance.orientation),
      'panDeltaX': VmProxy(identifier: 'panDeltaX', externalInstancePropertyReader: (PointerData instance) => instance.panDeltaX),
      'panDeltaY': VmProxy(identifier: 'panDeltaY', externalInstancePropertyReader: (PointerData instance) => instance.panDeltaY),
      'panX': VmProxy(identifier: 'panX', externalInstancePropertyReader: (PointerData instance) => instance.panX),
      'panY': VmProxy(identifier: 'panY', externalInstancePropertyReader: (PointerData instance) => instance.panY),
      'physicalDeltaX': VmProxy(identifier: 'physicalDeltaX', externalInstancePropertyReader: (PointerData instance) => instance.physicalDeltaX),
      'physicalDeltaY': VmProxy(identifier: 'physicalDeltaY', externalInstancePropertyReader: (PointerData instance) => instance.physicalDeltaY),
      'physicalX': VmProxy(identifier: 'physicalX', externalInstancePropertyReader: (PointerData instance) => instance.physicalX),
      'physicalY': VmProxy(identifier: 'physicalY', externalInstancePropertyReader: (PointerData instance) => instance.physicalY),
      'platformData': VmProxy(identifier: 'platformData', externalInstancePropertyReader: (PointerData instance) => instance.platformData),
      'pointerIdentifier': VmProxy(identifier: 'pointerIdentifier', externalInstancePropertyReader: (PointerData instance) => instance.pointerIdentifier),
      'pressure': VmProxy(identifier: 'pressure', externalInstancePropertyReader: (PointerData instance) => instance.pressure),
      'pressureMax': VmProxy(identifier: 'pressureMax', externalInstancePropertyReader: (PointerData instance) => instance.pressureMax),
      'pressureMin': VmProxy(identifier: 'pressureMin', externalInstancePropertyReader: (PointerData instance) => instance.pressureMin),
      'radiusMajor': VmProxy(identifier: 'radiusMajor', externalInstancePropertyReader: (PointerData instance) => instance.radiusMajor),
      'radiusMax': VmProxy(identifier: 'radiusMax', externalInstancePropertyReader: (PointerData instance) => instance.radiusMax),
      'radiusMin': VmProxy(identifier: 'radiusMin', externalInstancePropertyReader: (PointerData instance) => instance.radiusMin),
      'radiusMinor': VmProxy(identifier: 'radiusMinor', externalInstancePropertyReader: (PointerData instance) => instance.radiusMinor),
      'rotation': VmProxy(identifier: 'rotation', externalInstancePropertyReader: (PointerData instance) => instance.rotation),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PointerData instance) => instance.runtimeType),
      'scale': VmProxy(identifier: 'scale', externalInstancePropertyReader: (PointerData instance) => instance.scale),
      'scrollDeltaX': VmProxy(identifier: 'scrollDeltaX', externalInstancePropertyReader: (PointerData instance) => instance.scrollDeltaX),
      'scrollDeltaY': VmProxy(identifier: 'scrollDeltaY', externalInstancePropertyReader: (PointerData instance) => instance.scrollDeltaY),
      'signalKind': VmProxy(identifier: 'signalKind', externalInstancePropertyReader: (PointerData instance) => instance.signalKind),
      'size': VmProxy(identifier: 'size', externalInstancePropertyReader: (PointerData instance) => instance.size),
      'synthesized': VmProxy(identifier: 'synthesized', externalInstancePropertyReader: (PointerData instance) => instance.synthesized),
      'tilt': VmProxy(identifier: 'tilt', externalInstancePropertyReader: (PointerData instance) => instance.tilt),
      'timeStamp': VmProxy(identifier: 'timeStamp', externalInstancePropertyReader: (PointerData instance) => instance.timeStamp),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PointerData instance) => instance.toString),
      'toStringFull': VmProxy(identifier: 'toStringFull', externalInstancePropertyReader: (PointerData instance) => instance.toStringFull),
      'viewId': VmProxy(identifier: 'viewId', externalInstancePropertyReader: (PointerData instance) => instance.viewId),
    },
  );

  ///class PointerDataPacket
  static final classPointerDataPacket = VmClass<PointerDataPacket>(
    identifier: 'PointerDataPacket',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => PointerDataPacket.new),
      'data': VmProxy(identifier: 'data', externalInstancePropertyReader: (PointerDataPacket instance) => instance.data),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PointerDataPacket instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PointerDataPacket instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PointerDataPacket instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PointerDataPacket instance) => instance.toString),
    },
  );

  ///class PointerDeviceKind
  static final classPointerDeviceKind = VmClass<PointerDeviceKind>(
    identifier: 'PointerDeviceKind',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'invertedStylus': VmProxy(identifier: 'invertedStylus', externalStaticPropertyReader: () => PointerDeviceKind.invertedStylus),
      'mouse': VmProxy(identifier: 'mouse', externalStaticPropertyReader: () => PointerDeviceKind.mouse),
      'stylus': VmProxy(identifier: 'stylus', externalStaticPropertyReader: () => PointerDeviceKind.stylus),
      'touch': VmProxy(identifier: 'touch', externalStaticPropertyReader: () => PointerDeviceKind.touch),
      'trackpad': VmProxy(identifier: 'trackpad', externalStaticPropertyReader: () => PointerDeviceKind.trackpad),
      'unknown': VmProxy(identifier: 'unknown', externalStaticPropertyReader: () => PointerDeviceKind.unknown),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PointerDeviceKind instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (PointerDeviceKind instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (PointerDeviceKind instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PointerDeviceKind instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PointerDeviceKind instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PointerDeviceKind instance) => instance.toString),
    },
  );

  ///class PointerSignalKind
  static final classPointerSignalKind = VmClass<PointerSignalKind>(
    identifier: 'PointerSignalKind',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'none': VmProxy(identifier: 'none', externalStaticPropertyReader: () => PointerSignalKind.none),
      'scale': VmProxy(identifier: 'scale', externalStaticPropertyReader: () => PointerSignalKind.scale),
      'scroll': VmProxy(identifier: 'scroll', externalStaticPropertyReader: () => PointerSignalKind.scroll),
      'scrollInertiaCancel': VmProxy(identifier: 'scrollInertiaCancel', externalStaticPropertyReader: () => PointerSignalKind.scrollInertiaCancel),
      'unknown': VmProxy(identifier: 'unknown', externalStaticPropertyReader: () => PointerSignalKind.unknown),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PointerSignalKind instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (PointerSignalKind instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (PointerSignalKind instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PointerSignalKind instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PointerSignalKind instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PointerSignalKind instance) => instance.toString),
    },
  );

  ///class PointMode
  static final classPointMode = VmClass<PointMode>(
    identifier: 'PointMode',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'lines': VmProxy(identifier: 'lines', externalStaticPropertyReader: () => PointMode.lines),
      'points': VmProxy(identifier: 'points', externalStaticPropertyReader: () => PointMode.points),
      'polygon': VmProxy(identifier: 'polygon', externalStaticPropertyReader: () => PointMode.polygon),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PointMode instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (PointMode instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (PointMode instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PointMode instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PointMode instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PointMode instance) => instance.toString),
    },
  );

  ///class Radius
  static final classRadius = VmClass<Radius>(
    identifier: 'Radius',
    superclassNames: ['Object'],
    externalProxyMap: {
      'circular': VmProxy(identifier: 'circular', externalStaticPropertyReader: () => Radius.circular),
      'elliptical': VmProxy(identifier: 'elliptical', externalStaticPropertyReader: () => Radius.elliptical),
      'lerp': VmProxy(identifier: 'lerp', externalStaticPropertyReader: () => Radius.lerp),
      'zero': VmProxy(identifier: 'zero', externalStaticPropertyReader: () => Radius.zero),
      'clamp': VmProxy(identifier: 'clamp', externalInstancePropertyReader: (Radius instance) => instance.clamp),
      'clampValues': VmProxy(identifier: 'clampValues', externalInstancePropertyReader: (Radius instance) => instance.clampValues),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Radius instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Radius instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Radius instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Radius instance) => instance.toString),
      'x': VmProxy(identifier: 'x', externalInstancePropertyReader: (Radius instance) => instance.x),
      'y': VmProxy(identifier: 'y', externalInstancePropertyReader: (Radius instance) => instance.y),
    },
  );

  ///class Rect
  static final classRect = VmClass<Rect>(
    identifier: 'Rect',
    superclassNames: ['Object'],
    externalProxyMap: {
      'fromCenter': VmProxy(identifier: 'fromCenter', externalStaticPropertyReader: () => Rect.fromCenter),
      'fromCircle': VmProxy(identifier: 'fromCircle', externalStaticPropertyReader: () => Rect.fromCircle),
      'fromLTRB': VmProxy(identifier: 'fromLTRB', externalStaticPropertyReader: () => Rect.fromLTRB),
      'fromLTWH': VmProxy(identifier: 'fromLTWH', externalStaticPropertyReader: () => Rect.fromLTWH),
      'fromPoints': VmProxy(identifier: 'fromPoints', externalStaticPropertyReader: () => Rect.fromPoints),
      'largest': VmProxy(identifier: 'largest', externalStaticPropertyReader: () => Rect.largest),
      'lerp': VmProxy(identifier: 'lerp', externalStaticPropertyReader: () => Rect.lerp),
      'zero': VmProxy(identifier: 'zero', externalStaticPropertyReader: () => Rect.zero),
      'bottom': VmProxy(identifier: 'bottom', externalInstancePropertyReader: (Rect instance) => instance.bottom),
      'bottomCenter': VmProxy(identifier: 'bottomCenter', externalInstancePropertyReader: (Rect instance) => instance.bottomCenter),
      'bottomLeft': VmProxy(identifier: 'bottomLeft', externalInstancePropertyReader: (Rect instance) => instance.bottomLeft),
      'bottomRight': VmProxy(identifier: 'bottomRight', externalInstancePropertyReader: (Rect instance) => instance.bottomRight),
      'center': VmProxy(identifier: 'center', externalInstancePropertyReader: (Rect instance) => instance.center),
      'centerLeft': VmProxy(identifier: 'centerLeft', externalInstancePropertyReader: (Rect instance) => instance.centerLeft),
      'centerRight': VmProxy(identifier: 'centerRight', externalInstancePropertyReader: (Rect instance) => instance.centerRight),
      'contains': VmProxy(identifier: 'contains', externalInstancePropertyReader: (Rect instance) => instance.contains),
      'deflate': VmProxy(identifier: 'deflate', externalInstancePropertyReader: (Rect instance) => instance.deflate),
      'expandToInclude': VmProxy(identifier: 'expandToInclude', externalInstancePropertyReader: (Rect instance) => instance.expandToInclude),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Rect instance) => instance.hashCode),
      'hasNaN': VmProxy(identifier: 'hasNaN', externalInstancePropertyReader: (Rect instance) => instance.hasNaN),
      'height': VmProxy(identifier: 'height', externalInstancePropertyReader: (Rect instance) => instance.height),
      'inflate': VmProxy(identifier: 'inflate', externalInstancePropertyReader: (Rect instance) => instance.inflate),
      'intersect': VmProxy(identifier: 'intersect', externalInstancePropertyReader: (Rect instance) => instance.intersect),
      'isEmpty': VmProxy(identifier: 'isEmpty', externalInstancePropertyReader: (Rect instance) => instance.isEmpty),
      'isFinite': VmProxy(identifier: 'isFinite', externalInstancePropertyReader: (Rect instance) => instance.isFinite),
      'isInfinite': VmProxy(identifier: 'isInfinite', externalInstancePropertyReader: (Rect instance) => instance.isInfinite),
      'left': VmProxy(identifier: 'left', externalInstancePropertyReader: (Rect instance) => instance.left),
      'longestSide': VmProxy(identifier: 'longestSide', externalInstancePropertyReader: (Rect instance) => instance.longestSide),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Rect instance) => instance.noSuchMethod),
      'overlaps': VmProxy(identifier: 'overlaps', externalInstancePropertyReader: (Rect instance) => instance.overlaps),
      'right': VmProxy(identifier: 'right', externalInstancePropertyReader: (Rect instance) => instance.right),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Rect instance) => instance.runtimeType),
      'shift': VmProxy(identifier: 'shift', externalInstancePropertyReader: (Rect instance) => instance.shift),
      'shortestSide': VmProxy(identifier: 'shortestSide', externalInstancePropertyReader: (Rect instance) => instance.shortestSide),
      'size': VmProxy(identifier: 'size', externalInstancePropertyReader: (Rect instance) => instance.size),
      'top': VmProxy(identifier: 'top', externalInstancePropertyReader: (Rect instance) => instance.top),
      'topCenter': VmProxy(identifier: 'topCenter', externalInstancePropertyReader: (Rect instance) => instance.topCenter),
      'topLeft': VmProxy(identifier: 'topLeft', externalInstancePropertyReader: (Rect instance) => instance.topLeft),
      'topRight': VmProxy(identifier: 'topRight', externalInstancePropertyReader: (Rect instance) => instance.topRight),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Rect instance) => instance.toString),
      'translate': VmProxy(identifier: 'translate', externalInstancePropertyReader: (Rect instance) => instance.translate),
      'width': VmProxy(identifier: 'width', externalInstancePropertyReader: (Rect instance) => instance.width),
    },
  );

  ///class RootIsolateToken
  static final classRootIsolateToken = VmClass<RootIsolateToken>(
    identifier: 'RootIsolateToken',
    superclassNames: ['Object'],
    externalProxyMap: {
      'instance': VmProxy(identifier: 'instance', externalStaticPropertyReader: () => RootIsolateToken.instance),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RootIsolateToken instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RootIsolateToken instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RootIsolateToken instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RootIsolateToken instance) => instance.toString),
    },
  );

  ///class RRect
  static final classRRect = VmClass<RRect>(
    identifier: 'RRect',
    superclassNames: ['Object'],
    externalProxyMap: {
      'fromLTRBAndCorners': VmProxy(identifier: 'fromLTRBAndCorners', externalStaticPropertyReader: () => RRect.fromLTRBAndCorners),
      'fromLTRBR': VmProxy(identifier: 'fromLTRBR', externalStaticPropertyReader: () => RRect.fromLTRBR),
      'fromLTRBXY': VmProxy(identifier: 'fromLTRBXY', externalStaticPropertyReader: () => RRect.fromLTRBXY),
      'fromRectAndCorners': VmProxy(identifier: 'fromRectAndCorners', externalStaticPropertyReader: () => RRect.fromRectAndCorners),
      'fromRectAndRadius': VmProxy(identifier: 'fromRectAndRadius', externalStaticPropertyReader: () => RRect.fromRectAndRadius),
      'fromRectXY': VmProxy(identifier: 'fromRectXY', externalStaticPropertyReader: () => RRect.fromRectXY),
      'lerp': VmProxy(identifier: 'lerp', externalStaticPropertyReader: () => RRect.lerp),
      'zero': VmProxy(identifier: 'zero', externalStaticPropertyReader: () => RRect.zero),
      'blRadius': VmProxy(identifier: 'blRadius', externalInstancePropertyReader: (RRect instance) => instance.blRadius),
      'blRadiusX': VmProxy(identifier: 'blRadiusX', externalInstancePropertyReader: (RRect instance) => instance.blRadiusX),
      'blRadiusY': VmProxy(identifier: 'blRadiusY', externalInstancePropertyReader: (RRect instance) => instance.blRadiusY),
      'bottom': VmProxy(identifier: 'bottom', externalInstancePropertyReader: (RRect instance) => instance.bottom),
      'brRadius': VmProxy(identifier: 'brRadius', externalInstancePropertyReader: (RRect instance) => instance.brRadius),
      'brRadiusX': VmProxy(identifier: 'brRadiusX', externalInstancePropertyReader: (RRect instance) => instance.brRadiusX),
      'brRadiusY': VmProxy(identifier: 'brRadiusY', externalInstancePropertyReader: (RRect instance) => instance.brRadiusY),
      'center': VmProxy(identifier: 'center', externalInstancePropertyReader: (RRect instance) => instance.center),
      'contains': VmProxy(identifier: 'contains', externalInstancePropertyReader: (RRect instance) => instance.contains),
      'deflate': VmProxy(identifier: 'deflate', externalInstancePropertyReader: (RRect instance) => instance.deflate),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RRect instance) => instance.hashCode),
      'hasNaN': VmProxy(identifier: 'hasNaN', externalInstancePropertyReader: (RRect instance) => instance.hasNaN),
      'height': VmProxy(identifier: 'height', externalInstancePropertyReader: (RRect instance) => instance.height),
      'inflate': VmProxy(identifier: 'inflate', externalInstancePropertyReader: (RRect instance) => instance.inflate),
      'isCircle': VmProxy(identifier: 'isCircle', externalInstancePropertyReader: (RRect instance) => instance.isCircle),
      'isEllipse': VmProxy(identifier: 'isEllipse', externalInstancePropertyReader: (RRect instance) => instance.isEllipse),
      'isEmpty': VmProxy(identifier: 'isEmpty', externalInstancePropertyReader: (RRect instance) => instance.isEmpty),
      'isFinite': VmProxy(identifier: 'isFinite', externalInstancePropertyReader: (RRect instance) => instance.isFinite),
      'isRect': VmProxy(identifier: 'isRect', externalInstancePropertyReader: (RRect instance) => instance.isRect),
      'isStadium': VmProxy(identifier: 'isStadium', externalInstancePropertyReader: (RRect instance) => instance.isStadium),
      'left': VmProxy(identifier: 'left', externalInstancePropertyReader: (RRect instance) => instance.left),
      'longestSide': VmProxy(identifier: 'longestSide', externalInstancePropertyReader: (RRect instance) => instance.longestSide),
      'middleRect': VmProxy(identifier: 'middleRect', externalInstancePropertyReader: (RRect instance) => instance.middleRect),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RRect instance) => instance.noSuchMethod),
      'outerRect': VmProxy(identifier: 'outerRect', externalInstancePropertyReader: (RRect instance) => instance.outerRect),
      'right': VmProxy(identifier: 'right', externalInstancePropertyReader: (RRect instance) => instance.right),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RRect instance) => instance.runtimeType),
      'safeInnerRect': VmProxy(identifier: 'safeInnerRect', externalInstancePropertyReader: (RRect instance) => instance.safeInnerRect),
      'scaleRadii': VmProxy(identifier: 'scaleRadii', externalInstancePropertyReader: (RRect instance) => instance.scaleRadii),
      'shift': VmProxy(identifier: 'shift', externalInstancePropertyReader: (RRect instance) => instance.shift),
      'shortestSide': VmProxy(identifier: 'shortestSide', externalInstancePropertyReader: (RRect instance) => instance.shortestSide),
      'tallMiddleRect': VmProxy(identifier: 'tallMiddleRect', externalInstancePropertyReader: (RRect instance) => instance.tallMiddleRect),
      'tlRadius': VmProxy(identifier: 'tlRadius', externalInstancePropertyReader: (RRect instance) => instance.tlRadius),
      'tlRadiusX': VmProxy(identifier: 'tlRadiusX', externalInstancePropertyReader: (RRect instance) => instance.tlRadiusX),
      'tlRadiusY': VmProxy(identifier: 'tlRadiusY', externalInstancePropertyReader: (RRect instance) => instance.tlRadiusY),
      'top': VmProxy(identifier: 'top', externalInstancePropertyReader: (RRect instance) => instance.top),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RRect instance) => instance.toString),
      'trRadius': VmProxy(identifier: 'trRadius', externalInstancePropertyReader: (RRect instance) => instance.trRadius),
      'trRadiusX': VmProxy(identifier: 'trRadiusX', externalInstancePropertyReader: (RRect instance) => instance.trRadiusX),
      'trRadiusY': VmProxy(identifier: 'trRadiusY', externalInstancePropertyReader: (RRect instance) => instance.trRadiusY),
      'wideMiddleRect': VmProxy(identifier: 'wideMiddleRect', externalInstancePropertyReader: (RRect instance) => instance.wideMiddleRect),
      'width': VmProxy(identifier: 'width', externalInstancePropertyReader: (RRect instance) => instance.width),
    },
  );

  ///class RSTransform
  static final classRSTransform = VmClass<RSTransform>(
    identifier: 'RSTransform',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => RSTransform.new),
      'fromComponents': VmProxy(identifier: 'fromComponents', externalStaticPropertyReader: () => RSTransform.fromComponents),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RSTransform instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RSTransform instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RSTransform instance) => instance.runtimeType),
      'scos': VmProxy(identifier: 'scos', externalInstancePropertyReader: (RSTransform instance) => instance.scos),
      'ssin': VmProxy(identifier: 'ssin', externalInstancePropertyReader: (RSTransform instance) => instance.ssin),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RSTransform instance) => instance.toString),
      'tx': VmProxy(identifier: 'tx', externalInstancePropertyReader: (RSTransform instance) => instance.tx),
      'ty': VmProxy(identifier: 'ty', externalInstancePropertyReader: (RSTransform instance) => instance.ty),
    },
  );

  ///class Scene
  static final classScene = VmClass<Scene>(
    identifier: 'Scene',
    superclassNames: ['Object'],
    externalProxyMap: {
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (Scene instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Scene instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Scene instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Scene instance) => instance.runtimeType),
      'toImage': VmProxy(identifier: 'toImage', externalInstancePropertyReader: (Scene instance) => instance.toImage),
      'toImageSync': VmProxy(identifier: 'toImageSync', externalInstancePropertyReader: (Scene instance) => instance.toImageSync),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Scene instance) => instance.toString),
    },
  );

  ///class SceneBuilder
  static final classSceneBuilder = VmClass<SceneBuilder>(
    identifier: 'SceneBuilder',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => SceneBuilder.new),
      'addPerformanceOverlay': VmProxy(identifier: 'addPerformanceOverlay', externalInstancePropertyReader: (SceneBuilder instance) => instance.addPerformanceOverlay),
      'addPicture': VmProxy(identifier: 'addPicture', externalInstancePropertyReader: (SceneBuilder instance) => instance.addPicture),
      'addPlatformView': VmProxy(identifier: 'addPlatformView', externalInstancePropertyReader: (SceneBuilder instance) => instance.addPlatformView),
      'addRetained': VmProxy(identifier: 'addRetained', externalInstancePropertyReader: (SceneBuilder instance) => instance.addRetained),
      'addTexture': VmProxy(identifier: 'addTexture', externalInstancePropertyReader: (SceneBuilder instance) => instance.addTexture),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (SceneBuilder instance) => instance.build),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SceneBuilder instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SceneBuilder instance) => instance.noSuchMethod),
      'pop': VmProxy(identifier: 'pop', externalInstancePropertyReader: (SceneBuilder instance) => instance.pop),
      'pushBackdropFilter': VmProxy(identifier: 'pushBackdropFilter', externalInstancePropertyReader: (SceneBuilder instance) => instance.pushBackdropFilter),
      'pushClipPath': VmProxy(identifier: 'pushClipPath', externalInstancePropertyReader: (SceneBuilder instance) => instance.pushClipPath),
      'pushClipRect': VmProxy(identifier: 'pushClipRect', externalInstancePropertyReader: (SceneBuilder instance) => instance.pushClipRect),
      'pushClipRRect': VmProxy(identifier: 'pushClipRRect', externalInstancePropertyReader: (SceneBuilder instance) => instance.pushClipRRect),
      'pushColorFilter': VmProxy(identifier: 'pushColorFilter', externalInstancePropertyReader: (SceneBuilder instance) => instance.pushColorFilter),
      'pushImageFilter': VmProxy(identifier: 'pushImageFilter', externalInstancePropertyReader: (SceneBuilder instance) => instance.pushImageFilter),
      'pushOffset': VmProxy(identifier: 'pushOffset', externalInstancePropertyReader: (SceneBuilder instance) => instance.pushOffset),
      'pushOpacity': VmProxy(identifier: 'pushOpacity', externalInstancePropertyReader: (SceneBuilder instance) => instance.pushOpacity),
      'pushShaderMask': VmProxy(identifier: 'pushShaderMask', externalInstancePropertyReader: (SceneBuilder instance) => instance.pushShaderMask),
      'pushTransform': VmProxy(identifier: 'pushTransform', externalInstancePropertyReader: (SceneBuilder instance) => instance.pushTransform),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SceneBuilder instance) => instance.runtimeType),
      'setCheckerboardOffscreenLayers': VmProxy(identifier: 'setCheckerboardOffscreenLayers', externalInstancePropertyReader: (SceneBuilder instance) => instance.setCheckerboardOffscreenLayers),
      'setCheckerboardRasterCacheImages': VmProxy(identifier: 'setCheckerboardRasterCacheImages', externalInstancePropertyReader: (SceneBuilder instance) => instance.setCheckerboardRasterCacheImages),
      'setRasterizerTracingThreshold': VmProxy(identifier: 'setRasterizerTracingThreshold', externalInstancePropertyReader: (SceneBuilder instance) => instance.setRasterizerTracingThreshold),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SceneBuilder instance) => instance.toString),
    },
  );

  ///class SemanticsAction
  static final classSemanticsAction = VmClass<SemanticsAction>(
    identifier: 'SemanticsAction',
    superclassNames: ['Object'],
    externalProxyMap: {
      'copy': VmProxy(identifier: 'copy', externalStaticPropertyReader: () => SemanticsAction.copy),
      'customAction': VmProxy(identifier: 'customAction', externalStaticPropertyReader: () => SemanticsAction.customAction),
      'cut': VmProxy(identifier: 'cut', externalStaticPropertyReader: () => SemanticsAction.cut),
      'decrease': VmProxy(identifier: 'decrease', externalStaticPropertyReader: () => SemanticsAction.decrease),
      'didGainAccessibilityFocus': VmProxy(identifier: 'didGainAccessibilityFocus', externalStaticPropertyReader: () => SemanticsAction.didGainAccessibilityFocus),
      'didLoseAccessibilityFocus': VmProxy(identifier: 'didLoseAccessibilityFocus', externalStaticPropertyReader: () => SemanticsAction.didLoseAccessibilityFocus),
      'dismiss': VmProxy(identifier: 'dismiss', externalStaticPropertyReader: () => SemanticsAction.dismiss),
      'fromIndex': VmProxy(identifier: 'fromIndex', externalStaticPropertyReader: () => SemanticsAction.fromIndex),
      'increase': VmProxy(identifier: 'increase', externalStaticPropertyReader: () => SemanticsAction.increase),
      'longPress': VmProxy(identifier: 'longPress', externalStaticPropertyReader: () => SemanticsAction.longPress),
      'moveCursorBackwardByCharacter': VmProxy(identifier: 'moveCursorBackwardByCharacter', externalStaticPropertyReader: () => SemanticsAction.moveCursorBackwardByCharacter),
      'moveCursorBackwardByWord': VmProxy(identifier: 'moveCursorBackwardByWord', externalStaticPropertyReader: () => SemanticsAction.moveCursorBackwardByWord),
      'moveCursorForwardByCharacter': VmProxy(identifier: 'moveCursorForwardByCharacter', externalStaticPropertyReader: () => SemanticsAction.moveCursorForwardByCharacter),
      'moveCursorForwardByWord': VmProxy(identifier: 'moveCursorForwardByWord', externalStaticPropertyReader: () => SemanticsAction.moveCursorForwardByWord),
      'paste': VmProxy(identifier: 'paste', externalStaticPropertyReader: () => SemanticsAction.paste),
      'scrollDown': VmProxy(identifier: 'scrollDown', externalStaticPropertyReader: () => SemanticsAction.scrollDown),
      'scrollLeft': VmProxy(identifier: 'scrollLeft', externalStaticPropertyReader: () => SemanticsAction.scrollLeft),
      'scrollRight': VmProxy(identifier: 'scrollRight', externalStaticPropertyReader: () => SemanticsAction.scrollRight),
      'scrollUp': VmProxy(identifier: 'scrollUp', externalStaticPropertyReader: () => SemanticsAction.scrollUp),
      'setSelection': VmProxy(identifier: 'setSelection', externalStaticPropertyReader: () => SemanticsAction.setSelection),
      'setText': VmProxy(identifier: 'setText', externalStaticPropertyReader: () => SemanticsAction.setText),
      'showOnScreen': VmProxy(identifier: 'showOnScreen', externalStaticPropertyReader: () => SemanticsAction.showOnScreen),
      'tap': VmProxy(identifier: 'tap', externalStaticPropertyReader: () => SemanticsAction.tap),
      'values': VmProxy(identifier: 'values', externalStaticPropertyReader: () => SemanticsAction.values),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SemanticsAction instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (SemanticsAction instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (SemanticsAction instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SemanticsAction instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SemanticsAction instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SemanticsAction instance) => instance.toString),
    },
  );

  ///class SemanticsActionEvent
  static final classSemanticsActionEvent = VmClass<SemanticsActionEvent>(
    identifier: 'SemanticsActionEvent',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => SemanticsActionEvent.new),
      'arguments': VmProxy(identifier: 'arguments', externalInstancePropertyReader: (SemanticsActionEvent instance) => instance.arguments),
      'copyWith': VmProxy(identifier: 'copyWith', externalInstancePropertyReader: (SemanticsActionEvent instance) => instance.copyWith),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SemanticsActionEvent instance) => instance.hashCode),
      'nodeId': VmProxy(identifier: 'nodeId', externalInstancePropertyReader: (SemanticsActionEvent instance) => instance.nodeId),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SemanticsActionEvent instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SemanticsActionEvent instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SemanticsActionEvent instance) => instance.toString),
      'type': VmProxy(identifier: 'type', externalInstancePropertyReader: (SemanticsActionEvent instance) => instance.type),
      'viewId': VmProxy(identifier: 'viewId', externalInstancePropertyReader: (SemanticsActionEvent instance) => instance.viewId),
    },
  );

  ///class SemanticsFlag
  static final classSemanticsFlag = VmClass<SemanticsFlag>(
    identifier: 'SemanticsFlag',
    superclassNames: ['Object'],
    externalProxyMap: {
      'fromIndex': VmProxy(identifier: 'fromIndex', externalStaticPropertyReader: () => SemanticsFlag.fromIndex),
      'hasCheckedState': VmProxy(identifier: 'hasCheckedState', externalStaticPropertyReader: () => SemanticsFlag.hasCheckedState),
      'hasEnabledState': VmProxy(identifier: 'hasEnabledState', externalStaticPropertyReader: () => SemanticsFlag.hasEnabledState),
      'hasImplicitScrolling': VmProxy(identifier: 'hasImplicitScrolling', externalStaticPropertyReader: () => SemanticsFlag.hasImplicitScrolling),
      'hasToggledState': VmProxy(identifier: 'hasToggledState', externalStaticPropertyReader: () => SemanticsFlag.hasToggledState),
      'isButton': VmProxy(identifier: 'isButton', externalStaticPropertyReader: () => SemanticsFlag.isButton),
      'isChecked': VmProxy(identifier: 'isChecked', externalStaticPropertyReader: () => SemanticsFlag.isChecked),
      'isCheckStateMixed': VmProxy(identifier: 'isCheckStateMixed', externalStaticPropertyReader: () => SemanticsFlag.isCheckStateMixed),
      'isEnabled': VmProxy(identifier: 'isEnabled', externalStaticPropertyReader: () => SemanticsFlag.isEnabled),
      'isFocusable': VmProxy(identifier: 'isFocusable', externalStaticPropertyReader: () => SemanticsFlag.isFocusable),
      'isFocused': VmProxy(identifier: 'isFocused', externalStaticPropertyReader: () => SemanticsFlag.isFocused),
      'isHeader': VmProxy(identifier: 'isHeader', externalStaticPropertyReader: () => SemanticsFlag.isHeader),
      'isHidden': VmProxy(identifier: 'isHidden', externalStaticPropertyReader: () => SemanticsFlag.isHidden),
      'isImage': VmProxy(identifier: 'isImage', externalStaticPropertyReader: () => SemanticsFlag.isImage),
      'isInMutuallyExclusiveGroup': VmProxy(identifier: 'isInMutuallyExclusiveGroup', externalStaticPropertyReader: () => SemanticsFlag.isInMutuallyExclusiveGroup),
      'isKeyboardKey': VmProxy(identifier: 'isKeyboardKey', externalStaticPropertyReader: () => SemanticsFlag.isKeyboardKey),
      'isLink': VmProxy(identifier: 'isLink', externalStaticPropertyReader: () => SemanticsFlag.isLink),
      'isLiveRegion': VmProxy(identifier: 'isLiveRegion', externalStaticPropertyReader: () => SemanticsFlag.isLiveRegion),
      'isMultiline': VmProxy(identifier: 'isMultiline', externalStaticPropertyReader: () => SemanticsFlag.isMultiline),
      'isObscured': VmProxy(identifier: 'isObscured', externalStaticPropertyReader: () => SemanticsFlag.isObscured),
      'isReadOnly': VmProxy(identifier: 'isReadOnly', externalStaticPropertyReader: () => SemanticsFlag.isReadOnly),
      'isSelected': VmProxy(identifier: 'isSelected', externalStaticPropertyReader: () => SemanticsFlag.isSelected),
      'isSlider': VmProxy(identifier: 'isSlider', externalStaticPropertyReader: () => SemanticsFlag.isSlider),
      'isTextField': VmProxy(identifier: 'isTextField', externalStaticPropertyReader: () => SemanticsFlag.isTextField),
      'isToggled': VmProxy(identifier: 'isToggled', externalStaticPropertyReader: () => SemanticsFlag.isToggled),
      'namesRoute': VmProxy(identifier: 'namesRoute', externalStaticPropertyReader: () => SemanticsFlag.namesRoute),
      'scopesRoute': VmProxy(identifier: 'scopesRoute', externalStaticPropertyReader: () => SemanticsFlag.scopesRoute),
      'values': VmProxy(identifier: 'values', externalStaticPropertyReader: () => SemanticsFlag.values),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SemanticsFlag instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (SemanticsFlag instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (SemanticsFlag instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SemanticsFlag instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SemanticsFlag instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SemanticsFlag instance) => instance.toString),
    },
  );

  ///class SemanticsUpdate
  static final classSemanticsUpdate = VmClass<SemanticsUpdate>(
    identifier: 'SemanticsUpdate',
    superclassNames: ['Object'],
    externalProxyMap: {
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (SemanticsUpdate instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SemanticsUpdate instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SemanticsUpdate instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SemanticsUpdate instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SemanticsUpdate instance) => instance.toString),
    },
  );

  ///class SemanticsUpdateBuilder
  static final classSemanticsUpdateBuilder = VmClass<SemanticsUpdateBuilder>(
    identifier: 'SemanticsUpdateBuilder',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => SemanticsUpdateBuilder.new),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (SemanticsUpdateBuilder instance) => instance.build),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SemanticsUpdateBuilder instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SemanticsUpdateBuilder instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SemanticsUpdateBuilder instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SemanticsUpdateBuilder instance) => instance.toString),
      'updateCustomAction': VmProxy(identifier: 'updateCustomAction', externalInstancePropertyReader: (SemanticsUpdateBuilder instance) => instance.updateCustomAction),
      'updateNode': VmProxy(identifier: 'updateNode', externalInstancePropertyReader: (SemanticsUpdateBuilder instance) => instance.updateNode),
    },
  );

  ///class Shader
  static final classShader = VmClass<Shader>(
    identifier: 'Shader',
    superclassNames: ['Object', 'NativeFieldWrapperClass1'],
    externalProxyMap: {
      'debugDisposed': VmProxy(identifier: 'debugDisposed', externalInstancePropertyReader: (Shader instance) => instance.debugDisposed),
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (Shader instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Shader instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Shader instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Shader instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Shader instance) => instance.toString),
    },
  );

  ///class ShaderMaskEngineLayer
  static final classShaderMaskEngineLayer = VmClass<ShaderMaskEngineLayer>(
    identifier: 'ShaderMaskEngineLayer',
    superclassNames: ['Object', 'EngineLayer', '_EngineLayerWrapper'],
    externalProxyMap: {
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (ShaderMaskEngineLayer instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ShaderMaskEngineLayer instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ShaderMaskEngineLayer instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ShaderMaskEngineLayer instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ShaderMaskEngineLayer instance) => instance.toString),
    },
  );

  ///class Shadow
  static final classShadow = VmClass<Shadow>(
    identifier: 'Shadow',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => Shadow.new),
      'convertRadiusToSigma': VmProxy(identifier: 'convertRadiusToSigma', externalStaticPropertyReader: () => Shadow.convertRadiusToSigma),
      'lerp': VmProxy(identifier: 'lerp', externalStaticPropertyReader: () => Shadow.lerp),
      'lerpList': VmProxy(identifier: 'lerpList', externalStaticPropertyReader: () => Shadow.lerpList),
      'blurRadius': VmProxy(identifier: 'blurRadius', externalInstancePropertyReader: (Shadow instance) => instance.blurRadius),
      'blurSigma': VmProxy(identifier: 'blurSigma', externalInstancePropertyReader: (Shadow instance) => instance.blurSigma),
      'color': VmProxy(identifier: 'color', externalInstancePropertyReader: (Shadow instance) => instance.color),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Shadow instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Shadow instance) => instance.noSuchMethod),
      'offset': VmProxy(identifier: 'offset', externalInstancePropertyReader: (Shadow instance) => instance.offset),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Shadow instance) => instance.runtimeType),
      'scale': VmProxy(identifier: 'scale', externalInstancePropertyReader: (Shadow instance) => instance.scale),
      'toPaint': VmProxy(identifier: 'toPaint', externalInstancePropertyReader: (Shadow instance) => instance.toPaint),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Shadow instance) => instance.toString),
    },
  );

  ///class SingletonFlutterWindow
  static final classSingletonFlutterWindow = VmClass<SingletonFlutterWindow>(
    identifier: 'SingletonFlutterWindow',
    superclassNames: ['Object', 'FlutterView'],
    externalProxyMap: {
      'accessibilityFeatures': VmProxy(identifier: 'accessibilityFeatures', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.accessibilityFeatures),
      'alwaysUse24HourFormat': VmProxy(identifier: 'alwaysUse24HourFormat', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.alwaysUse24HourFormat),
      'brieflyShowPassword': VmProxy(identifier: 'brieflyShowPassword', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.brieflyShowPassword),
      'computePlatformResolvedLocale': VmProxy(identifier: 'computePlatformResolvedLocale', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.computePlatformResolvedLocale),
      'defaultRouteName': VmProxy(identifier: 'defaultRouteName', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.defaultRouteName),
      'devicePixelRatio': VmProxy(identifier: 'devicePixelRatio', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.devicePixelRatio),
      'display': VmProxy(identifier: 'display', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.display),
      'displayFeatures': VmProxy(identifier: 'displayFeatures', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.displayFeatures),
      'frameData': VmProxy(identifier: 'frameData', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.frameData),
      'gestureSettings': VmProxy(identifier: 'gestureSettings', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.gestureSettings),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.hashCode),
      'initialLifecycleState': VmProxy(identifier: 'initialLifecycleState', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.initialLifecycleState),
      'locale': VmProxy(identifier: 'locale', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.locale),
      'locales': VmProxy(identifier: 'locales', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.locales),
      'nativeSpellCheckServiceDefined': VmProxy(identifier: 'nativeSpellCheckServiceDefined', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.nativeSpellCheckServiceDefined),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.noSuchMethod),
      'onAccessibilityFeaturesChanged': VmProxy(identifier: 'onAccessibilityFeaturesChanged', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.onAccessibilityFeaturesChanged, externalInstancePropertyWriter: (SingletonFlutterWindow instance, value) => instance.onAccessibilityFeaturesChanged = value),
      'onBeginFrame': VmProxy(identifier: 'onBeginFrame', externalInstancePropertyWriter: (SingletonFlutterWindow instance, value) => instance.onBeginFrame = value, externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.onBeginFrame),
      'onDrawFrame': VmProxy(identifier: 'onDrawFrame', externalInstancePropertyWriter: (SingletonFlutterWindow instance, value) => instance.onDrawFrame = value, externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.onDrawFrame),
      'onFrameDataChanged': VmProxy(identifier: 'onFrameDataChanged', externalInstancePropertyWriter: (SingletonFlutterWindow instance, value) => instance.onFrameDataChanged = value, externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.onFrameDataChanged),
      'onKeyData': VmProxy(identifier: 'onKeyData', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.onKeyData, externalInstancePropertyWriter: (SingletonFlutterWindow instance, value) => instance.onKeyData = value),
      'onLocaleChanged': VmProxy(identifier: 'onLocaleChanged', externalInstancePropertyWriter: (SingletonFlutterWindow instance, value) => instance.onLocaleChanged = value, externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.onLocaleChanged),
      'onMetricsChanged': VmProxy(identifier: 'onMetricsChanged', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.onMetricsChanged, externalInstancePropertyWriter: (SingletonFlutterWindow instance, value) => instance.onMetricsChanged = value),
      'onPlatformBrightnessChanged': VmProxy(identifier: 'onPlatformBrightnessChanged', externalInstancePropertyWriter: (SingletonFlutterWindow instance, value) => instance.onPlatformBrightnessChanged = value, externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.onPlatformBrightnessChanged),
      'onPlatformMessage': VmProxy(identifier: 'onPlatformMessage', externalInstancePropertyWriter: (SingletonFlutterWindow instance, value) => instance.onPlatformMessage = value, externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.onPlatformMessage),
      'onPointerDataPacket': VmProxy(identifier: 'onPointerDataPacket', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.onPointerDataPacket, externalInstancePropertyWriter: (SingletonFlutterWindow instance, value) => instance.onPointerDataPacket = value),
      'onReportTimings': VmProxy(identifier: 'onReportTimings', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.onReportTimings, externalInstancePropertyWriter: (SingletonFlutterWindow instance, value) => instance.onReportTimings = value),
      'onSemanticsEnabledChanged': VmProxy(identifier: 'onSemanticsEnabledChanged', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.onSemanticsEnabledChanged, externalInstancePropertyWriter: (SingletonFlutterWindow instance, value) => instance.onSemanticsEnabledChanged = value),
      'onSystemFontFamilyChanged': VmProxy(identifier: 'onSystemFontFamilyChanged', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.onSystemFontFamilyChanged, externalInstancePropertyWriter: (SingletonFlutterWindow instance, value) => instance.onSystemFontFamilyChanged = value),
      'onTextScaleFactorChanged': VmProxy(identifier: 'onTextScaleFactorChanged', externalInstancePropertyWriter: (SingletonFlutterWindow instance, value) => instance.onTextScaleFactorChanged = value, externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.onTextScaleFactorChanged),
      'padding': VmProxy(identifier: 'padding', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.padding),
      'physicalGeometry': VmProxy(identifier: 'physicalGeometry', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.physicalGeometry),
      'physicalSize': VmProxy(identifier: 'physicalSize', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.physicalSize),
      'platformBrightness': VmProxy(identifier: 'platformBrightness', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.platformBrightness),
      'platformDispatcher': VmProxy(identifier: 'platformDispatcher', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.platformDispatcher),
      'render': VmProxy(identifier: 'render', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.render),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.runtimeType),
      'scheduleFrame': VmProxy(identifier: 'scheduleFrame', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.scheduleFrame),
      'semanticsEnabled': VmProxy(identifier: 'semanticsEnabled', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.semanticsEnabled),
      'sendPlatformMessage': VmProxy(identifier: 'sendPlatformMessage', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.sendPlatformMessage, externalInstanceFunctionCaller: (SingletonFlutterWindow instance, a0, a1, a2) => instance.sendPlatformMessage(a0, a1, a2 == null ? null : (b0) => a2(b0))),
      'setIsolateDebugName': VmProxy(identifier: 'setIsolateDebugName', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.setIsolateDebugName),
      'systemFontFamily': VmProxy(identifier: 'systemFontFamily', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.systemFontFamily),
      'systemGestureInsets': VmProxy(identifier: 'systemGestureInsets', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.systemGestureInsets),
      'textScaleFactor': VmProxy(identifier: 'textScaleFactor', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.textScaleFactor),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.toString),
      'updateSemantics': VmProxy(identifier: 'updateSemantics', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.updateSemantics),
      'viewId': VmProxy(identifier: 'viewId', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.viewId),
      'viewInsets': VmProxy(identifier: 'viewInsets', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.viewInsets),
      'viewPadding': VmProxy(identifier: 'viewPadding', externalInstancePropertyReader: (SingletonFlutterWindow instance) => instance.viewPadding),
    },
  );

  ///class Size
  static final classSize = VmClass<Size>(
    identifier: 'Size',
    superclassNames: ['Object', 'OffsetBase'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => Size.new),
      'copy': VmProxy(identifier: 'copy', externalStaticPropertyReader: () => Size.copy),
      'fromHeight': VmProxy(identifier: 'fromHeight', externalStaticPropertyReader: () => Size.fromHeight),
      'fromRadius': VmProxy(identifier: 'fromRadius', externalStaticPropertyReader: () => Size.fromRadius),
      'fromWidth': VmProxy(identifier: 'fromWidth', externalStaticPropertyReader: () => Size.fromWidth),
      'square': VmProxy(identifier: 'square', externalStaticPropertyReader: () => Size.square),
      'infinite': VmProxy(identifier: 'infinite', externalStaticPropertyReader: () => Size.infinite),
      'lerp': VmProxy(identifier: 'lerp', externalStaticPropertyReader: () => Size.lerp),
      'zero': VmProxy(identifier: 'zero', externalStaticPropertyReader: () => Size.zero),
      'aspectRatio': VmProxy(identifier: 'aspectRatio', externalInstancePropertyReader: (Size instance) => instance.aspectRatio),
      'bottomCenter': VmProxy(identifier: 'bottomCenter', externalInstancePropertyReader: (Size instance) => instance.bottomCenter),
      'bottomLeft': VmProxy(identifier: 'bottomLeft', externalInstancePropertyReader: (Size instance) => instance.bottomLeft),
      'bottomRight': VmProxy(identifier: 'bottomRight', externalInstancePropertyReader: (Size instance) => instance.bottomRight),
      'center': VmProxy(identifier: 'center', externalInstancePropertyReader: (Size instance) => instance.center),
      'centerLeft': VmProxy(identifier: 'centerLeft', externalInstancePropertyReader: (Size instance) => instance.centerLeft),
      'centerRight': VmProxy(identifier: 'centerRight', externalInstancePropertyReader: (Size instance) => instance.centerRight),
      'contains': VmProxy(identifier: 'contains', externalInstancePropertyReader: (Size instance) => instance.contains),
      'flipped': VmProxy(identifier: 'flipped', externalInstancePropertyReader: (Size instance) => instance.flipped),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Size instance) => instance.hashCode),
      'height': VmProxy(identifier: 'height', externalInstancePropertyReader: (Size instance) => instance.height),
      'isEmpty': VmProxy(identifier: 'isEmpty', externalInstancePropertyReader: (Size instance) => instance.isEmpty),
      'isFinite': VmProxy(identifier: 'isFinite', externalInstancePropertyReader: (Size instance) => instance.isFinite),
      'isInfinite': VmProxy(identifier: 'isInfinite', externalInstancePropertyReader: (Size instance) => instance.isInfinite),
      'longestSide': VmProxy(identifier: 'longestSide', externalInstancePropertyReader: (Size instance) => instance.longestSide),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Size instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Size instance) => instance.runtimeType),
      'shortestSide': VmProxy(identifier: 'shortestSide', externalInstancePropertyReader: (Size instance) => instance.shortestSide),
      'topCenter': VmProxy(identifier: 'topCenter', externalInstancePropertyReader: (Size instance) => instance.topCenter),
      'topLeft': VmProxy(identifier: 'topLeft', externalInstancePropertyReader: (Size instance) => instance.topLeft),
      'topRight': VmProxy(identifier: 'topRight', externalInstancePropertyReader: (Size instance) => instance.topRight),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Size instance) => instance.toString),
      'width': VmProxy(identifier: 'width', externalInstancePropertyReader: (Size instance) => instance.width),
    },
  );

  ///class SpellOutStringAttribute
  static final classSpellOutStringAttribute = VmClass<SpellOutStringAttribute>(
    identifier: 'SpellOutStringAttribute',
    superclassNames: ['Object', 'NativeFieldWrapperClass1', 'StringAttribute'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => SpellOutStringAttribute.new),
      'copy': VmProxy(identifier: 'copy', externalInstancePropertyReader: (SpellOutStringAttribute instance) => instance.copy),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SpellOutStringAttribute instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SpellOutStringAttribute instance) => instance.noSuchMethod),
      'range': VmProxy(identifier: 'range', externalInstancePropertyReader: (SpellOutStringAttribute instance) => instance.range),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SpellOutStringAttribute instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SpellOutStringAttribute instance) => instance.toString),
    },
  );

  ///class StringAttribute
  static final classStringAttribute = VmClass<StringAttribute>(
    identifier: 'StringAttribute',
    superclassNames: ['Object', 'NativeFieldWrapperClass1'],
    externalProxyMap: {
      'copy': VmProxy(identifier: 'copy', externalInstancePropertyReader: (StringAttribute instance) => instance.copy),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (StringAttribute instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (StringAttribute instance) => instance.noSuchMethod),
      'range': VmProxy(identifier: 'range', externalInstancePropertyReader: (StringAttribute instance) => instance.range),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (StringAttribute instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (StringAttribute instance) => instance.toString),
    },
  );

  ///class StrokeCap
  static final classStrokeCap = VmClass<StrokeCap>(
    identifier: 'StrokeCap',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'butt': VmProxy(identifier: 'butt', externalStaticPropertyReader: () => StrokeCap.butt),
      'round': VmProxy(identifier: 'round', externalStaticPropertyReader: () => StrokeCap.round),
      'square': VmProxy(identifier: 'square', externalStaticPropertyReader: () => StrokeCap.square),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (StrokeCap instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (StrokeCap instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (StrokeCap instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (StrokeCap instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (StrokeCap instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (StrokeCap instance) => instance.toString),
    },
  );

  ///class StrokeJoin
  static final classStrokeJoin = VmClass<StrokeJoin>(
    identifier: 'StrokeJoin',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'bevel': VmProxy(identifier: 'bevel', externalStaticPropertyReader: () => StrokeJoin.bevel),
      'miter': VmProxy(identifier: 'miter', externalStaticPropertyReader: () => StrokeJoin.miter),
      'round': VmProxy(identifier: 'round', externalStaticPropertyReader: () => StrokeJoin.round),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (StrokeJoin instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (StrokeJoin instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (StrokeJoin instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (StrokeJoin instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (StrokeJoin instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (StrokeJoin instance) => instance.toString),
    },
  );

  ///class Tangent
  static final classTangent = VmClass<Tangent>(
    identifier: 'Tangent',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => Tangent.new),
      'fromAngle': VmProxy(identifier: 'fromAngle', externalStaticPropertyReader: () => Tangent.fromAngle),
      'angle': VmProxy(identifier: 'angle', externalInstancePropertyReader: (Tangent instance) => instance.angle),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Tangent instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Tangent instance) => instance.noSuchMethod),
      'position': VmProxy(identifier: 'position', externalInstancePropertyReader: (Tangent instance) => instance.position),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Tangent instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Tangent instance) => instance.toString),
      'vector': VmProxy(identifier: 'vector', externalInstancePropertyReader: (Tangent instance) => instance.vector),
    },
  );

  ///class TargetImageSize
  static final classTargetImageSize = VmClass<TargetImageSize>(
    identifier: 'TargetImageSize',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => TargetImageSize.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (TargetImageSize instance) => instance.hashCode),
      'height': VmProxy(identifier: 'height', externalInstancePropertyReader: (TargetImageSize instance) => instance.height),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (TargetImageSize instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (TargetImageSize instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (TargetImageSize instance) => instance.toString),
      'width': VmProxy(identifier: 'width', externalInstancePropertyReader: (TargetImageSize instance) => instance.width),
    },
  );

  ///class TextAffinity
  static final classTextAffinity = VmClass<TextAffinity>(
    identifier: 'TextAffinity',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'downstream': VmProxy(identifier: 'downstream', externalStaticPropertyReader: () => TextAffinity.downstream),
      'upstream': VmProxy(identifier: 'upstream', externalStaticPropertyReader: () => TextAffinity.upstream),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (TextAffinity instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (TextAffinity instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (TextAffinity instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (TextAffinity instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (TextAffinity instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (TextAffinity instance) => instance.toString),
    },
  );

  ///class TextAlign
  static final classTextAlign = VmClass<TextAlign>(
    identifier: 'TextAlign',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'center': VmProxy(identifier: 'center', externalStaticPropertyReader: () => TextAlign.center),
      'end': VmProxy(identifier: 'end', externalStaticPropertyReader: () => TextAlign.end),
      'justify': VmProxy(identifier: 'justify', externalStaticPropertyReader: () => TextAlign.justify),
      'left': VmProxy(identifier: 'left', externalStaticPropertyReader: () => TextAlign.left),
      'right': VmProxy(identifier: 'right', externalStaticPropertyReader: () => TextAlign.right),
      'start': VmProxy(identifier: 'start', externalStaticPropertyReader: () => TextAlign.start),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (TextAlign instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (TextAlign instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (TextAlign instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (TextAlign instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (TextAlign instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (TextAlign instance) => instance.toString),
    },
  );

  ///class TextBaseline
  static final classTextBaseline = VmClass<TextBaseline>(
    identifier: 'TextBaseline',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'alphabetic': VmProxy(identifier: 'alphabetic', externalStaticPropertyReader: () => TextBaseline.alphabetic),
      'ideographic': VmProxy(identifier: 'ideographic', externalStaticPropertyReader: () => TextBaseline.ideographic),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (TextBaseline instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (TextBaseline instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (TextBaseline instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (TextBaseline instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (TextBaseline instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (TextBaseline instance) => instance.toString),
    },
  );

  ///class TextBox
  static final classTextBox = VmClass<TextBox>(
    identifier: 'TextBox',
    superclassNames: ['Object'],
    externalProxyMap: {
      'fromLTRBD': VmProxy(identifier: 'fromLTRBD', externalStaticPropertyReader: () => TextBox.fromLTRBD),
      'bottom': VmProxy(identifier: 'bottom', externalInstancePropertyReader: (TextBox instance) => instance.bottom),
      'direction': VmProxy(identifier: 'direction', externalInstancePropertyReader: (TextBox instance) => instance.direction),
      'end': VmProxy(identifier: 'end', externalInstancePropertyReader: (TextBox instance) => instance.end),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (TextBox instance) => instance.hashCode),
      'left': VmProxy(identifier: 'left', externalInstancePropertyReader: (TextBox instance) => instance.left),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (TextBox instance) => instance.noSuchMethod),
      'right': VmProxy(identifier: 'right', externalInstancePropertyReader: (TextBox instance) => instance.right),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (TextBox instance) => instance.runtimeType),
      'start': VmProxy(identifier: 'start', externalInstancePropertyReader: (TextBox instance) => instance.start),
      'top': VmProxy(identifier: 'top', externalInstancePropertyReader: (TextBox instance) => instance.top),
      'toRect': VmProxy(identifier: 'toRect', externalInstancePropertyReader: (TextBox instance) => instance.toRect),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (TextBox instance) => instance.toString),
    },
  );

  ///class TextDecoration
  static final classTextDecoration = VmClass<TextDecoration>(
    identifier: 'TextDecoration',
    superclassNames: ['Object'],
    externalProxyMap: {
      'combine': VmProxy(identifier: 'combine', externalStaticPropertyReader: () => TextDecoration.combine),
      'lineThrough': VmProxy(identifier: 'lineThrough', externalStaticPropertyReader: () => TextDecoration.lineThrough),
      'none': VmProxy(identifier: 'none', externalStaticPropertyReader: () => TextDecoration.none),
      'overline': VmProxy(identifier: 'overline', externalStaticPropertyReader: () => TextDecoration.overline),
      'underline': VmProxy(identifier: 'underline', externalStaticPropertyReader: () => TextDecoration.underline),
      'contains': VmProxy(identifier: 'contains', externalInstancePropertyReader: (TextDecoration instance) => instance.contains),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (TextDecoration instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (TextDecoration instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (TextDecoration instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (TextDecoration instance) => instance.toString),
    },
  );

  ///class TextDecorationStyle
  static final classTextDecorationStyle = VmClass<TextDecorationStyle>(
    identifier: 'TextDecorationStyle',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'dashed': VmProxy(identifier: 'dashed', externalStaticPropertyReader: () => TextDecorationStyle.dashed),
      'dotted': VmProxy(identifier: 'dotted', externalStaticPropertyReader: () => TextDecorationStyle.dotted),
      'double': VmProxy(identifier: 'double', externalStaticPropertyReader: () => TextDecorationStyle.double),
      'solid': VmProxy(identifier: 'solid', externalStaticPropertyReader: () => TextDecorationStyle.solid),
      'wavy': VmProxy(identifier: 'wavy', externalStaticPropertyReader: () => TextDecorationStyle.wavy),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (TextDecorationStyle instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (TextDecorationStyle instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (TextDecorationStyle instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (TextDecorationStyle instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (TextDecorationStyle instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (TextDecorationStyle instance) => instance.toString),
    },
  );

  ///class TextDirection
  static final classTextDirection = VmClass<TextDirection>(
    identifier: 'TextDirection',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'ltr': VmProxy(identifier: 'ltr', externalStaticPropertyReader: () => TextDirection.ltr),
      'rtl': VmProxy(identifier: 'rtl', externalStaticPropertyReader: () => TextDirection.rtl),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (TextDirection instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (TextDirection instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (TextDirection instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (TextDirection instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (TextDirection instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (TextDirection instance) => instance.toString),
    },
  );

  ///class TextHeightBehavior
  static final classTextHeightBehavior = VmClass<TextHeightBehavior>(
    identifier: 'TextHeightBehavior',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => TextHeightBehavior.new),
      'applyHeightToFirstAscent': VmProxy(identifier: 'applyHeightToFirstAscent', externalInstancePropertyReader: (TextHeightBehavior instance) => instance.applyHeightToFirstAscent),
      'applyHeightToLastDescent': VmProxy(identifier: 'applyHeightToLastDescent', externalInstancePropertyReader: (TextHeightBehavior instance) => instance.applyHeightToLastDescent),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (TextHeightBehavior instance) => instance.hashCode),
      'leadingDistribution': VmProxy(identifier: 'leadingDistribution', externalInstancePropertyReader: (TextHeightBehavior instance) => instance.leadingDistribution),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (TextHeightBehavior instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (TextHeightBehavior instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (TextHeightBehavior instance) => instance.toString),
    },
  );

  ///class TextLeadingDistribution
  static final classTextLeadingDistribution = VmClass<TextLeadingDistribution>(
    identifier: 'TextLeadingDistribution',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'even': VmProxy(identifier: 'even', externalStaticPropertyReader: () => TextLeadingDistribution.even),
      'proportional': VmProxy(identifier: 'proportional', externalStaticPropertyReader: () => TextLeadingDistribution.proportional),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (TextLeadingDistribution instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (TextLeadingDistribution instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (TextLeadingDistribution instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (TextLeadingDistribution instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (TextLeadingDistribution instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (TextLeadingDistribution instance) => instance.toString),
    },
  );

  ///class TextPosition
  static final classTextPosition = VmClass<TextPosition>(
    identifier: 'TextPosition',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => TextPosition.new),
      'affinity': VmProxy(identifier: 'affinity', externalInstancePropertyReader: (TextPosition instance) => instance.affinity),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (TextPosition instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (TextPosition instance) => instance.noSuchMethod),
      'offset': VmProxy(identifier: 'offset', externalInstancePropertyReader: (TextPosition instance) => instance.offset),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (TextPosition instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (TextPosition instance) => instance.toString),
    },
  );

  ///class TextRange
  static final classTextRange = VmClass<TextRange>(
    identifier: 'TextRange',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => TextRange.new),
      'collapsed': VmProxy(identifier: 'collapsed', externalStaticPropertyReader: () => TextRange.collapsed),
      'empty': VmProxy(identifier: 'empty', externalStaticPropertyReader: () => TextRange.empty),
      'end': VmProxy(identifier: 'end', externalInstancePropertyReader: (TextRange instance) => instance.end),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (TextRange instance) => instance.hashCode),
      'isCollapsed': VmProxy(identifier: 'isCollapsed', externalInstancePropertyReader: (TextRange instance) => instance.isCollapsed),
      'isNormalized': VmProxy(identifier: 'isNormalized', externalInstancePropertyReader: (TextRange instance) => instance.isNormalized),
      'isValid': VmProxy(identifier: 'isValid', externalInstancePropertyReader: (TextRange instance) => instance.isValid),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (TextRange instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (TextRange instance) => instance.runtimeType),
      'start': VmProxy(identifier: 'start', externalInstancePropertyReader: (TextRange instance) => instance.start),
      'textAfter': VmProxy(identifier: 'textAfter', externalInstancePropertyReader: (TextRange instance) => instance.textAfter),
      'textBefore': VmProxy(identifier: 'textBefore', externalInstancePropertyReader: (TextRange instance) => instance.textBefore),
      'textInside': VmProxy(identifier: 'textInside', externalInstancePropertyReader: (TextRange instance) => instance.textInside),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (TextRange instance) => instance.toString),
    },
  );

  ///class TileMode
  static final classTileMode = VmClass<TileMode>(
    identifier: 'TileMode',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'clamp': VmProxy(identifier: 'clamp', externalStaticPropertyReader: () => TileMode.clamp),
      'decal': VmProxy(identifier: 'decal', externalStaticPropertyReader: () => TileMode.decal),
      'mirror': VmProxy(identifier: 'mirror', externalStaticPropertyReader: () => TileMode.mirror),
      'repeated': VmProxy(identifier: 'repeated', externalStaticPropertyReader: () => TileMode.repeated),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (TileMode instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (TileMode instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (TileMode instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (TileMode instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (TileMode instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (TileMode instance) => instance.toString),
    },
  );

  ///class TransformEngineLayer
  static final classTransformEngineLayer = VmClass<TransformEngineLayer>(
    identifier: 'TransformEngineLayer',
    superclassNames: ['Object', 'EngineLayer', '_EngineLayerWrapper'],
    externalProxyMap: {
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (TransformEngineLayer instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (TransformEngineLayer instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (TransformEngineLayer instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (TransformEngineLayer instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (TransformEngineLayer instance) => instance.toString),
    },
  );

  ///class VertexMode
  static final classVertexMode = VmClass<VertexMode>(
    identifier: 'VertexMode',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'triangleFan': VmProxy(identifier: 'triangleFan', externalStaticPropertyReader: () => VertexMode.triangleFan),
      'triangles': VmProxy(identifier: 'triangles', externalStaticPropertyReader: () => VertexMode.triangles),
      'triangleStrip': VmProxy(identifier: 'triangleStrip', externalStaticPropertyReader: () => VertexMode.triangleStrip),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (VertexMode instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (VertexMode instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (VertexMode instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (VertexMode instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (VertexMode instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (VertexMode instance) => instance.toString),
    },
  );

  ///class Vertices
  static final classVertices = VmClass<Vertices>(
    identifier: 'Vertices',
    superclassNames: ['Object', 'NativeFieldWrapperClass1'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => Vertices.new),
      'raw': VmProxy(identifier: 'raw', externalStaticPropertyReader: () => Vertices.raw),
      'debugDisposed': VmProxy(identifier: 'debugDisposed', externalInstancePropertyReader: (Vertices instance) => instance.debugDisposed),
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (Vertices instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Vertices instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Vertices instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Vertices instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Vertices instance) => instance.toString),
    },
  );

  ///class ViewPadding
  static final classViewPadding = VmClass<ViewPadding>(
    identifier: 'ViewPadding',
    superclassNames: ['Object'],
    externalProxyMap: {
      'zero': VmProxy(identifier: 'zero', externalStaticPropertyReader: () => ViewPadding.zero),
      'bottom': VmProxy(identifier: 'bottom', externalInstancePropertyReader: (ViewPadding instance) => instance.bottom),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ViewPadding instance) => instance.hashCode),
      'left': VmProxy(identifier: 'left', externalInstancePropertyReader: (ViewPadding instance) => instance.left),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ViewPadding instance) => instance.noSuchMethod),
      'right': VmProxy(identifier: 'right', externalInstancePropertyReader: (ViewPadding instance) => instance.right),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ViewPadding instance) => instance.runtimeType),
      'top': VmProxy(identifier: 'top', externalInstancePropertyReader: (ViewPadding instance) => instance.top),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ViewPadding instance) => instance.toString),
    },
  );

  ///class WindowPadding
  static final classWindowPadding = VmClass<WindowPadding>(
    identifier: 'WindowPadding',
    superclassNames: ['Object', 'ViewPadding'],
    externalProxyMap: {
      'bottom': VmProxy(identifier: 'bottom', externalInstancePropertyReader: (WindowPadding instance) => instance.bottom),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (WindowPadding instance) => instance.hashCode),
      'left': VmProxy(identifier: 'left', externalInstancePropertyReader: (WindowPadding instance) => instance.left),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (WindowPadding instance) => instance.noSuchMethod),
      'right': VmProxy(identifier: 'right', externalInstancePropertyReader: (WindowPadding instance) => instance.right),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (WindowPadding instance) => instance.runtimeType),
      'top': VmProxy(identifier: 'top', externalInstancePropertyReader: (WindowPadding instance) => instance.top),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (WindowPadding instance) => instance.toString),
    },
  );

  ///all class list
  static final libraryClassList = <VmClass>[
    classAccessibilityFeatures,
    classAppExitResponse,
    classAppExitType,
    classAppLifecycleState,
    classBackdropFilterEngineLayer,
    classBlendMode,
    classBlurStyle,
    classBoxHeightStyle,
    classBoxWidthStyle,
    classBrightness,
    classCallbackHandle,
    classCanvas,
    classChannelBuffers,
    classClip,
    classClipOp,
    classClipPathEngineLayer,
    classClipRectEngineLayer,
    classClipRRectEngineLayer,
    classColor,
    classColorFilter,
    classColorFilterEngineLayer,
    classColorSpace,
    classDartPerformanceMode,
    classDartPluginRegistrant,
    classDisplay,
    classDisplayFeature,
    classDisplayFeatureState,
    classDisplayFeatureType,
    classEngineLayer,
    classFilterQuality,
    classFlutterView,
    classFontFeature,
    classFontStyle,
    classFontVariation,
    classFontWeight,
    classFragmentProgram,
    classFragmentShader,
    classFrameData,
    classFrameInfo,
    classFramePhase,
    classFrameTiming,
    classGestureSettings,
    classImageByteFormat,
    classImageDescriptor,
    classImageFilter,
    classImageFilterEngineLayer,
    classImageShader,
    classImmutableBuffer,
    classIsolateNameServer,
    classKeyData,
    classKeyEventType,
    classLineMetrics,
    classLocale,
    classLocaleStringAttribute,
    classMaskFilter,
    classOffset,
    classOffsetBase,
    classOffsetEngineLayer,
    classOpacityEngineLayer,
    classPaint,
    classPaintingStyle,
    classParagraph,
    classParagraphBuilder,
    classParagraphConstraints,
    classParagraphStyle,
    classPath,
    classPathFillType,
    classPathMetric,
    classPathMetricIterator,
    classPathMetrics,
    classPathOperation,
    classPicture,
    classPictureRasterizationException,
    classPictureRecorder,
    classPixelFormat,
    classPlaceholderAlignment,
    classPlatformDispatcher,
    classPluginUtilities,
    classPointerChange,
    classPointerData,
    classPointerDataPacket,
    classPointerDeviceKind,
    classPointerSignalKind,
    classPointMode,
    classRadius,
    classRect,
    classRootIsolateToken,
    classRRect,
    classRSTransform,
    classScene,
    classSceneBuilder,
    classSemanticsAction,
    classSemanticsActionEvent,
    classSemanticsFlag,
    classSemanticsUpdate,
    classSemanticsUpdateBuilder,
    classShader,
    classShaderMaskEngineLayer,
    classShadow,
    classSingletonFlutterWindow,
    classSize,
    classSpellOutStringAttribute,
    classStringAttribute,
    classStrokeCap,
    classStrokeJoin,
    classTangent,
    classTargetImageSize,
    classTextAffinity,
    classTextAlign,
    classTextBaseline,
    classTextBox,
    classTextDecoration,
    classTextDecorationStyle,
    classTextDirection,
    classTextHeightBehavior,
    classTextLeadingDistribution,
    classTextPosition,
    classTextRange,
    classTileMode,
    classTransformEngineLayer,
    classVertexMode,
    classVertices,
    classViewPadding,
    classWindowPadding,
  ];

  ///all proxy list
  static final libraryProxyList = <VmProxy<void>>[
    VmProxy(identifier: 'channelBuffers', externalStaticPropertyReader: () => channelBuffers),
    VmProxy(identifier: 'decodeImageFromPixels', externalStaticPropertyReader: () => decodeImageFromPixels, externalStaticFunctionCaller: (a0, a1, a2, a3, a4, {rowBytes, targetWidth, targetHeight, allowUpscaling = true}) => decodeImageFromPixels(a0, a1, a2, a3, (b0) => a4(b0), rowBytes: rowBytes, targetWidth: targetWidth, targetHeight: targetHeight, allowUpscaling: allowUpscaling)),
    VmProxy(identifier: 'hashList', externalStaticPropertyReader: () => hashList),
    VmProxy(identifier: 'hashValues', externalStaticPropertyReader: () => hashValues),
    VmProxy(identifier: 'instantiateImageCodec', externalStaticPropertyReader: () => instantiateImageCodec),
    VmProxy(identifier: 'instantiateImageCodecFromBuffer', externalStaticPropertyReader: () => instantiateImageCodecFromBuffer),
    VmProxy(identifier: 'instantiateImageCodecWithSize', externalStaticPropertyReader: () => instantiateImageCodecWithSize, externalStaticFunctionCaller: (a0, {getTargetSize}) => instantiateImageCodecWithSize(a0, getTargetSize: getTargetSize == null ? null : (b0, b1) => getTargetSize(b0, b1))),
    VmProxy(identifier: 'keepToString', externalStaticPropertyReader: () => keepToString),
    VmProxy(identifier: 'lerpDouble', externalStaticPropertyReader: () => lerpDouble),
    VmProxy(identifier: 'loadFontFromList', externalStaticPropertyReader: () => loadFontFromList),
    VmProxy(identifier: 'saveCompilationTrace', externalStaticPropertyReader: () => saveCompilationTrace),
    VmProxy(identifier: 'window', externalStaticPropertyReader: () => window),
  ];
}
