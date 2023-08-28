import 'dart:convert';
import 'dart:typed_data';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

///
///图片显示
///
class ZyImage extends StatelessWidget {
  ///图片网络地址
  final String url;

  ///图片字符数据
  final String? data;

  ///图片字节数据
  final List<int>? bytes;

  ///图片网址处理
  final String Function(String val) onFormatUrl;

  ///图片适配方案
  final BoxFit fit;

  ///图片加载中、加载失败时的小部件的方形尺寸
  final double blankBoxSize;

  ///图片加载失败时显示的小部件
  final Widget? errorWidget;

  ///图片正在加载中显示的小部件
  final Widget? loadingWidget;

  const ZyImage({
    super.key,
    this.url = '',
    this.data,
    this.bytes,
    required this.onFormatUrl,
    this.fit = BoxFit.cover,
    this.blankBoxSize = 58,
    this.errorWidget,
    this.loadingWidget,
  });

  @override
  Widget build(BuildContext context) {
    if (bytes != null) {
      return ExtendedImage.memory(
        bytes is Uint8List ? bytes! as Uint8List : Uint8List.fromList(bytes!),
        fit: fit,
      );
    }
    if (data != null) {
      return ExtendedImage.memory(
        base64Decode(data!),
        fit: fit,
      );
    }
    if (_isValidUrl(url)) {
      return ExtendedImage.network(
        onFormatUrl(url),
        fit: fit,
        loadStateChanged: (imageState) {
          switch (imageState.extendedImageLoadState) {
            case LoadState.loading:
              return Container(
                alignment: Alignment.center,
                width: blankBoxSize,
                height: blankBoxSize,
                child: loadingWidget ?? SizedBox(width: blankBoxSize * 0.4, height: blankBoxSize * 0.4, child: const CircularProgressIndicator(strokeWidth: 2.0)),
              );
            case LoadState.failed:
              return Container(
                alignment: Alignment.center,
                width: blankBoxSize,
                height: blankBoxSize,
                child: errorWidget ?? Icon(Icons.broken_image_outlined, size: blankBoxSize * 0.5, color: Colors.grey),
              );
            case LoadState.completed:
              return null;
          }
        },
      );
    }
    return Container(
      alignment: Alignment.center,
      width: blankBoxSize,
      height: blankBoxSize,
      child: errorWidget ?? Icon(Icons.broken_image_outlined, size: blankBoxSize * 0.5, color: Colors.grey),
    );
  }

  bool _isValidUrl(String? val) {
    return val != null && val.trim() != '';
  }
}
