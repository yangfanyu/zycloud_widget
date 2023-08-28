// ignore_for_file: avoid_function_literals_in_foreach_calls
// ignore_for_file: deprecated_member_use
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: unnecessary_constructor_name

import 'package:shelf_easy/shelf_easy.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

///
///scrollable_positioned_list库桥接类
///
class ScrollablePositionedListLibrary {
  ///class ItemPosition
  static final classItemPosition = VmClass<ItemPosition>(
    identifier: 'ItemPosition',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => ItemPosition.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ItemPosition instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (ItemPosition instance) => instance.index),
      'itemLeadingEdge': VmProxy(identifier: 'itemLeadingEdge', externalInstancePropertyReader: (ItemPosition instance) => instance.itemLeadingEdge),
      'itemTrailingEdge': VmProxy(identifier: 'itemTrailingEdge', externalInstancePropertyReader: (ItemPosition instance) => instance.itemTrailingEdge),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ItemPosition instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ItemPosition instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ItemPosition instance) => instance.toString),
    },
  );

  ///class ItemPositionsListener
  static final classItemPositionsListener = VmClass<ItemPositionsListener>(
    identifier: 'ItemPositionsListener',
    superclassNames: ['Object'],
    externalProxyMap: {
      'create': VmProxy(identifier: 'create', externalStaticPropertyReader: () => ItemPositionsListener.create),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ItemPositionsListener instance) => instance.hashCode),
      'itemPositions': VmProxy(identifier: 'itemPositions', externalInstancePropertyReader: (ItemPositionsListener instance) => instance.itemPositions),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ItemPositionsListener instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ItemPositionsListener instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ItemPositionsListener instance) => instance.toString),
    },
  );

  ///class ItemScrollController
  static final classItemScrollController = VmClass<ItemScrollController>(
    identifier: 'ItemScrollController',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => ItemScrollController.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ItemScrollController instance) => instance.hashCode),
      'isAttached': VmProxy(identifier: 'isAttached', externalInstancePropertyReader: (ItemScrollController instance) => instance.isAttached),
      'jumpTo': VmProxy(identifier: 'jumpTo', externalInstancePropertyReader: (ItemScrollController instance) => instance.jumpTo),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ItemScrollController instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ItemScrollController instance) => instance.runtimeType),
      'scrollTo': VmProxy(identifier: 'scrollTo', externalInstancePropertyReader: (ItemScrollController instance) => instance.scrollTo),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ItemScrollController instance) => instance.toString),
    },
  );

  ///class ScrollablePositionedList
  static final classScrollablePositionedList = VmClass<ScrollablePositionedList>(
    identifier: 'ScrollablePositionedList',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatefulWidget'],
    externalProxyMap: {
      'builder': VmProxy(identifier: 'builder', externalStaticPropertyReader: () => ScrollablePositionedList.builder, externalStaticFunctionCaller: ({itemCount = 0, itemBuilder, key, itemScrollController, shrinkWrap = false, itemPositionsListener, scrollOffsetController, scrollOffsetListener, initialScrollIndex = 0, initialAlignment = 0.0, scrollDirection = Axis.vertical, reverse = false, physics, semanticChildCount, padding, addSemanticIndexes = true, addAutomaticKeepAlives = true, addRepaintBoundaries = true, minCacheExtent}) => ScrollablePositionedList.builder(itemCount: itemCount, itemBuilder: (b0, b1) => itemBuilder(b0, b1), key: key, itemScrollController: itemScrollController, shrinkWrap: shrinkWrap, itemPositionsListener: itemPositionsListener, scrollOffsetController: scrollOffsetController, scrollOffsetListener: scrollOffsetListener, initialScrollIndex: initialScrollIndex, initialAlignment: initialAlignment, scrollDirection: scrollDirection, reverse: reverse, physics: physics, semanticChildCount: semanticChildCount, padding: padding, addSemanticIndexes: addSemanticIndexes, addAutomaticKeepAlives: addAutomaticKeepAlives, addRepaintBoundaries: addRepaintBoundaries, minCacheExtent: minCacheExtent)),
      'separated': VmProxy(identifier: 'separated', externalStaticPropertyReader: () => ScrollablePositionedList.separated, externalStaticFunctionCaller: ({itemCount = 0, itemBuilder, separatorBuilder, key, shrinkWrap = false, itemScrollController, itemPositionsListener, scrollOffsetController, scrollOffsetListener, initialScrollIndex = 0, initialAlignment = 0.0, scrollDirection = Axis.vertical, reverse = false, physics, semanticChildCount, padding, addSemanticIndexes = true, addAutomaticKeepAlives = true, addRepaintBoundaries = true, minCacheExtent}) => ScrollablePositionedList.separated(itemCount: itemCount, itemBuilder: (b0, b1) => itemBuilder(b0, b1), separatorBuilder: separatorBuilder == null ? null : (b0, b1) => separatorBuilder(b0, b1), key: key, shrinkWrap: shrinkWrap, itemScrollController: itemScrollController, itemPositionsListener: itemPositionsListener, scrollOffsetController: scrollOffsetController, scrollOffsetListener: scrollOffsetListener, initialScrollIndex: initialScrollIndex, initialAlignment: initialAlignment, scrollDirection: scrollDirection, reverse: reverse, physics: physics, semanticChildCount: semanticChildCount, padding: padding, addSemanticIndexes: addSemanticIndexes, addAutomaticKeepAlives: addAutomaticKeepAlives, addRepaintBoundaries: addRepaintBoundaries, minCacheExtent: minCacheExtent)),
      'addAutomaticKeepAlives': VmProxy(identifier: 'addAutomaticKeepAlives', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.addAutomaticKeepAlives),
      'addRepaintBoundaries': VmProxy(identifier: 'addRepaintBoundaries', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.addRepaintBoundaries),
      'addSemanticIndexes': VmProxy(identifier: 'addSemanticIndexes', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.addSemanticIndexes),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.createElement),
      'createState': VmProxy(identifier: 'createState', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.createState),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.debugFillProperties),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.hashCode),
      'initialAlignment': VmProxy(identifier: 'initialAlignment', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.initialAlignment),
      'initialScrollIndex': VmProxy(identifier: 'initialScrollIndex', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.initialScrollIndex),
      'itemBuilder': VmProxy(identifier: 'itemBuilder', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.itemBuilder),
      'itemCount': VmProxy(identifier: 'itemCount', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.itemCount),
      'itemPositionsNotifier': VmProxy(identifier: 'itemPositionsNotifier', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.itemPositionsNotifier),
      'itemScrollController': VmProxy(identifier: 'itemScrollController', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.itemScrollController),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.key),
      'minCacheExtent': VmProxy(identifier: 'minCacheExtent', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.minCacheExtent),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.noSuchMethod),
      'padding': VmProxy(identifier: 'padding', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.padding),
      'physics': VmProxy(identifier: 'physics', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.physics),
      'reverse': VmProxy(identifier: 'reverse', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.reverse),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.runtimeType),
      'scrollDirection': VmProxy(identifier: 'scrollDirection', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.scrollDirection),
      'scrollOffsetController': VmProxy(identifier: 'scrollOffsetController', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.scrollOffsetController),
      'scrollOffsetNotifier': VmProxy(identifier: 'scrollOffsetNotifier', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.scrollOffsetNotifier),
      'semanticChildCount': VmProxy(identifier: 'semanticChildCount', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.semanticChildCount),
      'separatorBuilder': VmProxy(identifier: 'separatorBuilder', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.separatorBuilder),
      'shrinkWrap': VmProxy(identifier: 'shrinkWrap', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.shrinkWrap),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (ScrollablePositionedList instance) => instance.toStringShort),
    },
  );

  ///class ScrollOffsetController
  static final classScrollOffsetController = VmClass<ScrollOffsetController>(
    identifier: 'ScrollOffsetController',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => ScrollOffsetController.new),
      'animateScroll': VmProxy(identifier: 'animateScroll', externalInstancePropertyReader: (ScrollOffsetController instance) => instance.animateScroll),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ScrollOffsetController instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ScrollOffsetController instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ScrollOffsetController instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ScrollOffsetController instance) => instance.toString),
    },
  );

  ///class ScrollOffsetListener
  static final classScrollOffsetListener = VmClass<ScrollOffsetListener>(
    identifier: 'ScrollOffsetListener',
    superclassNames: ['Object'],
    externalProxyMap: {
      'create': VmProxy(identifier: 'create', externalStaticPropertyReader: () => ScrollOffsetListener.create),
      'changes': VmProxy(identifier: 'changes', externalInstancePropertyReader: (ScrollOffsetListener instance) => instance.changes),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ScrollOffsetListener instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ScrollOffsetListener instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ScrollOffsetListener instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ScrollOffsetListener instance) => instance.toString),
    },
  );

  ///all class list
  static final libraryClassList = <VmClass>[
    classItemPosition,
    classItemPositionsListener,
    classItemScrollController,
    classScrollablePositionedList,
    classScrollOffsetController,
    classScrollOffsetListener,
  ];

  ///all proxy list
  static final libraryProxyList = <VmProxy<void>>[];
}
