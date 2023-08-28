import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../launch/zy_app.dart';

///
///条码或二维码识别器
///
class ZyQrscan extends StatefulWidget {
  ///遮罩：背景颜色
  final Color overlayColor;

  ///边框：线条颜色
  final Color borderColor;

  ///边框：线条粗细
  final double borderWidth;

  ///边框：线条圆角
  final double borderRadius;

  ///边框：线条长度
  final double borderLength;

  ///内容：矩形尺寸，设置该项后不可再设置[cutOutWidth] 与 [cutOutHeight]
  final double? cutOutSize;

  ///内容：矩形宽度，设置该项后不可再设置[cutOutSize]，且必须与[cutOutHeight]同时使用
  final double? cutOutWidth;

  ///内容：矩形高度，设置该项后不可再设置[cutOutSize]，且必须与[cutOutWidth]同时使用
  final double? cutOutHeight;

  ///内容：矩形底部偏移
  final double cutOutBottomOffset;

  ///按钮：图标大小
  final double buttonIconSize;

  ///按钮：图标颜色
  final Color buttonIconColor;

  ///按钮：底部偏移
  final double buttonBoxOffsetB;

  ///不支持扫码功能的文字提示
  final String unsupportMessage;

  ///停止扫码后，是否自动关闭本页面
  final bool autoCloseOnFinished;

  ///扫码结果回调，返回 true 停止扫码
  final bool Function(BuildContext context, String result) onResultCallback;

  const ZyQrscan({
    super.key,
    this.overlayColor = const Color.fromRGBO(0, 0, 0, 80),
    this.borderColor = Colors.red,
    this.borderWidth = 3.0,
    this.borderRadius = 0,
    this.borderLength = 40,
    this.cutOutSize,
    this.cutOutWidth,
    this.cutOutHeight,
    this.cutOutBottomOffset = 0,
    this.buttonIconSize = 32,
    this.buttonIconColor = Colors.white,
    this.buttonBoxOffsetB = 0.7,
    this.unsupportMessage = 'The platform not support code scanning!',
    this.autoCloseOnFinished = true,
    required this.onResultCallback,
  });

  @override
  State<StatefulWidget> createState() => _ZyQrscanState();
}

class _ZyQrscanState extends State<ZyQrscan> {
  ///扫码小部件全局key
  final _qrViewKey = GlobalKey(debugLabel: 'ZyQrscan');

  ///扫码小部件控制器
  QRViewController? _qrViewController;

  ///是否已经完成扫码
  bool _isFinished = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _qrViewController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final queryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: kIsWeb || Platform.isAndroid || Platform.isIOS
          ? AppBar(
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: Icon(Icons.close, color: widget.buttonIconColor, size: widget.buttonIconSize),
                onPressed: () => ZyApp.pop(),
              ),
            )
          : AppBar(),
      body: kIsWeb || Platform.isAndroid || Platform.isIOS
          ? Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: QRView(
                    key: _qrViewKey,
                    onQRViewCreated: _onQRViewCreated,
                    overlay: QrScannerOverlayShape(
                      overlayColor: widget.overlayColor,
                      borderColor: widget.borderColor,
                      borderWidth: widget.borderWidth,
                      borderRadius: widget.borderRadius,
                      borderLength: widget.borderLength,
                      cutOutSize: widget.cutOutSize,
                      cutOutWidth: widget.cutOutWidth,
                      cutOutHeight: widget.cutOutHeight,
                      cutOutBottomOffset: widget.cutOutBottomOffset,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: queryData.size.height * widget.buttonBoxOffsetB,
                  bottom: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: Icon(Icons.cameraswitch, color: widget.buttonIconColor, size: widget.buttonIconSize),
                        onPressed: () => _qrViewController?.flipCamera(),
                      ),
                      IconButton(
                        icon: Icon(Icons.tips_and_updates, color: widget.buttonIconColor, size: widget.buttonIconSize),
                        onPressed: () => _qrViewController?.toggleFlash(),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Center(child: Text(widget.unsupportMessage)),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    _qrViewController = controller;
    controller.scannedDataStream.listen((scanData) {
      if (_isFinished) return; //检查已完成标志，防止销毁页面时也回调
      if (scanData.code != null && widget.onResultCallback(context, scanData.code!)) {
        _isFinished = true; //设置已完成标志，防止销毁页面时也回调
        if (widget.autoCloseOnFinished) {
          ZyApp.pop(); //关闭页面
        } else {
          controller.pauseCamera(); //停止扫码
        }
      }
    });
  }
}
