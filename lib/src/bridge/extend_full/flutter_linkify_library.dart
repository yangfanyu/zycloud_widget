// ignore_for_file: avoid_function_literals_in_foreach_calls
// ignore_for_file: deprecated_member_use
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: unnecessary_constructor_name

import 'package:shelf_easy/shelf_easy.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:linkify/linkify.dart';

///
///flutter_linkify库桥接类
///
class FlutterLinkifyLibrary {
  ///class EmailElement
  static final classEmailElement = VmClass<EmailElement>(
    identifier: 'EmailElement',
    superclassNames: ['Object', 'LinkifyElement', 'LinkableElement'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => EmailElement.new),
      'emailAddress': VmProxy(identifier: 'emailAddress', externalInstancePropertyReader: (EmailElement instance) => instance.emailAddress),
      'equals': VmProxy(identifier: 'equals', externalInstancePropertyReader: (EmailElement instance) => instance.equals),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (EmailElement instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (EmailElement instance) => instance.noSuchMethod),
      'originText': VmProxy(identifier: 'originText', externalInstancePropertyReader: (EmailElement instance) => instance.originText),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (EmailElement instance) => instance.runtimeType),
      'text': VmProxy(identifier: 'text', externalInstancePropertyReader: (EmailElement instance) => instance.text),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (EmailElement instance) => instance.toString),
      'url': VmProxy(identifier: 'url', externalInstancePropertyReader: (EmailElement instance) => instance.url),
    },
  );

  ///class EmailLinkifier
  static final classEmailLinkifier = VmClass<EmailLinkifier>(
    identifier: 'EmailLinkifier',
    superclassNames: ['Object', 'Linkifier'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => EmailLinkifier.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (EmailLinkifier instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (EmailLinkifier instance) => instance.noSuchMethod),
      'parse': VmProxy(identifier: 'parse', externalInstancePropertyReader: (EmailLinkifier instance) => instance.parse),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (EmailLinkifier instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (EmailLinkifier instance) => instance.toString),
    },
  );

  ///class LinkableElement
  static final classLinkableElement = VmClass<LinkableElement>(
    identifier: 'LinkableElement',
    superclassNames: ['Object', 'LinkifyElement'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => LinkableElement.new),
      'equals': VmProxy(identifier: 'equals', externalInstancePropertyReader: (LinkableElement instance) => instance.equals),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (LinkableElement instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (LinkableElement instance) => instance.noSuchMethod),
      'originText': VmProxy(identifier: 'originText', externalInstancePropertyReader: (LinkableElement instance) => instance.originText),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (LinkableElement instance) => instance.runtimeType),
      'text': VmProxy(identifier: 'text', externalInstancePropertyReader: (LinkableElement instance) => instance.text),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (LinkableElement instance) => instance.toString),
      'url': VmProxy(identifier: 'url', externalInstancePropertyReader: (LinkableElement instance) => instance.url),
    },
  );

  ///class LinkableSpan
  static final classLinkableSpan = VmClass<LinkableSpan>(
    identifier: 'LinkableSpan',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'InlineSpan', 'PlaceholderSpan', 'WidgetSpan'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => LinkableSpan.new),
      'alignment': VmProxy(identifier: 'alignment', externalInstancePropertyReader: (LinkableSpan instance) => instance.alignment),
      'baseline': VmProxy(identifier: 'baseline', externalInstancePropertyReader: (LinkableSpan instance) => instance.baseline),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (LinkableSpan instance) => instance.build),
      'child': VmProxy(identifier: 'child', externalInstancePropertyReader: (LinkableSpan instance) => instance.child),
      'codeUnitAt': VmProxy(identifier: 'codeUnitAt', externalInstancePropertyReader: (LinkableSpan instance) => instance.codeUnitAt),
      'codeUnitAtVisitor': VmProxy(identifier: 'codeUnitAtVisitor', externalInstancePropertyReader: (LinkableSpan instance) => instance.codeUnitAtVisitor),
      'compareTo': VmProxy(identifier: 'compareTo', externalInstancePropertyReader: (LinkableSpan instance) => instance.compareTo),
      'computeSemanticsInformation': VmProxy(identifier: 'computeSemanticsInformation', externalInstancePropertyReader: (LinkableSpan instance) => instance.computeSemanticsInformation),
      'computeToPlainText': VmProxy(identifier: 'computeToPlainText', externalInstancePropertyReader: (LinkableSpan instance) => instance.computeToPlainText),
      'debugAssertIsValid': VmProxy(identifier: 'debugAssertIsValid', externalInstancePropertyReader: (LinkableSpan instance) => instance.debugAssertIsValid),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (LinkableSpan instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (LinkableSpan instance) => instance.debugFillProperties),
      'describeSemantics': VmProxy(identifier: 'describeSemantics', externalInstancePropertyReader: (LinkableSpan instance) => instance.describeSemantics),
      'getSemanticsInformation': VmProxy(identifier: 'getSemanticsInformation', externalInstancePropertyReader: (LinkableSpan instance) => instance.getSemanticsInformation),
      'getSpanForPosition': VmProxy(identifier: 'getSpanForPosition', externalInstancePropertyReader: (LinkableSpan instance) => instance.getSpanForPosition),
      'getSpanForPositionVisitor': VmProxy(identifier: 'getSpanForPositionVisitor', externalInstancePropertyReader: (LinkableSpan instance) => instance.getSpanForPositionVisitor),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (LinkableSpan instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (LinkableSpan instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (LinkableSpan instance) => instance.runtimeType),
      'style': VmProxy(identifier: 'style', externalInstancePropertyReader: (LinkableSpan instance) => instance.style),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (LinkableSpan instance) => instance.toDiagnosticsNode),
      'toPlainText': VmProxy(identifier: 'toPlainText', externalInstancePropertyReader: (LinkableSpan instance) => instance.toPlainText),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (LinkableSpan instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (LinkableSpan instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (LinkableSpan instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (LinkableSpan instance) => instance.toStringShort),
      'visitChildren': VmProxy(identifier: 'visitChildren', externalInstancePropertyReader: (LinkableSpan instance) => instance.visitChildren, externalInstanceFunctionCaller: (LinkableSpan instance, a0) => instance.visitChildren((b0) => a0(b0))),
      'visitDirectChildren': VmProxy(identifier: 'visitDirectChildren', externalInstancePropertyReader: (LinkableSpan instance) => instance.visitDirectChildren, externalInstanceFunctionCaller: (LinkableSpan instance, a0) => instance.visitDirectChildren((b0) => a0(b0))),
    },
  );

  ///class Linkifier
  static final classLinkifier = VmClass<Linkifier>(
    identifier: 'Linkifier',
    superclassNames: ['Object'],
    externalProxyMap: {
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Linkifier instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Linkifier instance) => instance.noSuchMethod),
      'parse': VmProxy(identifier: 'parse', externalInstancePropertyReader: (Linkifier instance) => instance.parse),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Linkifier instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Linkifier instance) => instance.toString),
    },
  );

  ///class Linkify
  static final classLinkify = VmClass<Linkify>(
    identifier: 'Linkify',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatelessWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => Linkify.new, externalStaticFunctionCaller: ({key, text = '', linkifiers = defaultLinkifiers, onOpen, options = const LinkifyOptions(), style, linkStyle, textAlign = TextAlign.start, textDirection, maxLines, overflow = TextOverflow.clip, textScaleFactor = 1.0, softWrap = true, strutStyle, locale, textWidthBasis = TextWidthBasis.parent, textHeightBehavior, useMouseRegion = true}) => Linkify.new(key: key, text: text, linkifiers: linkifiers, onOpen: onOpen == null ? null : (b0) => onOpen(b0), options: options, style: style, linkStyle: linkStyle, textAlign: textAlign, textDirection: textDirection, maxLines: maxLines, overflow: overflow, textScaleFactor: textScaleFactor, softWrap: softWrap, strutStyle: strutStyle, locale: locale, textWidthBasis: textWidthBasis, textHeightBehavior: textHeightBehavior, useMouseRegion: useMouseRegion)),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (Linkify instance) => instance.build),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (Linkify instance) => instance.createElement),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (Linkify instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (Linkify instance) => instance.debugFillProperties),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Linkify instance) => instance.hashCode),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (Linkify instance) => instance.key),
      'linkifiers': VmProxy(identifier: 'linkifiers', externalInstancePropertyReader: (Linkify instance) => instance.linkifiers),
      'linkStyle': VmProxy(identifier: 'linkStyle', externalInstancePropertyReader: (Linkify instance) => instance.linkStyle),
      'locale': VmProxy(identifier: 'locale', externalInstancePropertyReader: (Linkify instance) => instance.locale),
      'maxLines': VmProxy(identifier: 'maxLines', externalInstancePropertyReader: (Linkify instance) => instance.maxLines),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Linkify instance) => instance.noSuchMethod),
      'onOpen': VmProxy(identifier: 'onOpen', externalInstancePropertyReader: (Linkify instance) => instance.onOpen),
      'options': VmProxy(identifier: 'options', externalInstancePropertyReader: (Linkify instance) => instance.options),
      'overflow': VmProxy(identifier: 'overflow', externalInstancePropertyReader: (Linkify instance) => instance.overflow),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Linkify instance) => instance.runtimeType),
      'softWrap': VmProxy(identifier: 'softWrap', externalInstancePropertyReader: (Linkify instance) => instance.softWrap),
      'strutStyle': VmProxy(identifier: 'strutStyle', externalInstancePropertyReader: (Linkify instance) => instance.strutStyle),
      'style': VmProxy(identifier: 'style', externalInstancePropertyReader: (Linkify instance) => instance.style),
      'text': VmProxy(identifier: 'text', externalInstancePropertyReader: (Linkify instance) => instance.text),
      'textAlign': VmProxy(identifier: 'textAlign', externalInstancePropertyReader: (Linkify instance) => instance.textAlign),
      'textDirection': VmProxy(identifier: 'textDirection', externalInstancePropertyReader: (Linkify instance) => instance.textDirection),
      'textHeightBehavior': VmProxy(identifier: 'textHeightBehavior', externalInstancePropertyReader: (Linkify instance) => instance.textHeightBehavior),
      'textScaleFactor': VmProxy(identifier: 'textScaleFactor', externalInstancePropertyReader: (Linkify instance) => instance.textScaleFactor),
      'textWidthBasis': VmProxy(identifier: 'textWidthBasis', externalInstancePropertyReader: (Linkify instance) => instance.textWidthBasis),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (Linkify instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Linkify instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (Linkify instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (Linkify instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (Linkify instance) => instance.toStringShort),
      'useMouseRegion': VmProxy(identifier: 'useMouseRegion', externalInstancePropertyReader: (Linkify instance) => instance.useMouseRegion),
    },
  );

  ///class LinkifyElement
  static final classLinkifyElement = VmClass<LinkifyElement>(
    identifier: 'LinkifyElement',
    superclassNames: ['Object'],
    externalProxyMap: {
      'equals': VmProxy(identifier: 'equals', externalInstancePropertyReader: (LinkifyElement instance) => instance.equals),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (LinkifyElement instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (LinkifyElement instance) => instance.noSuchMethod),
      'originText': VmProxy(identifier: 'originText', externalInstancePropertyReader: (LinkifyElement instance) => instance.originText),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (LinkifyElement instance) => instance.runtimeType),
      'text': VmProxy(identifier: 'text', externalInstancePropertyReader: (LinkifyElement instance) => instance.text),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (LinkifyElement instance) => instance.toString),
    },
  );

  ///class LinkifyOptions
  static final classLinkifyOptions = VmClass<LinkifyOptions>(
    identifier: 'LinkifyOptions',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => LinkifyOptions.new),
      'defaultToHttps': VmProxy(identifier: 'defaultToHttps', externalInstancePropertyReader: (LinkifyOptions instance) => instance.defaultToHttps),
      'excludeLastPeriod': VmProxy(identifier: 'excludeLastPeriod', externalInstancePropertyReader: (LinkifyOptions instance) => instance.excludeLastPeriod),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (LinkifyOptions instance) => instance.hashCode),
      'humanize': VmProxy(identifier: 'humanize', externalInstancePropertyReader: (LinkifyOptions instance) => instance.humanize),
      'looseUrl': VmProxy(identifier: 'looseUrl', externalInstancePropertyReader: (LinkifyOptions instance) => instance.looseUrl),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (LinkifyOptions instance) => instance.noSuchMethod),
      'removeWww': VmProxy(identifier: 'removeWww', externalInstancePropertyReader: (LinkifyOptions instance) => instance.removeWww),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (LinkifyOptions instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (LinkifyOptions instance) => instance.toString),
    },
  );

  ///class LinkifySpan
  static final classLinkifySpan = VmClass<LinkifySpan>(
    identifier: 'LinkifySpan',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'InlineSpan', 'HitTestTarget', 'MouseTrackerAnnotation', 'TextSpan'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => LinkifySpan.new, externalStaticFunctionCaller: ({text = '', linkStyle, onOpen, options = const LinkifyOptions(), linkifiers = defaultLinkifiers, useMouseRegion = false, style, recognizer, mouseCursor, onEnter, onExit, semanticsLabel, locale, spellOut}) => LinkifySpan.new(text: text, linkStyle: linkStyle, onOpen: onOpen == null ? null : (b0) => onOpen(b0), options: options, linkifiers: linkifiers, useMouseRegion: useMouseRegion, style: style, recognizer: recognizer, mouseCursor: mouseCursor, onEnter: onEnter == null ? null : (b0) => onEnter(b0), onExit: onExit == null ? null : (b0) => onExit(b0), semanticsLabel: semanticsLabel, locale: locale, spellOut: spellOut)),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (LinkifySpan instance) => instance.build),
      'children': VmProxy(identifier: 'children', externalInstancePropertyReader: (LinkifySpan instance) => instance.children),
      'codeUnitAt': VmProxy(identifier: 'codeUnitAt', externalInstancePropertyReader: (LinkifySpan instance) => instance.codeUnitAt),
      'codeUnitAtVisitor': VmProxy(identifier: 'codeUnitAtVisitor', externalInstancePropertyReader: (LinkifySpan instance) => instance.codeUnitAtVisitor),
      'compareTo': VmProxy(identifier: 'compareTo', externalInstancePropertyReader: (LinkifySpan instance) => instance.compareTo),
      'computeSemanticsInformation': VmProxy(identifier: 'computeSemanticsInformation', externalInstancePropertyReader: (LinkifySpan instance) => instance.computeSemanticsInformation),
      'computeToPlainText': VmProxy(identifier: 'computeToPlainText', externalInstancePropertyReader: (LinkifySpan instance) => instance.computeToPlainText),
      'cursor': VmProxy(identifier: 'cursor', externalInstancePropertyReader: (LinkifySpan instance) => instance.cursor),
      'debugAssertIsValid': VmProxy(identifier: 'debugAssertIsValid', externalInstancePropertyReader: (LinkifySpan instance) => instance.debugAssertIsValid),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (LinkifySpan instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (LinkifySpan instance) => instance.debugFillProperties),
      'describeSemantics': VmProxy(identifier: 'describeSemantics', externalInstancePropertyReader: (LinkifySpan instance) => instance.describeSemantics),
      'getSemanticsInformation': VmProxy(identifier: 'getSemanticsInformation', externalInstancePropertyReader: (LinkifySpan instance) => instance.getSemanticsInformation),
      'getSpanForPosition': VmProxy(identifier: 'getSpanForPosition', externalInstancePropertyReader: (LinkifySpan instance) => instance.getSpanForPosition),
      'getSpanForPositionVisitor': VmProxy(identifier: 'getSpanForPositionVisitor', externalInstancePropertyReader: (LinkifySpan instance) => instance.getSpanForPositionVisitor),
      'handleEvent': VmProxy(identifier: 'handleEvent', externalInstancePropertyReader: (LinkifySpan instance) => instance.handleEvent),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (LinkifySpan instance) => instance.hashCode),
      'locale': VmProxy(identifier: 'locale', externalInstancePropertyReader: (LinkifySpan instance) => instance.locale),
      'mouseCursor': VmProxy(identifier: 'mouseCursor', externalInstancePropertyReader: (LinkifySpan instance) => instance.mouseCursor),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (LinkifySpan instance) => instance.noSuchMethod),
      'onEnter': VmProxy(identifier: 'onEnter', externalInstancePropertyReader: (LinkifySpan instance) => instance.onEnter),
      'onExit': VmProxy(identifier: 'onExit', externalInstancePropertyReader: (LinkifySpan instance) => instance.onExit),
      'recognizer': VmProxy(identifier: 'recognizer', externalInstancePropertyReader: (LinkifySpan instance) => instance.recognizer),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (LinkifySpan instance) => instance.runtimeType),
      'semanticsLabel': VmProxy(identifier: 'semanticsLabel', externalInstancePropertyReader: (LinkifySpan instance) => instance.semanticsLabel),
      'spellOut': VmProxy(identifier: 'spellOut', externalInstancePropertyReader: (LinkifySpan instance) => instance.spellOut),
      'style': VmProxy(identifier: 'style', externalInstancePropertyReader: (LinkifySpan instance) => instance.style),
      'text': VmProxy(identifier: 'text', externalInstancePropertyReader: (LinkifySpan instance) => instance.text),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (LinkifySpan instance) => instance.toDiagnosticsNode),
      'toPlainText': VmProxy(identifier: 'toPlainText', externalInstancePropertyReader: (LinkifySpan instance) => instance.toPlainText),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (LinkifySpan instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (LinkifySpan instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (LinkifySpan instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (LinkifySpan instance) => instance.toStringShort),
      'validForMouseTracker': VmProxy(identifier: 'validForMouseTracker', externalInstancePropertyReader: (LinkifySpan instance) => instance.validForMouseTracker),
      'visitChildren': VmProxy(identifier: 'visitChildren', externalInstancePropertyReader: (LinkifySpan instance) => instance.visitChildren, externalInstanceFunctionCaller: (LinkifySpan instance, a0) => instance.visitChildren((b0) => a0(b0))),
      'visitDirectChildren': VmProxy(identifier: 'visitDirectChildren', externalInstancePropertyReader: (LinkifySpan instance) => instance.visitDirectChildren, externalInstanceFunctionCaller: (LinkifySpan instance, a0) => instance.visitDirectChildren((b0) => a0(b0))),
    },
  );

  ///class PhoneNumberElement
  static final classPhoneNumberElement = VmClass<PhoneNumberElement>(
    identifier: 'PhoneNumberElement',
    superclassNames: ['Object', 'LinkifyElement', 'LinkableElement'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => PhoneNumberElement.new),
      'equals': VmProxy(identifier: 'equals', externalInstancePropertyReader: (PhoneNumberElement instance) => instance.equals),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PhoneNumberElement instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PhoneNumberElement instance) => instance.noSuchMethod),
      'originText': VmProxy(identifier: 'originText', externalInstancePropertyReader: (PhoneNumberElement instance) => instance.originText),
      'phoneNumber': VmProxy(identifier: 'phoneNumber', externalInstancePropertyReader: (PhoneNumberElement instance) => instance.phoneNumber),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PhoneNumberElement instance) => instance.runtimeType),
      'text': VmProxy(identifier: 'text', externalInstancePropertyReader: (PhoneNumberElement instance) => instance.text),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PhoneNumberElement instance) => instance.toString),
      'url': VmProxy(identifier: 'url', externalInstancePropertyReader: (PhoneNumberElement instance) => instance.url),
    },
  );

  ///class PhoneNumberLinkifier
  static final classPhoneNumberLinkifier = VmClass<PhoneNumberLinkifier>(
    identifier: 'PhoneNumberLinkifier',
    superclassNames: ['Object', 'Linkifier'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => PhoneNumberLinkifier.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PhoneNumberLinkifier instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PhoneNumberLinkifier instance) => instance.noSuchMethod),
      'parse': VmProxy(identifier: 'parse', externalInstancePropertyReader: (PhoneNumberLinkifier instance) => instance.parse),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PhoneNumberLinkifier instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PhoneNumberLinkifier instance) => instance.toString),
    },
  );

  ///class SelectableLinkify
  static final classSelectableLinkify = VmClass<SelectableLinkify>(
    identifier: 'SelectableLinkify',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatelessWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => SelectableLinkify.new, externalStaticFunctionCaller: ({key, text = '', linkifiers = defaultLinkifiers, onOpen, options = const LinkifyOptions(), style, linkStyle, textAlign, textDirection, minLines, maxLines, focusNode, textScaleFactor = 1.0, strutStyle, showCursor = false, autofocus = false, contextMenuBuilder, cursorWidth = 2.0, cursorRadius, cursorColor, dragStartBehavior = DragStartBehavior.start, enableInteractiveSelection = true, onTap, scrollPhysics, textWidthBasis, textHeightBehavior, cursorHeight, selectionControls, onSelectionChanged, useMouseRegion = false}) => SelectableLinkify.new(key: key, text: text, linkifiers: linkifiers, onOpen: onOpen == null ? null : (b0) => onOpen(b0), options: options, style: style, linkStyle: linkStyle, textAlign: textAlign, textDirection: textDirection, minLines: minLines, maxLines: maxLines, focusNode: focusNode, textScaleFactor: textScaleFactor, strutStyle: strutStyle, showCursor: showCursor, autofocus: autofocus, contextMenuBuilder: contextMenuBuilder == null ? null : (b0, b1) => contextMenuBuilder(b0, b1), cursorWidth: cursorWidth, cursorRadius: cursorRadius, cursorColor: cursorColor, dragStartBehavior: dragStartBehavior, enableInteractiveSelection: enableInteractiveSelection, onTap: onTap, scrollPhysics: scrollPhysics, textWidthBasis: textWidthBasis, textHeightBehavior: textHeightBehavior, cursorHeight: cursorHeight, selectionControls: selectionControls, onSelectionChanged: onSelectionChanged == null ? null : (b0, b1) => onSelectionChanged(b0, b1), useMouseRegion: useMouseRegion)),
      'autofocus': VmProxy(identifier: 'autofocus', externalInstancePropertyReader: (SelectableLinkify instance) => instance.autofocus),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (SelectableLinkify instance) => instance.build),
      'contextMenuBuilder': VmProxy(identifier: 'contextMenuBuilder', externalInstancePropertyReader: (SelectableLinkify instance) => instance.contextMenuBuilder),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (SelectableLinkify instance) => instance.createElement),
      'cursorColor': VmProxy(identifier: 'cursorColor', externalInstancePropertyReader: (SelectableLinkify instance) => instance.cursorColor),
      'cursorHeight': VmProxy(identifier: 'cursorHeight', externalInstancePropertyReader: (SelectableLinkify instance) => instance.cursorHeight),
      'cursorRadius': VmProxy(identifier: 'cursorRadius', externalInstancePropertyReader: (SelectableLinkify instance) => instance.cursorRadius),
      'cursorWidth': VmProxy(identifier: 'cursorWidth', externalInstancePropertyReader: (SelectableLinkify instance) => instance.cursorWidth),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (SelectableLinkify instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (SelectableLinkify instance) => instance.debugFillProperties),
      'dragStartBehavior': VmProxy(identifier: 'dragStartBehavior', externalInstancePropertyReader: (SelectableLinkify instance) => instance.dragStartBehavior),
      'enableInteractiveSelection': VmProxy(identifier: 'enableInteractiveSelection', externalInstancePropertyReader: (SelectableLinkify instance) => instance.enableInteractiveSelection),
      'focusNode': VmProxy(identifier: 'focusNode', externalInstancePropertyReader: (SelectableLinkify instance) => instance.focusNode),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SelectableLinkify instance) => instance.hashCode),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (SelectableLinkify instance) => instance.key),
      'linkifiers': VmProxy(identifier: 'linkifiers', externalInstancePropertyReader: (SelectableLinkify instance) => instance.linkifiers),
      'linkStyle': VmProxy(identifier: 'linkStyle', externalInstancePropertyReader: (SelectableLinkify instance) => instance.linkStyle),
      'maxLines': VmProxy(identifier: 'maxLines', externalInstancePropertyReader: (SelectableLinkify instance) => instance.maxLines),
      'minLines': VmProxy(identifier: 'minLines', externalInstancePropertyReader: (SelectableLinkify instance) => instance.minLines),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SelectableLinkify instance) => instance.noSuchMethod),
      'onOpen': VmProxy(identifier: 'onOpen', externalInstancePropertyReader: (SelectableLinkify instance) => instance.onOpen),
      'onSelectionChanged': VmProxy(identifier: 'onSelectionChanged', externalInstancePropertyReader: (SelectableLinkify instance) => instance.onSelectionChanged),
      'onTap': VmProxy(identifier: 'onTap', externalInstancePropertyReader: (SelectableLinkify instance) => instance.onTap),
      'options': VmProxy(identifier: 'options', externalInstancePropertyReader: (SelectableLinkify instance) => instance.options),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SelectableLinkify instance) => instance.runtimeType),
      'scrollPhysics': VmProxy(identifier: 'scrollPhysics', externalInstancePropertyReader: (SelectableLinkify instance) => instance.scrollPhysics),
      'selectionControls': VmProxy(identifier: 'selectionControls', externalInstancePropertyReader: (SelectableLinkify instance) => instance.selectionControls),
      'showCursor': VmProxy(identifier: 'showCursor', externalInstancePropertyReader: (SelectableLinkify instance) => instance.showCursor),
      'strutStyle': VmProxy(identifier: 'strutStyle', externalInstancePropertyReader: (SelectableLinkify instance) => instance.strutStyle),
      'style': VmProxy(identifier: 'style', externalInstancePropertyReader: (SelectableLinkify instance) => instance.style),
      'text': VmProxy(identifier: 'text', externalInstancePropertyReader: (SelectableLinkify instance) => instance.text),
      'textAlign': VmProxy(identifier: 'textAlign', externalInstancePropertyReader: (SelectableLinkify instance) => instance.textAlign),
      'textDirection': VmProxy(identifier: 'textDirection', externalInstancePropertyReader: (SelectableLinkify instance) => instance.textDirection),
      'textHeightBehavior': VmProxy(identifier: 'textHeightBehavior', externalInstancePropertyReader: (SelectableLinkify instance) => instance.textHeightBehavior),
      'textScaleFactor': VmProxy(identifier: 'textScaleFactor', externalInstancePropertyReader: (SelectableLinkify instance) => instance.textScaleFactor),
      'textWidthBasis': VmProxy(identifier: 'textWidthBasis', externalInstancePropertyReader: (SelectableLinkify instance) => instance.textWidthBasis),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (SelectableLinkify instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SelectableLinkify instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (SelectableLinkify instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (SelectableLinkify instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (SelectableLinkify instance) => instance.toStringShort),
      'useMouseRegion': VmProxy(identifier: 'useMouseRegion', externalInstancePropertyReader: (SelectableLinkify instance) => instance.useMouseRegion),
    },
  );

  ///class TextElement
  static final classTextElement = VmClass<TextElement>(
    identifier: 'TextElement',
    superclassNames: ['Object', 'LinkifyElement'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => TextElement.new),
      'equals': VmProxy(identifier: 'equals', externalInstancePropertyReader: (TextElement instance) => instance.equals),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (TextElement instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (TextElement instance) => instance.noSuchMethod),
      'originText': VmProxy(identifier: 'originText', externalInstancePropertyReader: (TextElement instance) => instance.originText),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (TextElement instance) => instance.runtimeType),
      'text': VmProxy(identifier: 'text', externalInstancePropertyReader: (TextElement instance) => instance.text),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (TextElement instance) => instance.toString),
    },
  );

  ///class UrlElement
  static final classUrlElement = VmClass<UrlElement>(
    identifier: 'UrlElement',
    superclassNames: ['Object', 'LinkifyElement', 'LinkableElement'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => UrlElement.new),
      'equals': VmProxy(identifier: 'equals', externalInstancePropertyReader: (UrlElement instance) => instance.equals),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (UrlElement instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (UrlElement instance) => instance.noSuchMethod),
      'originText': VmProxy(identifier: 'originText', externalInstancePropertyReader: (UrlElement instance) => instance.originText),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (UrlElement instance) => instance.runtimeType),
      'text': VmProxy(identifier: 'text', externalInstancePropertyReader: (UrlElement instance) => instance.text),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (UrlElement instance) => instance.toString),
      'url': VmProxy(identifier: 'url', externalInstancePropertyReader: (UrlElement instance) => instance.url),
    },
  );

  ///class UrlLinkifier
  static final classUrlLinkifier = VmClass<UrlLinkifier>(
    identifier: 'UrlLinkifier',
    superclassNames: ['Object', 'Linkifier'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => UrlLinkifier.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (UrlLinkifier instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (UrlLinkifier instance) => instance.noSuchMethod),
      'parse': VmProxy(identifier: 'parse', externalInstancePropertyReader: (UrlLinkifier instance) => instance.parse),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (UrlLinkifier instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (UrlLinkifier instance) => instance.toString),
    },
  );

  ///class UserTagElement
  static final classUserTagElement = VmClass<UserTagElement>(
    identifier: 'UserTagElement',
    superclassNames: ['Object', 'LinkifyElement', 'LinkableElement'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => UserTagElement.new),
      'equals': VmProxy(identifier: 'equals', externalInstancePropertyReader: (UserTagElement instance) => instance.equals),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (UserTagElement instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (UserTagElement instance) => instance.noSuchMethod),
      'originText': VmProxy(identifier: 'originText', externalInstancePropertyReader: (UserTagElement instance) => instance.originText),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (UserTagElement instance) => instance.runtimeType),
      'text': VmProxy(identifier: 'text', externalInstancePropertyReader: (UserTagElement instance) => instance.text),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (UserTagElement instance) => instance.toString),
      'url': VmProxy(identifier: 'url', externalInstancePropertyReader: (UserTagElement instance) => instance.url),
      'userTag': VmProxy(identifier: 'userTag', externalInstancePropertyReader: (UserTagElement instance) => instance.userTag),
    },
  );

  ///class UserTagLinkifier
  static final classUserTagLinkifier = VmClass<UserTagLinkifier>(
    identifier: 'UserTagLinkifier',
    superclassNames: ['Object', 'Linkifier'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => UserTagLinkifier.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (UserTagLinkifier instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (UserTagLinkifier instance) => instance.noSuchMethod),
      'parse': VmProxy(identifier: 'parse', externalInstancePropertyReader: (UserTagLinkifier instance) => instance.parse),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (UserTagLinkifier instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (UserTagLinkifier instance) => instance.toString),
    },
  );

  ///all class list
  static final libraryClassList = <VmClass>[
    classEmailElement,
    classEmailLinkifier,
    classLinkableElement,
    classLinkableSpan,
    classLinkifier,
    classLinkify,
    classLinkifyElement,
    classLinkifyOptions,
    classLinkifySpan,
    classPhoneNumberElement,
    classPhoneNumberLinkifier,
    classSelectableLinkify,
    classTextElement,
    classUrlElement,
    classUrlLinkifier,
    classUserTagElement,
    classUserTagLinkifier,
  ];

  ///all proxy list
  static final libraryProxyList = <VmProxy<void>>[
    VmProxy(identifier: 'buildTextSpan', externalStaticPropertyReader: () => buildTextSpan, externalStaticFunctionCaller: (a0, {style, linkStyle, onOpen, useMouseRegion = false}) => buildTextSpan(a0, style: style, linkStyle: linkStyle, onOpen: onOpen == null ? null : (b0) => onOpen(b0), useMouseRegion: useMouseRegion)),
    VmProxy(identifier: 'buildTextSpanChildren', externalStaticPropertyReader: () => buildTextSpanChildren, externalStaticFunctionCaller: (a0, {style, linkStyle, onOpen, useMouseRegion = false}) => buildTextSpanChildren(a0, style: style, linkStyle: linkStyle, onOpen: onOpen == null ? null : (b0) => onOpen(b0), useMouseRegion: useMouseRegion)),
    VmProxy(identifier: 'defaultLinkifiers', externalStaticPropertyReader: () => defaultLinkifiers),
    VmProxy(identifier: 'linkify', externalStaticPropertyReader: () => linkify),
  ];
}
