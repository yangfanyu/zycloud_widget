// ignore_for_file: avoid_function_literals_in_foreach_calls
// ignore_for_file: deprecated_member_use
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: unnecessary_constructor_name

import 'package:shelf_easy/shelf_easy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

///
///flutter_slidable库桥接类
///
class FlutterSlidableLibrary {
  ///class ActionPane
  static final classActionPane = VmClass<ActionPane>(
    identifier: 'ActionPane',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatefulWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => ActionPane.new),
      'of': VmProxy(identifier: 'of', externalStaticPropertyReader: () => ActionPane.of),
      'children': VmProxy(identifier: 'children', externalInstancePropertyReader: (ActionPane instance) => instance.children),
      'closeThreshold': VmProxy(identifier: 'closeThreshold', externalInstancePropertyReader: (ActionPane instance) => instance.closeThreshold),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (ActionPane instance) => instance.createElement),
      'createState': VmProxy(identifier: 'createState', externalInstancePropertyReader: (ActionPane instance) => instance.createState),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (ActionPane instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (ActionPane instance) => instance.debugFillProperties),
      'dismissible': VmProxy(identifier: 'dismissible', externalInstancePropertyReader: (ActionPane instance) => instance.dismissible),
      'dragDismissible': VmProxy(identifier: 'dragDismissible', externalInstancePropertyReader: (ActionPane instance) => instance.dragDismissible),
      'extentRatio': VmProxy(identifier: 'extentRatio', externalInstancePropertyReader: (ActionPane instance) => instance.extentRatio),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ActionPane instance) => instance.hashCode),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (ActionPane instance) => instance.key),
      'motion': VmProxy(identifier: 'motion', externalInstancePropertyReader: (ActionPane instance) => instance.motion),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ActionPane instance) => instance.noSuchMethod),
      'openThreshold': VmProxy(identifier: 'openThreshold', externalInstancePropertyReader: (ActionPane instance) => instance.openThreshold),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ActionPane instance) => instance.runtimeType),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (ActionPane instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ActionPane instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (ActionPane instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (ActionPane instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (ActionPane instance) => instance.toStringShort),
    },
  );

  ///class ActionPaneData
  static final classActionPaneData = VmClass<ActionPaneData>(
    identifier: 'ActionPaneData',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => ActionPaneData.new),
      'alignment': VmProxy(identifier: 'alignment', externalInstancePropertyReader: (ActionPaneData instance) => instance.alignment),
      'children': VmProxy(identifier: 'children', externalInstancePropertyReader: (ActionPaneData instance) => instance.children),
      'direction': VmProxy(identifier: 'direction', externalInstancePropertyReader: (ActionPaneData instance) => instance.direction),
      'extentRatio': VmProxy(identifier: 'extentRatio', externalInstancePropertyReader: (ActionPaneData instance) => instance.extentRatio),
      'fromStart': VmProxy(identifier: 'fromStart', externalInstancePropertyReader: (ActionPaneData instance) => instance.fromStart),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ActionPaneData instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ActionPaneData instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ActionPaneData instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ActionPaneData instance) => instance.toString),
    },
  );

  ///class ActionPaneType
  static final classActionPaneType = VmClass<ActionPaneType>(
    identifier: 'ActionPaneType',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'end': VmProxy(identifier: 'end', externalStaticPropertyReader: () => ActionPaneType.end),
      'none': VmProxy(identifier: 'none', externalStaticPropertyReader: () => ActionPaneType.none),
      'start': VmProxy(identifier: 'start', externalStaticPropertyReader: () => ActionPaneType.start),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ActionPaneType instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (ActionPaneType instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (ActionPaneType instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ActionPaneType instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ActionPaneType instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ActionPaneType instance) => instance.toString),
    },
  );

  ///class BehindMotion
  static final classBehindMotion = VmClass<BehindMotion>(
    identifier: 'BehindMotion',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatelessWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => BehindMotion.new),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (BehindMotion instance) => instance.build),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (BehindMotion instance) => instance.createElement),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (BehindMotion instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (BehindMotion instance) => instance.debugFillProperties),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (BehindMotion instance) => instance.hashCode),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (BehindMotion instance) => instance.key),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (BehindMotion instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (BehindMotion instance) => instance.runtimeType),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (BehindMotion instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (BehindMotion instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (BehindMotion instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (BehindMotion instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (BehindMotion instance) => instance.toStringShort),
    },
  );

  ///class CustomSlidableAction
  static final classCustomSlidableAction = VmClass<CustomSlidableAction>(
    identifier: 'CustomSlidableAction',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatelessWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => CustomSlidableAction.new, externalStaticFunctionCaller: ({key, flex = _kFlex, backgroundColor = _kBackgroundColor, foregroundColor, autoClose = _kAutoClose, borderRadius = BorderRadius.zero, padding, onPressed, child}) => CustomSlidableAction.new(key: key, flex: flex, backgroundColor: backgroundColor, foregroundColor: foregroundColor, autoClose: autoClose, borderRadius: borderRadius, padding: padding, onPressed: onPressed == null ? null : (b0) => onPressed(b0), child: child)),
      'autoClose': VmProxy(identifier: 'autoClose', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.autoClose),
      'backgroundColor': VmProxy(identifier: 'backgroundColor', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.backgroundColor),
      'borderRadius': VmProxy(identifier: 'borderRadius', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.borderRadius),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.build),
      'child': VmProxy(identifier: 'child', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.child),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.createElement),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.debugFillProperties),
      'flex': VmProxy(identifier: 'flex', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.flex),
      'foregroundColor': VmProxy(identifier: 'foregroundColor', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.foregroundColor),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.hashCode),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.key),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.noSuchMethod),
      'onPressed': VmProxy(identifier: 'onPressed', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.onPressed),
      'padding': VmProxy(identifier: 'padding', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.padding),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.runtimeType),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (CustomSlidableAction instance) => instance.toStringShort),
    },
  );

  ///class DismissiblePane
  static final classDismissiblePane = VmClass<DismissiblePane>(
    identifier: 'DismissiblePane',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatefulWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => DismissiblePane.new, externalStaticFunctionCaller: ({key, onDismissed, dismissThreshold = _kDismissThreshold, dismissalDuration = _kDismissalDuration, resizeDuration = _kResizeDuration, confirmDismiss, closeOnCancel = false, motion = const InversedDrawerMotion()}) => DismissiblePane.new(key: key, onDismissed: onDismissed, dismissThreshold: dismissThreshold, dismissalDuration: dismissalDuration, resizeDuration: resizeDuration, confirmDismiss: confirmDismiss == null ? null : () => confirmDismiss(), closeOnCancel: closeOnCancel, motion: motion)),
      'closeOnCancel': VmProxy(identifier: 'closeOnCancel', externalInstancePropertyReader: (DismissiblePane instance) => instance.closeOnCancel),
      'confirmDismiss': VmProxy(identifier: 'confirmDismiss', externalInstancePropertyReader: (DismissiblePane instance) => instance.confirmDismiss),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (DismissiblePane instance) => instance.createElement),
      'createState': VmProxy(identifier: 'createState', externalInstancePropertyReader: (DismissiblePane instance) => instance.createState),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (DismissiblePane instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (DismissiblePane instance) => instance.debugFillProperties),
      'dismissalDuration': VmProxy(identifier: 'dismissalDuration', externalInstancePropertyReader: (DismissiblePane instance) => instance.dismissalDuration),
      'dismissThreshold': VmProxy(identifier: 'dismissThreshold', externalInstancePropertyReader: (DismissiblePane instance) => instance.dismissThreshold),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (DismissiblePane instance) => instance.hashCode),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (DismissiblePane instance) => instance.key),
      'motion': VmProxy(identifier: 'motion', externalInstancePropertyReader: (DismissiblePane instance) => instance.motion),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (DismissiblePane instance) => instance.noSuchMethod),
      'onDismissed': VmProxy(identifier: 'onDismissed', externalInstancePropertyReader: (DismissiblePane instance) => instance.onDismissed),
      'resizeDuration': VmProxy(identifier: 'resizeDuration', externalInstancePropertyReader: (DismissiblePane instance) => instance.resizeDuration),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (DismissiblePane instance) => instance.runtimeType),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (DismissiblePane instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (DismissiblePane instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (DismissiblePane instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (DismissiblePane instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (DismissiblePane instance) => instance.toStringShort),
    },
  );

  ///class DrawerMotion
  static final classDrawerMotion = VmClass<DrawerMotion>(
    identifier: 'DrawerMotion',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatelessWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => DrawerMotion.new),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (DrawerMotion instance) => instance.build),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (DrawerMotion instance) => instance.createElement),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (DrawerMotion instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (DrawerMotion instance) => instance.debugFillProperties),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (DrawerMotion instance) => instance.hashCode),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (DrawerMotion instance) => instance.key),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (DrawerMotion instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (DrawerMotion instance) => instance.runtimeType),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (DrawerMotion instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (DrawerMotion instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (DrawerMotion instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (DrawerMotion instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (DrawerMotion instance) => instance.toStringShort),
    },
  );

  ///class InversedDrawerMotion
  static final classInversedDrawerMotion = VmClass<InversedDrawerMotion>(
    identifier: 'InversedDrawerMotion',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatelessWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => InversedDrawerMotion.new),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (InversedDrawerMotion instance) => instance.build),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (InversedDrawerMotion instance) => instance.createElement),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (InversedDrawerMotion instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (InversedDrawerMotion instance) => instance.debugFillProperties),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (InversedDrawerMotion instance) => instance.hashCode),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (InversedDrawerMotion instance) => instance.key),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (InversedDrawerMotion instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (InversedDrawerMotion instance) => instance.runtimeType),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (InversedDrawerMotion instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (InversedDrawerMotion instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (InversedDrawerMotion instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (InversedDrawerMotion instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (InversedDrawerMotion instance) => instance.toStringShort),
    },
  );

  ///class ResizeRequest
  static final classResizeRequest = VmClass<ResizeRequest>(
    identifier: 'ResizeRequest',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => ResizeRequest.new),
      'duration': VmProxy(identifier: 'duration', externalInstancePropertyReader: (ResizeRequest instance) => instance.duration),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ResizeRequest instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ResizeRequest instance) => instance.noSuchMethod),
      'onDismissed': VmProxy(identifier: 'onDismissed', externalInstancePropertyReader: (ResizeRequest instance) => instance.onDismissed),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ResizeRequest instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ResizeRequest instance) => instance.toString),
    },
  );

  ///class ScrollMotion
  static final classScrollMotion = VmClass<ScrollMotion>(
    identifier: 'ScrollMotion',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatelessWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => ScrollMotion.new),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (ScrollMotion instance) => instance.build),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (ScrollMotion instance) => instance.createElement),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (ScrollMotion instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (ScrollMotion instance) => instance.debugFillProperties),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ScrollMotion instance) => instance.hashCode),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (ScrollMotion instance) => instance.key),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ScrollMotion instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ScrollMotion instance) => instance.runtimeType),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (ScrollMotion instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ScrollMotion instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (ScrollMotion instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (ScrollMotion instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (ScrollMotion instance) => instance.toStringShort),
    },
  );

  ///class Slidable
  static final classSlidable = VmClass<Slidable>(
    identifier: 'Slidable',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatefulWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => Slidable.new),
      'of': VmProxy(identifier: 'of', externalStaticPropertyReader: () => Slidable.of),
      'child': VmProxy(identifier: 'child', externalInstancePropertyReader: (Slidable instance) => instance.child),
      'closeOnScroll': VmProxy(identifier: 'closeOnScroll', externalInstancePropertyReader: (Slidable instance) => instance.closeOnScroll),
      'controller': VmProxy(identifier: 'controller', externalInstancePropertyReader: (Slidable instance) => instance.controller),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (Slidable instance) => instance.createElement),
      'createState': VmProxy(identifier: 'createState', externalInstancePropertyReader: (Slidable instance) => instance.createState),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (Slidable instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (Slidable instance) => instance.debugFillProperties),
      'direction': VmProxy(identifier: 'direction', externalInstancePropertyReader: (Slidable instance) => instance.direction),
      'dragStartBehavior': VmProxy(identifier: 'dragStartBehavior', externalInstancePropertyReader: (Slidable instance) => instance.dragStartBehavior),
      'enabled': VmProxy(identifier: 'enabled', externalInstancePropertyReader: (Slidable instance) => instance.enabled),
      'endActionPane': VmProxy(identifier: 'endActionPane', externalInstancePropertyReader: (Slidable instance) => instance.endActionPane),
      'groupTag': VmProxy(identifier: 'groupTag', externalInstancePropertyReader: (Slidable instance) => instance.groupTag),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Slidable instance) => instance.hashCode),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (Slidable instance) => instance.key),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Slidable instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Slidable instance) => instance.runtimeType),
      'startActionPane': VmProxy(identifier: 'startActionPane', externalInstancePropertyReader: (Slidable instance) => instance.startActionPane),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (Slidable instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Slidable instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (Slidable instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (Slidable instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (Slidable instance) => instance.toStringShort),
      'useTextDirection': VmProxy(identifier: 'useTextDirection', externalInstancePropertyReader: (Slidable instance) => instance.useTextDirection),
    },
  );

  ///class SlidableAction
  static final classSlidableAction = VmClass<SlidableAction>(
    identifier: 'SlidableAction',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatelessWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => SlidableAction.new, externalStaticFunctionCaller: ({key, flex = _kFlex, backgroundColor = _kBackgroundColor, foregroundColor, autoClose = _kAutoClose, onPressed, icon, spacing = 4.0, label, borderRadius = BorderRadius.zero, padding}) => SlidableAction.new(key: key, flex: flex, backgroundColor: backgroundColor, foregroundColor: foregroundColor, autoClose: autoClose, onPressed: onPressed == null ? null : (b0) => onPressed(b0), icon: icon, spacing: spacing, label: label, borderRadius: borderRadius, padding: padding)),
      'autoClose': VmProxy(identifier: 'autoClose', externalInstancePropertyReader: (SlidableAction instance) => instance.autoClose),
      'backgroundColor': VmProxy(identifier: 'backgroundColor', externalInstancePropertyReader: (SlidableAction instance) => instance.backgroundColor),
      'borderRadius': VmProxy(identifier: 'borderRadius', externalInstancePropertyReader: (SlidableAction instance) => instance.borderRadius),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (SlidableAction instance) => instance.build),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (SlidableAction instance) => instance.createElement),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (SlidableAction instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (SlidableAction instance) => instance.debugFillProperties),
      'flex': VmProxy(identifier: 'flex', externalInstancePropertyReader: (SlidableAction instance) => instance.flex),
      'foregroundColor': VmProxy(identifier: 'foregroundColor', externalInstancePropertyReader: (SlidableAction instance) => instance.foregroundColor),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SlidableAction instance) => instance.hashCode),
      'icon': VmProxy(identifier: 'icon', externalInstancePropertyReader: (SlidableAction instance) => instance.icon),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (SlidableAction instance) => instance.key),
      'label': VmProxy(identifier: 'label', externalInstancePropertyReader: (SlidableAction instance) => instance.label),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SlidableAction instance) => instance.noSuchMethod),
      'onPressed': VmProxy(identifier: 'onPressed', externalInstancePropertyReader: (SlidableAction instance) => instance.onPressed),
      'padding': VmProxy(identifier: 'padding', externalInstancePropertyReader: (SlidableAction instance) => instance.padding),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SlidableAction instance) => instance.runtimeType),
      'spacing': VmProxy(identifier: 'spacing', externalInstancePropertyReader: (SlidableAction instance) => instance.spacing),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (SlidableAction instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SlidableAction instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (SlidableAction instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (SlidableAction instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (SlidableAction instance) => instance.toStringShort),
    },
  );

  ///class SlidableAutoCloseBehavior
  static final classSlidableAutoCloseBehavior = VmClass<SlidableAutoCloseBehavior>(
    identifier: 'SlidableAutoCloseBehavior',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatefulWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => SlidableAutoCloseBehavior.new),
      'child': VmProxy(identifier: 'child', externalInstancePropertyReader: (SlidableAutoCloseBehavior instance) => instance.child),
      'closeWhenOpened': VmProxy(identifier: 'closeWhenOpened', externalInstancePropertyReader: (SlidableAutoCloseBehavior instance) => instance.closeWhenOpened),
      'closeWhenTapped': VmProxy(identifier: 'closeWhenTapped', externalInstancePropertyReader: (SlidableAutoCloseBehavior instance) => instance.closeWhenTapped),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (SlidableAutoCloseBehavior instance) => instance.createElement),
      'createState': VmProxy(identifier: 'createState', externalInstancePropertyReader: (SlidableAutoCloseBehavior instance) => instance.createState),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (SlidableAutoCloseBehavior instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (SlidableAutoCloseBehavior instance) => instance.debugFillProperties),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SlidableAutoCloseBehavior instance) => instance.hashCode),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (SlidableAutoCloseBehavior instance) => instance.key),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SlidableAutoCloseBehavior instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SlidableAutoCloseBehavior instance) => instance.runtimeType),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (SlidableAutoCloseBehavior instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SlidableAutoCloseBehavior instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (SlidableAutoCloseBehavior instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (SlidableAutoCloseBehavior instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (SlidableAutoCloseBehavior instance) => instance.toStringShort),
    },
  );

  ///class SlidableAutoCloseNotification
  static final classSlidableAutoCloseNotification = VmClass<SlidableAutoCloseNotification>(
    identifier: 'SlidableAutoCloseNotification',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => SlidableAutoCloseNotification.new),
      'closeSelf': VmProxy(identifier: 'closeSelf', externalInstancePropertyReader: (SlidableAutoCloseNotification instance) => instance.closeSelf),
      'controller': VmProxy(identifier: 'controller', externalInstancePropertyReader: (SlidableAutoCloseNotification instance) => instance.controller),
      'groupTag': VmProxy(identifier: 'groupTag', externalInstancePropertyReader: (SlidableAutoCloseNotification instance) => instance.groupTag),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SlidableAutoCloseNotification instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SlidableAutoCloseNotification instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SlidableAutoCloseNotification instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SlidableAutoCloseNotification instance) => instance.toString),
    },
  );

  ///class SlidableController
  static final classSlidableController = VmClass<SlidableController>(
    identifier: 'SlidableController',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => SlidableController.new),
      'actionPaneConfigurator': VmProxy(identifier: 'actionPaneConfigurator', externalInstancePropertyReader: (SlidableController instance) => instance.actionPaneConfigurator, externalInstancePropertyWriter: (SlidableController instance, value) => instance.actionPaneConfigurator = value),
      'actionPaneType': VmProxy(identifier: 'actionPaneType', externalInstancePropertyReader: (SlidableController instance) => instance.actionPaneType),
      'animation': VmProxy(identifier: 'animation', externalInstancePropertyReader: (SlidableController instance) => instance.animation),
      'close': VmProxy(identifier: 'close', externalInstancePropertyReader: (SlidableController instance) => instance.close),
      'closing': VmProxy(identifier: 'closing', externalInstancePropertyReader: (SlidableController instance) => instance.closing),
      'direction': VmProxy(identifier: 'direction', externalInstancePropertyReader: (SlidableController instance) => instance.direction),
      'dismiss': VmProxy(identifier: 'dismiss', externalInstancePropertyReader: (SlidableController instance) => instance.dismiss),
      'dismissGesture': VmProxy(identifier: 'dismissGesture', externalInstancePropertyReader: (SlidableController instance) => instance.dismissGesture),
      'dispatchEndGesture': VmProxy(identifier: 'dispatchEndGesture', externalInstancePropertyReader: (SlidableController instance) => instance.dispatchEndGesture),
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (SlidableController instance) => instance.dispose),
      'enableEndActionPane': VmProxy(identifier: 'enableEndActionPane', externalInstancePropertyReader: (SlidableController instance) => instance.enableEndActionPane, externalInstancePropertyWriter: (SlidableController instance, value) => instance.enableEndActionPane = value),
      'enableNegativeActionPane': VmProxy(identifier: 'enableNegativeActionPane', externalInstancePropertyReader: (SlidableController instance) => instance.enableNegativeActionPane),
      'enablePositiveActionPane': VmProxy(identifier: 'enablePositiveActionPane', externalInstancePropertyReader: (SlidableController instance) => instance.enablePositiveActionPane),
      'enableStartActionPane': VmProxy(identifier: 'enableStartActionPane', externalInstancePropertyReader: (SlidableController instance) => instance.enableStartActionPane, externalInstancePropertyWriter: (SlidableController instance, value) => instance.enableStartActionPane = value),
      'endActionPaneExtentRatio': VmProxy(identifier: 'endActionPaneExtentRatio', externalInstancePropertyReader: (SlidableController instance) => instance.endActionPaneExtentRatio, externalInstancePropertyWriter: (SlidableController instance, value) => instance.endActionPaneExtentRatio = value),
      'endGesture': VmProxy(identifier: 'endGesture', externalInstancePropertyReader: (SlidableController instance) => instance.endGesture),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SlidableController instance) => instance.hashCode),
      'isDismissibleReady': VmProxy(identifier: 'isDismissibleReady', externalInstancePropertyReader: (SlidableController instance) => instance.isDismissibleReady),
      'isLeftToRight': VmProxy(identifier: 'isLeftToRight', externalInstancePropertyReader: (SlidableController instance) => instance.isLeftToRight, externalInstancePropertyWriter: (SlidableController instance, value) => instance.isLeftToRight = value),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SlidableController instance) => instance.noSuchMethod),
      'openCurrentActionPane': VmProxy(identifier: 'openCurrentActionPane', externalInstancePropertyReader: (SlidableController instance) => instance.openCurrentActionPane),
      'openEndActionPane': VmProxy(identifier: 'openEndActionPane', externalInstancePropertyReader: (SlidableController instance) => instance.openEndActionPane),
      'openStartActionPane': VmProxy(identifier: 'openStartActionPane', externalInstancePropertyReader: (SlidableController instance) => instance.openStartActionPane),
      'openTo': VmProxy(identifier: 'openTo', externalInstancePropertyReader: (SlidableController instance) => instance.openTo),
      'ratio': VmProxy(identifier: 'ratio', externalInstancePropertyWriter: (SlidableController instance, value) => instance.ratio = value, externalInstancePropertyReader: (SlidableController instance) => instance.ratio),
      'resizeRequest': VmProxy(identifier: 'resizeRequest', externalInstancePropertyReader: (SlidableController instance) => instance.resizeRequest),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SlidableController instance) => instance.runtimeType),
      'startActionPaneExtentRatio': VmProxy(identifier: 'startActionPaneExtentRatio', externalInstancePropertyWriter: (SlidableController instance, value) => instance.startActionPaneExtentRatio = value, externalInstancePropertyReader: (SlidableController instance) => instance.startActionPaneExtentRatio),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SlidableController instance) => instance.toString),
    },
  );

  ///class SlidableGroupBehavior
  static final classSlidableGroupBehavior = VmClass<SlidableGroupBehavior>(
    identifier: 'SlidableGroupBehavior',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatefulWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => SlidableGroupBehavior.new, externalStaticFunctionCaller: ({key, onNotification, child}) => SlidableGroupBehavior.new(key: key, onNotification: onNotification == null ? null : (b0) => onNotification(b0), child: child)),
      'child': VmProxy(identifier: 'child', externalInstancePropertyReader: (SlidableGroupBehavior instance) => instance.child),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (SlidableGroupBehavior instance) => instance.createElement),
      'createState': VmProxy(identifier: 'createState', externalInstancePropertyReader: (SlidableGroupBehavior instance) => instance.createState),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (SlidableGroupBehavior instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (SlidableGroupBehavior instance) => instance.debugFillProperties),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SlidableGroupBehavior instance) => instance.hashCode),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (SlidableGroupBehavior instance) => instance.key),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SlidableGroupBehavior instance) => instance.noSuchMethod),
      'onNotification': VmProxy(identifier: 'onNotification', externalInstancePropertyReader: (SlidableGroupBehavior instance) => instance.onNotification),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SlidableGroupBehavior instance) => instance.runtimeType),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (SlidableGroupBehavior instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SlidableGroupBehavior instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (SlidableGroupBehavior instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (SlidableGroupBehavior instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (SlidableGroupBehavior instance) => instance.toStringShort),
    },
  );

  ///class SlidableGroupBehaviorListener
  static final classSlidableGroupBehaviorListener = VmClass<SlidableGroupBehaviorListener>(
    identifier: 'SlidableGroupBehaviorListener',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatefulWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => SlidableGroupBehaviorListener.new, externalStaticFunctionCaller: ({key, onNotification, child}) => SlidableGroupBehaviorListener.new(key: key, onNotification: (b0) => onNotification(b0), child: child)),
      'child': VmProxy(identifier: 'child', externalInstancePropertyReader: (SlidableGroupBehaviorListener instance) => instance.child),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (SlidableGroupBehaviorListener instance) => instance.createElement),
      'createState': VmProxy(identifier: 'createState', externalInstancePropertyReader: (SlidableGroupBehaviorListener instance) => instance.createState),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (SlidableGroupBehaviorListener instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (SlidableGroupBehaviorListener instance) => instance.debugFillProperties),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SlidableGroupBehaviorListener instance) => instance.hashCode),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (SlidableGroupBehaviorListener instance) => instance.key),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SlidableGroupBehaviorListener instance) => instance.noSuchMethod),
      'onNotification': VmProxy(identifier: 'onNotification', externalInstancePropertyReader: (SlidableGroupBehaviorListener instance) => instance.onNotification),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SlidableGroupBehaviorListener instance) => instance.runtimeType),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (SlidableGroupBehaviorListener instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SlidableGroupBehaviorListener instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (SlidableGroupBehaviorListener instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (SlidableGroupBehaviorListener instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (SlidableGroupBehaviorListener instance) => instance.toStringShort),
    },
  );

  ///class SlidableGroupNotification
  static final classSlidableGroupNotification = VmClass<SlidableGroupNotification>(
    identifier: 'SlidableGroupNotification',
    superclassNames: ['Object'],
    externalProxyMap: {
      'createDispatcher': VmProxy(identifier: 'createDispatcher', externalStaticPropertyReader: () => SlidableGroupNotification.createDispatcher),
      'dispatch': VmProxy(identifier: 'dispatch', externalStaticPropertyReader: () => SlidableGroupNotification.dispatch),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SlidableGroupNotification instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SlidableGroupNotification instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SlidableGroupNotification instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SlidableGroupNotification instance) => instance.toString),
    },
  );

  ///class SlidableGroupNotificationDispatcher
  static final classSlidableGroupNotificationDispatcher = VmClass<SlidableGroupNotificationDispatcher>(
    identifier: 'SlidableGroupNotificationDispatcher',
    superclassNames: ['Object'],
    externalProxyMap: {
      'dispatch': VmProxy(identifier: 'dispatch', externalInstancePropertyReader: (SlidableGroupNotificationDispatcher instance) => instance.dispatch),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SlidableGroupNotificationDispatcher instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SlidableGroupNotificationDispatcher instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SlidableGroupNotificationDispatcher instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SlidableGroupNotificationDispatcher instance) => instance.toString),
    },
  );

  ///class SlidableNotification
  static final classSlidableNotification = VmClass<SlidableNotification>(
    identifier: 'SlidableNotification',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => SlidableNotification.new),
      'dispatch': VmProxy(identifier: 'dispatch', externalInstancePropertyReader: (SlidableNotification instance) => instance.dispatch),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SlidableNotification instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SlidableNotification instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SlidableNotification instance) => instance.runtimeType),
      'tag': VmProxy(identifier: 'tag', externalInstancePropertyReader: (SlidableNotification instance) => instance.tag),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SlidableNotification instance) => instance.toString),
    },
  );

  ///class SlidableNotificationListener
  static final classSlidableNotificationListener = VmClass<SlidableNotificationListener>(
    identifier: 'SlidableNotificationListener',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatefulWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => SlidableNotificationListener.new, externalStaticFunctionCaller: ({key, onNotification, autoClose = true, child}) => SlidableNotificationListener.new(key: key, onNotification: onNotification == null ? null : (b0) => onNotification(b0), autoClose: autoClose, child: child)),
      'autoClose': VmProxy(identifier: 'autoClose', externalInstancePropertyReader: (SlidableNotificationListener instance) => instance.autoClose),
      'child': VmProxy(identifier: 'child', externalInstancePropertyReader: (SlidableNotificationListener instance) => instance.child),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (SlidableNotificationListener instance) => instance.createElement),
      'createState': VmProxy(identifier: 'createState', externalInstancePropertyReader: (SlidableNotificationListener instance) => instance.createState),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (SlidableNotificationListener instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (SlidableNotificationListener instance) => instance.debugFillProperties),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SlidableNotificationListener instance) => instance.hashCode),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (SlidableNotificationListener instance) => instance.key),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SlidableNotificationListener instance) => instance.noSuchMethod),
      'onNotification': VmProxy(identifier: 'onNotification', externalInstancePropertyReader: (SlidableNotificationListener instance) => instance.onNotification),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SlidableNotificationListener instance) => instance.runtimeType),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (SlidableNotificationListener instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SlidableNotificationListener instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (SlidableNotificationListener instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (SlidableNotificationListener instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (SlidableNotificationListener instance) => instance.toStringShort),
    },
  );

  ///class SlidableRatioNotification
  static final classSlidableRatioNotification = VmClass<SlidableRatioNotification>(
    identifier: 'SlidableRatioNotification',
    superclassNames: ['Object', 'SlidableNotification'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => SlidableRatioNotification.new),
      'dispatch': VmProxy(identifier: 'dispatch', externalInstancePropertyReader: (SlidableRatioNotification instance) => instance.dispatch),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SlidableRatioNotification instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SlidableRatioNotification instance) => instance.noSuchMethod),
      'ratio': VmProxy(identifier: 'ratio', externalInstancePropertyReader: (SlidableRatioNotification instance) => instance.ratio),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SlidableRatioNotification instance) => instance.runtimeType),
      'tag': VmProxy(identifier: 'tag', externalInstancePropertyReader: (SlidableRatioNotification instance) => instance.tag),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SlidableRatioNotification instance) => instance.toString),
    },
  );

  ///class StretchMotion
  static final classStretchMotion = VmClass<StretchMotion>(
    identifier: 'StretchMotion',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatelessWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => StretchMotion.new),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (StretchMotion instance) => instance.build),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (StretchMotion instance) => instance.createElement),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (StretchMotion instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (StretchMotion instance) => instance.debugFillProperties),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (StretchMotion instance) => instance.hashCode),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (StretchMotion instance) => instance.key),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (StretchMotion instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (StretchMotion instance) => instance.runtimeType),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (StretchMotion instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (StretchMotion instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (StretchMotion instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (StretchMotion instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (StretchMotion instance) => instance.toStringShort),
    },
  );

  ///all class list
  static final libraryClassList = <VmClass>[
    classActionPane,
    classActionPaneData,
    classActionPaneType,
    classBehindMotion,
    classCustomSlidableAction,
    classDismissiblePane,
    classDrawerMotion,
    classInversedDrawerMotion,
    classResizeRequest,
    classScrollMotion,
    classSlidable,
    classSlidableAction,
    classSlidableAutoCloseBehavior,
    classSlidableAutoCloseNotification,
    classSlidableController,
    classSlidableGroupBehavior,
    classSlidableGroupBehaviorListener,
    classSlidableGroupNotification,
    classSlidableGroupNotificationDispatcher,
    classSlidableNotification,
    classSlidableNotificationListener,
    classSlidableRatioNotification,
    classStretchMotion,
  ];

  ///all proxy list
  static final libraryProxyList = <VmProxy<void>>[];

  ///all private values
  static const _kFlex = 1;
  static const _kBackgroundColor = CupertinoDynamicColor.withBrightness(color: Color(0xFFF1F1F1), darkColor: Color(0xFF212122));
  static const _kAutoClose = true;
  static const _kDismissThreshold = 0.75;
  static const _kDismissalDuration = Duration(milliseconds: 300);
  static const _kResizeDuration = Duration(milliseconds: 300);
}
