import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background/flutter_background.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:move_to_background/move_to_background.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

import 'zy_device.dart';

///
///设备服务
///
class ZyService {
  ///启动应用的前台服务，如果成功启动前台服务则返回true，该操作目前仅android端有效果。
  static Future<bool> startForegroundService({
    String notificationTitle = 'ZyService ',
    String notificationText = 'ZyService is running...',
    String notificationImportance = 'Default', // Default, High, Max
    String notificationIconName = 'ic_launcher',
    String notificationIconDefType = 'mipmap',
    bool enableWifiLock = true,
    bool showBadge = true,
    bool shouldRequestBatteryOptimizationsOff = true,
  }) {
    //FlutterBackground: https://pub.dev/packages/flutter_background
    return FlutterBackground.initialize(
      androidConfig: FlutterBackgroundAndroidConfig(
        notificationTitle: notificationTitle,
        notificationText: notificationText,
        notificationImportance: AndroidNotificationImportance.values.byName(notificationImportance),
        notificationIcon: AndroidResource(name: notificationIconName, defType: notificationIconDefType),
        enableWifiLock: enableWifiLock,
        showBadge: showBadge,
        shouldRequestBatteryOptimizationsOff: shouldRequestBatteryOptimizationsOff,
      ),
    );
  }

  ///判断用户是否已授予必要的权限以便在后台运行，该操作目前仅android端有效果。
  static Future<bool> hasBackgroundPermissions() => FlutterBackground.hasPermissions;

  ///允许在后台执行flutter应用程序，该操作目前仅android端有效果。
  static Future<bool> enableBackgroundExecution() => FlutterBackground.isBackgroundExecutionEnabled ? Future.value(true) : FlutterBackground.enableBackgroundExecution();

  ///禁止在后台执行flutter应用程序，该操作目前仅android端有效果。
  static Future<bool> disableBackgroundExecution() => FlutterBackground.isBackgroundExecutionEnabled ? FlutterBackground.disableBackgroundExecution() : Future.value(true);

  ///将应用切换到后台运行，如果成功切换到后台则返回true，该操作目前仅mobile端有效果。
  static bool moveTaskToBackground() {
    ///MoveToBackground: https://pub.dev/packages/move_to_background
    if (ZyDeviceInfo.isMobileDevice) {
      MoveToBackground.moveTaskToBack();
      return true;
    } else {
      return false;
    }
  }

  ///本地通知插件实例
  static FlutterLocalNotificationsPlugin? _notificationsPlugin;

  ///本地通知ID自增量
  static int _notificationsIdsInc = 0;

  ///启动本地通知服务
  static Future<bool?> startNotificationService({
    bool androidRequestPermission = true, //android-13+申请权限
    String androidDefaultIcon = '@mipmap/ic_launcher',
    bool appleRequestAlertPermission = true,
    bool appleRequestSoundPermission = true,
    bool appleRequestBadgePermission = true,
    bool appleRequestCriticalPermission = false,
    bool appleDefaultPresentAlert = true,
    bool appleDefaultPresentSound = true,
    bool appleDefaultPresentBadge = true,
    String linuxDefaultActionName = 'ZyService',
    String? linuxDefaultIcon,
    String? linuxDefaultSound,
    bool linuxDefaultSuppressSound = false,
  }) {
    ///_notificationsPlugin: https://pub.dev/packages/flutter_local_notifications
    if (_notificationsPlugin != null) return Future.value(true);
    _notificationsPlugin = FlutterLocalNotificationsPlugin();
    if (androidRequestPermission && ZyDeviceInfo.isAndroid) {
      _notificationsPlugin!.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.requestPermission();
    }
    return _notificationsPlugin!.initialize(
      InitializationSettings(
        android: AndroidInitializationSettings(
          androidDefaultIcon,
        ),
        iOS: DarwinInitializationSettings(
          requestAlertPermission: appleRequestAlertPermission,
          requestSoundPermission: appleRequestSoundPermission,
          requestBadgePermission: appleRequestBadgePermission,
          requestCriticalPermission: appleRequestCriticalPermission,
          defaultPresentAlert: appleDefaultPresentAlert,
          defaultPresentSound: appleDefaultPresentSound,
          defaultPresentBadge: appleDefaultPresentBadge,
        ),
        macOS: DarwinInitializationSettings(
          requestAlertPermission: appleRequestAlertPermission,
          requestSoundPermission: appleRequestSoundPermission,
          requestBadgePermission: appleRequestBadgePermission,
          requestCriticalPermission: appleRequestCriticalPermission,
          defaultPresentAlert: appleDefaultPresentAlert,
          defaultPresentSound: appleDefaultPresentSound,
          defaultPresentBadge: appleDefaultPresentBadge,
        ),
        linux: LinuxInitializationSettings(
          defaultActionName: linuxDefaultActionName,
          defaultIcon: linuxDefaultIcon != null ? AssetsLinuxIcon(linuxDefaultIcon) : null,
          defaultSound: linuxDefaultSound != null ? AssetsLinuxSound(linuxDefaultSound) : null,
          defaultSuppressSound: linuxDefaultSuppressSound,
        ),
      ),
    );
  }

  ///显示本地通知消息
  static void showNotificationMessage({
    int? id,
    required String title,
    required String body,
    required String groupKey,
    required String androidChannelId,
    required String androidChannelName,
    String? androidChannelDescription,
    String? payload,
  }) {
    _notificationsPlugin?.show(
      id ?? _notificationsIdsInc++,
      title,
      body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          androidChannelId,
          androidChannelName,
          channelDescription: androidChannelDescription,
          groupKey: groupKey,
        ),
        iOS: DarwinNotificationDetails(
          threadIdentifier: groupKey,
        ),
        macOS: DarwinNotificationDetails(
          threadIdentifier: groupKey,
        ),
        linux: LinuxNotificationDetails(
          defaultActionName: groupKey,
        ),
      ),
      payload: payload,
    );
  }

  ///移除本地通知消息
  static void cancelAllNotificationMessages() {
    _notificationsPlugin?.cancelAll();
  }

  ///自定义键盘插入内容
  static void insertCustomKeyboardText(FocusNode focusNode, TextEditingController editingController, String text, {int? maxLength}) {
    if (ZyDeviceInfo.isMobileDevice) {
      if (!focusNode.hasFocus) return; //避免异常
    } else {
      focusNode.requestFocus();
    }
    int baseOffset = editingController.selection.baseOffset;
    int extentOffset = editingController.selection.extentOffset;
    String value = editingController.text.replaceRange(baseOffset, extentOffset, text);
    if (maxLength != null && value.length > maxLength) return; //超长了
    TextSelection selection = TextSelection(baseOffset: baseOffset + text.length, extentOffset: baseOffset + text.length);
    editingController.value = editingController.value.copyWith(text: value, selection: selection); //必须用这种方式同时设置text和selection，否则会成-1，-1
  }

  ///自定义键盘删除内容
  static void deleteCustomKeyboardText(FocusNode focusNode, TextEditingController editingController) {
    if (ZyDeviceInfo.isMobileDevice) {
      if (!focusNode.hasFocus) return; //避免异常
    } else {
      focusNode.requestFocus();
    }
    int baseOffset = editingController.selection.baseOffset;
    int extentOffset = editingController.selection.extentOffset;
    if (extentOffset - baseOffset > 0) {
      String beforeText = editingController.selection.textBefore(editingController.text);
      String afterText = editingController.selection.textAfter(editingController.text);
      TextSelection selection = TextSelection(baseOffset: beforeText.length, extentOffset: beforeText.length);
      editingController.value = editingController.value.copyWith(text: '$beforeText$afterText', selection: selection); //必须用这种方式同时设置text和selection，否则会成-1，-1
    } else if (baseOffset > 0) {
      String beforeText = editingController.selection.textBefore(editingController.text).characters.skipLast(1).string; //使用扩展字符类characters跳过最后一个【字符簇】
      String afterText = editingController.selection.textAfter(editingController.text);
      TextSelection selection = TextSelection(baseOffset: beforeText.length, extentOffset: beforeText.length);
      editingController.value = editingController.value.copyWith(text: '$beforeText$afterText', selection: selection); //必须用这种方式同时设置text和selection，否则会成-1，-1
    }
  }

  ///选择一个文件夹目录
  static Future<String?> getDirectoryPath({String? dialogTitle, bool lockParentWindow = false, String? initialDirectory}) {
    return FilePicker.platform.getDirectoryPath(
      dialogTitle: dialogTitle,
      lockParentWindow: lockParentWindow,
      initialDirectory: initialDirectory,
    );
  }

  ///创建WebViewController
  static WebViewController createWebViewController({
    bool androidEnableDebugging = false,
    bool androidMediaPlaybackRequiresUserGesture = false,
    bool appleAllowsInlineMediaPlayback = true,
    bool appleAllowsBackForwardNavigationGestures = false,
  }) {
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is AndroidWebViewPlatform) {
      params = AndroidWebViewControllerCreationParams();
    } else if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(allowsInlineMediaPlayback: appleAllowsInlineMediaPlayback, mediaTypesRequiringUserAction: const {});
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }
    final controller = WebViewController.fromPlatformCreationParams(params);
    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(androidEnableDebugging);
      (controller.platform as AndroidWebViewController).setMediaPlaybackRequiresUserGesture(androidMediaPlaybackRequiresUserGesture);
      (controller.platform as AndroidWebViewController).setOnShowFileSelector((params) async {
        FileType fileType = FileType.any;
        if (params.acceptTypes.any((type) => type.trim().toLowerCase().startsWith('image/'))) {
          fileType = FileType.image;
        } else if (params.acceptTypes.any((type) => type.trim().toLowerCase().startsWith('video/'))) {
          fileType = FileType.video;
        } else if (params.acceptTypes.any((type) => type.trim().toLowerCase().startsWith('audio/'))) {
          fileType = FileType.audio;
        }
        final result = await FilePicker.platform.pickFiles(type: fileType, allowMultiple: params.mode == FileSelectorMode.openMultiple, lockParentWindow: true);
        if (result != null && result.files.isNotEmpty) {
          return result.files.where((e) => e.path != null).map((e) => File(e.path!).uri.toString()).toList(); //必须创建文件，否则无法读取
        } else {
          return [];
        }
      });
    } else if (controller.platform is WebKitWebViewController) {
      (controller.platform as WebKitWebViewController).setAllowsBackForwardNavigationGestures(appleAllowsBackForwardNavigationGestures);
    }
    return controller;
  }

  ///获取flutter_webrtc可用的约束
  static MediaTrackSupportedConstraints getSupportedConstraints() => navigator.mediaDevices.getSupportedConstraints();

  ///获取flutter_webrtc用户媒体流
  static Future<MediaStream> getUserMedia(Map<String, dynamic> mediaConstraints) => navigator.mediaDevices.getUserMedia(mediaConstraints);

  ///获取flutter_webrtc屏幕媒体流
  static Future<MediaStream> getDisplayMedia(Map<String, dynamic> mediaConstraints) => navigator.mediaDevices.getDisplayMedia(mediaConstraints);
}
