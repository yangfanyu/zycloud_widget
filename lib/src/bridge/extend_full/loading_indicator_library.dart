// ignore_for_file: avoid_function_literals_in_foreach_calls
// ignore_for_file: deprecated_member_use
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: unnecessary_constructor_name

import 'package:shelf_easy/shelf_easy.dart';
import 'package:loading_indicator/loading_indicator.dart';

///
///loading_indicator库桥接类
///
class LoadingIndicatorLibrary {
  ///class Indicator
  static final classIndicator = VmClass<Indicator>(
    identifier: 'Indicator',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'audioEqualizer': VmProxy(identifier: 'audioEqualizer', externalStaticPropertyReader: () => Indicator.audioEqualizer),
      'ballBeat': VmProxy(identifier: 'ballBeat', externalStaticPropertyReader: () => Indicator.ballBeat),
      'ballClipRotate': VmProxy(identifier: 'ballClipRotate', externalStaticPropertyReader: () => Indicator.ballClipRotate),
      'ballClipRotateMultiple': VmProxy(identifier: 'ballClipRotateMultiple', externalStaticPropertyReader: () => Indicator.ballClipRotateMultiple),
      'ballClipRotatePulse': VmProxy(identifier: 'ballClipRotatePulse', externalStaticPropertyReader: () => Indicator.ballClipRotatePulse),
      'ballGridBeat': VmProxy(identifier: 'ballGridBeat', externalStaticPropertyReader: () => Indicator.ballGridBeat),
      'ballGridPulse': VmProxy(identifier: 'ballGridPulse', externalStaticPropertyReader: () => Indicator.ballGridPulse),
      'ballPulse': VmProxy(identifier: 'ballPulse', externalStaticPropertyReader: () => Indicator.ballPulse),
      'ballPulseRise': VmProxy(identifier: 'ballPulseRise', externalStaticPropertyReader: () => Indicator.ballPulseRise),
      'ballPulseSync': VmProxy(identifier: 'ballPulseSync', externalStaticPropertyReader: () => Indicator.ballPulseSync),
      'ballRotate': VmProxy(identifier: 'ballRotate', externalStaticPropertyReader: () => Indicator.ballRotate),
      'ballRotateChase': VmProxy(identifier: 'ballRotateChase', externalStaticPropertyReader: () => Indicator.ballRotateChase),
      'ballScale': VmProxy(identifier: 'ballScale', externalStaticPropertyReader: () => Indicator.ballScale),
      'ballScaleMultiple': VmProxy(identifier: 'ballScaleMultiple', externalStaticPropertyReader: () => Indicator.ballScaleMultiple),
      'ballScaleRipple': VmProxy(identifier: 'ballScaleRipple', externalStaticPropertyReader: () => Indicator.ballScaleRipple),
      'ballScaleRippleMultiple': VmProxy(identifier: 'ballScaleRippleMultiple', externalStaticPropertyReader: () => Indicator.ballScaleRippleMultiple),
      'ballSpinFadeLoader': VmProxy(identifier: 'ballSpinFadeLoader', externalStaticPropertyReader: () => Indicator.ballSpinFadeLoader),
      'ballTrianglePath': VmProxy(identifier: 'ballTrianglePath', externalStaticPropertyReader: () => Indicator.ballTrianglePath),
      'ballTrianglePathColored': VmProxy(identifier: 'ballTrianglePathColored', externalStaticPropertyReader: () => Indicator.ballTrianglePathColored),
      'ballTrianglePathColoredFilled': VmProxy(identifier: 'ballTrianglePathColoredFilled', externalStaticPropertyReader: () => Indicator.ballTrianglePathColoredFilled),
      'ballZigZag': VmProxy(identifier: 'ballZigZag', externalStaticPropertyReader: () => Indicator.ballZigZag),
      'ballZigZagDeflect': VmProxy(identifier: 'ballZigZagDeflect', externalStaticPropertyReader: () => Indicator.ballZigZagDeflect),
      'circleStrokeSpin': VmProxy(identifier: 'circleStrokeSpin', externalStaticPropertyReader: () => Indicator.circleStrokeSpin),
      'cubeTransition': VmProxy(identifier: 'cubeTransition', externalStaticPropertyReader: () => Indicator.cubeTransition),
      'lineScale': VmProxy(identifier: 'lineScale', externalStaticPropertyReader: () => Indicator.lineScale),
      'lineScaleParty': VmProxy(identifier: 'lineScaleParty', externalStaticPropertyReader: () => Indicator.lineScaleParty),
      'lineScalePulseOut': VmProxy(identifier: 'lineScalePulseOut', externalStaticPropertyReader: () => Indicator.lineScalePulseOut),
      'lineScalePulseOutRapid': VmProxy(identifier: 'lineScalePulseOutRapid', externalStaticPropertyReader: () => Indicator.lineScalePulseOutRapid),
      'lineSpinFadeLoader': VmProxy(identifier: 'lineSpinFadeLoader', externalStaticPropertyReader: () => Indicator.lineSpinFadeLoader),
      'orbit': VmProxy(identifier: 'orbit', externalStaticPropertyReader: () => Indicator.orbit),
      'pacman': VmProxy(identifier: 'pacman', externalStaticPropertyReader: () => Indicator.pacman),
      'semiCircleSpin': VmProxy(identifier: 'semiCircleSpin', externalStaticPropertyReader: () => Indicator.semiCircleSpin),
      'squareSpin': VmProxy(identifier: 'squareSpin', externalStaticPropertyReader: () => Indicator.squareSpin),
      'triangleSkewSpin': VmProxy(identifier: 'triangleSkewSpin', externalStaticPropertyReader: () => Indicator.triangleSkewSpin),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Indicator instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (Indicator instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (Indicator instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Indicator instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Indicator instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Indicator instance) => instance.toString),
    },
  );

  ///class LoadingIndicator
  static final classLoadingIndicator = VmClass<LoadingIndicator>(
    identifier: 'LoadingIndicator',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatelessWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => LoadingIndicator.new),
      'backgroundColor': VmProxy(identifier: 'backgroundColor', externalInstancePropertyReader: (LoadingIndicator instance) => instance.backgroundColor),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (LoadingIndicator instance) => instance.build),
      'colors': VmProxy(identifier: 'colors', externalInstancePropertyReader: (LoadingIndicator instance) => instance.colors),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (LoadingIndicator instance) => instance.createElement),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (LoadingIndicator instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (LoadingIndicator instance) => instance.debugFillProperties),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (LoadingIndicator instance) => instance.hashCode),
      'indicatorType': VmProxy(identifier: 'indicatorType', externalInstancePropertyReader: (LoadingIndicator instance) => instance.indicatorType),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (LoadingIndicator instance) => instance.key),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (LoadingIndicator instance) => instance.noSuchMethod),
      'pathBackgroundColor': VmProxy(identifier: 'pathBackgroundColor', externalInstancePropertyReader: (LoadingIndicator instance) => instance.pathBackgroundColor),
      'pause': VmProxy(identifier: 'pause', externalInstancePropertyReader: (LoadingIndicator instance) => instance.pause),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (LoadingIndicator instance) => instance.runtimeType),
      'strokeWidth': VmProxy(identifier: 'strokeWidth', externalInstancePropertyReader: (LoadingIndicator instance) => instance.strokeWidth),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (LoadingIndicator instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (LoadingIndicator instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (LoadingIndicator instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (LoadingIndicator instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (LoadingIndicator instance) => instance.toStringShort),
    },
  );

  ///all class list
  static final libraryClassList = <VmClass>[
    classIndicator,
    classLoadingIndicator,
  ];

  ///all proxy list
  static final libraryProxyList = <VmProxy<void>>[];
}
