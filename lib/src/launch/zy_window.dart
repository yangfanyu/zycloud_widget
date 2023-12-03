import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart' as overlay;

import '../widget/zy_dialog.dart';
import '../widget/zy_loading.dart';
import '../widget/zy_picture.dart';
import 'zy_app.dart';

///
///浮窗位置
///
enum ZyWindowAlign {
  ///上
  top,

  ///中
  center,

  ///下
  bottom,
}

///
///浮窗控制：https://pub.dev/packages/overlay_support
///
class ZyWindow {
  ///显示轻提示
  static void toast(String message) {
    overlay.toast(message);
  }

  ///显示提示框
  static Future<bool?> alert({
    String? title,
    Widget? titleWidget,
    String body = 'Alert',
    Widget? bodyWidget,
    String leftText = 'Cancel',
    String rightText = 'Sure',
    Color? leftColor,
    Color? rightColor,
    bool rightOnly = false,
    bool scrollable = true,
    void Function()? onLeftBtnPressed,
    void Function()? onRightBtnPressed,
    bool hasTransition = true,
  }) {
    return ZyApp.showDialog(
      ZyDialog(
        title: title,
        titleWidget: titleWidget,
        body: body,
        bodyWidget: bodyWidget,
        leftText: leftText,
        rightText: rightText,
        leftColor: leftColor,
        rightColor: rightColor,
        rightOnly: rightOnly,
        scrollable: scrollable,
        onLeftBtnPressed: onLeftBtnPressed,
        onRightBtnPressed: onRightBtnPressed,
      ),
      transitionBuilder: hasTransition
          ? (context, animation, secondaryAnimation, child) => ScaleTransition(
                scale: animation,
                child: FadeTransition(opacity: animation, child: child),
              )
          : null,
    );
  }

  ///显示等待框
  static void displayLoading({
    String content = 'Loading...',
    Duration? duration,
    bool hasTransition = false,
  }) {
    ZyApp.showDialog(
      ZyLoading(content: content),
      transitionBuilder: hasTransition
          ? (context, animation, secondaryAnimation, child) => ScaleTransition(
                scale: animation,
                child: FadeTransition(opacity: animation, child: child),
              )
          : null,
    );
    if (duration != null) {
      Future.delayed(duration, () => dismissLoading());
    }
  }

  ///移除等待框
  static void dismissLoading() => ZyApp.pop();

  ///图片浏览器
  static void showPictureViewer({
    required List<String> urlList,
    List<String> heroList = const [],
    int? initialPage,
    required String Function(String val) onFormatUrl,
  }) {
    ZyApp.showPage(
      ZyPicture(
        type: ZyPictureType.viewer,
        urlList: urlList,
        heroList: heroList,
        initialPage: initialPage,
        onFormatUrl: onFormatUrl,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }

  ///显示浮层
  static ZyWindowOverlayEntry showOverlay({
    required Widget Function(BuildContext context, double progress) builder,
    Curve? curve,
    Duration? duration,
    Key? key,
    BuildContext? context,
    Duration? animationDuration,
    Duration? reverseAnimationDuration,
  }) {
    return ZyWindowOverlayEntry()
      .._overlaySupportEntry = overlay.showOverlay(
        builder,
        curve: curve,
        duration: duration,
        key: key,
        context: context,
        animationDuration: animationDuration,
        reverseAnimationDuration: reverseAnimationDuration,
      );
  }

  ///显示简单通知
  static ZyWindowOverlayEntry showSimpleNotification({
    required Widget content,
    Widget? leading,
    Widget? subtitle,
    Widget? trailing,
    EdgeInsetsGeometry? contentPadding,
    Color? background,
    Color? foreground,
    double elevation = 16,
    Duration? duration,
    Key? key,
    bool autoDismiss = true,
    ZyWindowAlign position = ZyWindowAlign.top,
    BuildContext? context,
    DismissDirection? slideDismissDirection,
  }) {
    return ZyWindowOverlayEntry()
      .._overlaySupportEntry = overlay.showSimpleNotification(
        content,
        leading: leading,
        subtitle: subtitle,
        trailing: trailing,
        contentPadding: contentPadding,
        background: background,
        foreground: foreground,
        elevation: elevation,
        duration: duration,
        key: key,
        autoDismiss: autoDismiss,
        position: position == ZyWindowAlign.bottom ? overlay.NotificationPosition.bottom : overlay.NotificationPosition.top,
        context: context,
        slideDismissDirection: slideDismissDirection,
      );
  }

  ///显示浮层通知
  static ZyWindowOverlayEntry showOverlayNotification({
    required Widget Function(BuildContext context) builder,
    Duration? duration,
    Key? key,
    ZyWindowAlign position = ZyWindowAlign.top,
    BuildContext? context,
  }) {
    return ZyWindowOverlayEntry()
      .._overlaySupportEntry = overlay.showOverlayNotification(
        builder,
        duration: duration,
        key: key,
        position: position == ZyWindowAlign.bottom ? overlay.NotificationPosition.bottom : overlay.NotificationPosition.top,
        context: context,
      );
  }

  ///局部浮层支持
  static Widget localOverlaySupport({
    Key? key,
    required Widget child,
    Color? toastTextColor,
    Color? toastBackground,
    Alignment? toastAlignment,
  }) {
    return overlay.OverlaySupport.local(
      key: key,
      toastTheme: overlay.ToastThemeData(
        textColor: toastTextColor,
        background: toastBackground,
        alignment: toastAlignment,
      ),
      child: child,
    );
  }

  ///全局浮层支持
  static Widget globalOverlaySupport({
    Key? key,
    required Widget child,
    Color? toastTextColor,
    Color? toastBackground,
    Alignment? toastAlignment,
  }) {
    return overlay.OverlaySupport.global(
      key: key,
      toastTheme: overlay.ToastThemeData(
        textColor: toastTextColor,
        background: toastBackground,
        alignment: toastAlignment,
      ),
      child: child,
    );
  }
}

///
///浮层实例包装器
///
class ZyWindowOverlayEntry {
  overlay.OverlaySupportEntry? _overlaySupportEntry;

  ///删除本浮窗
  void dismiss({bool animate = true}) {
    _overlaySupportEntry?.dismiss(animate: animate);
    _overlaySupportEntry = null;
  }
}
