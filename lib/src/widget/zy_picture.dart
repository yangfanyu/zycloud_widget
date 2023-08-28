import 'dart:io';
import 'dart:math' as math;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as imagetool;
import 'package:image_picker/image_picker.dart';
import 'package:extended_image/extended_image.dart';

import '../launch/zy_app.dart';

///
///图片编辑器类型
///
enum ZyPictureType {
  ///预览模式
  viewer,

  ///编辑图片，并导出为jpg格式
  editAsJpg,

  ///编辑图片，并导出为png格式
  editAsPng,

  ///编辑图片，并导出为gif格式
  editAsGif,
}

///
///图片编辑器
///
class ZyPicture extends StatefulWidget {
  ///编辑器类型
  final ZyPictureType type;

  ///用于预览模式: 预览图片的url列表
  final List<String>? urlList;

  ///用于预览模式: 预览图片的hero标签列表，与图片列表对应
  final List<String>? heroList;

  ///用于预览模式: 初始显示图片在[urlList]中的索引
  final int? initialPage;

  ///用于预览模式: 对图片[urlList]进行预处理
  final String Function(String val)? onFormatUrl;

  ///用于预览模式: 图片加载中、加载失败时的小部件的方形尺寸
  final double blankBoxSize;

  ///用于预览模式: 图片加载失败时显示的小部件
  final Widget? errorWidget;

  ///用于预览模式: 图片正在加载中显示的小部件
  final Widget? loadingWidget;

  ///用于编辑模式: 编辑器标题
  final String? editTitle;

  ///用于编辑模式: 图片的数据
  final Uint8List? editBytes;

  ///用于编辑模式: [cropOnly]为true时仅启用基本裁剪功能，[cropOnly]为false时启用完整编辑功能
  final bool cropOnly;

  ///用于编辑模式: [cropOnly]为true时裁剪框框的宽高比例，[cropOnly]为false时忽略这个值
  final double cropAspectRatio;

  ///用于编辑模式: 导出为jpg时的图片质量
  final int jpgQuality;

  ///用于编辑模式: 导出为png时的图片质量
  final int pngLevel;

  ///用于编辑模式: 导出为gif时的图片质量
  final int gifFactor;

  ///用于编辑模式: [outputResize]为true时导出图片会等比压缩到[outputResizeWidth]与[outputResizeHeight]指定的尺寸，[outputResize]为false时导出图片不进行等比压缩处理
  final bool outputResize;

  ///用于编辑模式: [outputResize]为true时导出图片会等比压缩到[outputResizeWidth]与[outputResizeHeight]指定的尺寸，[outputResize]为false时忽略这个值
  final int outputResizeWidth;

  ///用于编辑模式: [outputResize]为true时导出图片会等比压缩到[outputResizeWidth]与[outputResizeHeight]指定的尺寸，[outputResize]为false时忽略这个值
  final int outputResizeHeight;

  ///用于编辑模式: 涂鸦绘制层遮罩颜色
  final Color graffitiMaskColor;

  ///用于编辑模式: 涂鸦线条颜色
  final Color graffitiLineColor;

  ///用于编辑模式: 涂鸦线条粗细
  final double graffitiThickness;

  ///用于编辑模式: 底部工具条的高度
  final double bottomToolBarHeight;

  ///用于编辑模式: 底部工具条的内边距
  final EdgeInsets bottomToolBarPadding;

  const ZyPicture({
    super.key,
    required this.type,
    this.urlList,
    this.heroList,
    this.initialPage,
    this.onFormatUrl,
    this.blankBoxSize = 58,
    this.errorWidget,
    this.loadingWidget,
    this.editTitle,
    this.editBytes,
    this.cropOnly = false,
    this.cropAspectRatio = 1, //为方便生成桥接类，写成了数字，原值为：CropAspectRatios.ratio1_1
    this.jpgQuality = 70,
    this.pngLevel = 6,
    this.gifFactor = 10,
    this.outputResize = true,
    this.outputResizeWidth = 1280,
    this.outputResizeHeight = 1280,
    this.graffitiMaskColor = const Color(0x382196F3),
    this.graffitiLineColor = Colors.red,
    this.graffitiThickness = 3,
    this.bottomToolBarHeight = 58,
    this.bottomToolBarPadding = EdgeInsets.zero,
  })  : assert((type == ZyPictureType.viewer && urlList != null && onFormatUrl != null) || (type != ZyPictureType.viewer && editTitle != null && editBytes != null)),
        assert(graffitiThickness > 0);

  @override
  State<StatefulWidget> createState() => _ZyPictureState();

  ///图片选择器
  static final _imagePicker = ImagePicker();

  ///jpg图片网络媒体类型
  static const mediaTypeJpg = 'image/jpg';

  ///png图片网络媒体类型
  static const mediaTypePng = 'image/png';

  ///gif图片网络媒体类型
  static const mediaTypeGif = 'image/gif';

  ///从相册选择图片
  static Future<Uint8List?> pickFromGallery({int width = 1280, int height = 1280, int quality = 70}) async {
    if (kIsWeb || Platform.isAndroid || Platform.isIOS) {
      //使用ImagePicker选择图片---编码速度更快
      final image = await _imagePicker.pickImage(source: ImageSource.gallery, maxWidth: width.toDouble(), maxHeight: height.toDouble(), imageQuality: quality); //imageQuality越小越模糊，
      return image?.readAsBytes();
    } else {
      //使用FilePicker选择图片---Dart编码较慢
      final result = await FilePicker.platform.pickFiles(
        type: FileType.image,
        allowCompression: true,
        allowMultiple: false,
        withData: true,
        withReadStream: false,
        lockParentWindow: true,
      );
      if (result == null || result.files.isEmpty) return null;
      //读取图片的字节数据
      Uint8List? orgBytes;
      if (result.files.first.bytes != null) {
        orgBytes = result.files.first.bytes;
      } else if (result.files.first.path != null) {
        orgBytes = File(result.files.first.path!).readAsBytesSync();
      }
      if (orgBytes == null) return null;
      //重新编码到指定大小
      Uint8List? resBytes;
      switch (result.files.first.extension?.toLowerCase()) {
        case 'png':
          resBytes = await encodePictureBytes(ZyPictureType.editAsPng, orgBytes, width: width, height: height);
          break;
        case 'gif':
          resBytes = await encodePictureBytes(ZyPictureType.editAsGif, orgBytes, width: width, height: height);
          break;
        default:
          resBytes = await encodePictureBytes(ZyPictureType.editAsJpg, orgBytes, width: width, height: height);
          break;
      }
      return resBytes == null ? null : Uint8List.fromList(resBytes);
    }
  }

  ///从相机选择图片
  static Future<Uint8List?> pickFromCamera({int width = 1280, int height = 1280, int quality = 70}) async {
    if (kIsWeb || Platform.isAndroid || Platform.isIOS) {
      final image = await _imagePicker.pickImage(source: ImageSource.camera, maxWidth: width.toDouble(), maxHeight: height.toDouble(), imageQuality: quality); //imageQuality越小越模糊
      return image?.readAsBytes();
    } else {
      return pickFromGallery(width: width, height: height, quality: quality);
    }
  }

  ///
  ///将图片编码为[type]对应的格式
  ///
  /// * jpgQuality: JPEG质量，范围[0，100]，其中100是最高质量。
  /// * pngLevel: PNG压缩级别，范围[0，9]，其中9是压缩程度最高的。
  /// * gifFactor: GIF采样因子，参考 https://scientificgems.wordpress.com/stuff/neuquant-fast-high-quality-image-quantization/
  ///
  /// * resize: 该值为true且图片超出[width]或[height]范围时，会等比缩小到指定的尺寸
  ///
  static Future<Uint8List?> encodePictureBytes(ZyPictureType type, Uint8List bytes, {int width = 1280, int height = 1280, int jpgQuality = 70, int pngLevel = 6, int gifFactor = 10, bool resize = true, bool isolate = true}) async {
    final params = {'type': type, 'bytes': bytes, 'width': width, 'height': height, 'jpgQuality': jpgQuality, 'pngLevel': pngLevel, 'gifFactor': gifFactor, 'resize': resize};
    if (isolate) {
      return await compute(_encodePictureBytesHandler, params);
    } else {
      return _encodePictureBytesHandler(params);
    }
  }

  ///重新编码为指定格式
  static Uint8List? _encodePictureBytesHandler(Map<String, dynamic> params) {
    final ZyPictureType type = params['type'];
    final Uint8List bytes = params['bytes'];
    final int width = params['width'];
    final int height = params['height'];
    final int jpgQuality = params['jpgQuality'];
    final int pngLevel = params['pngLevel'];
    final int gifFactor = params['gifFactor'];
    final bool resize = params['resize'];
    //解码图片数据
    imagetool.Image? image = imagetool.decodeImage(bytes);
    if (image == null) return null;
    //进行等比压缩
    if (resize) {
      final scale = math.min(width / image.width, height / image.height);
      if (scale < 1) {
        final resizeWidth = math.min((image.width * scale).ceil(), width);
        final resizeHeight = math.min((image.height * scale).ceil(), height);
        image = imagetool.copyResize(image, width: resizeWidth, height: resizeHeight);
      }
    }
    //编码为指定格式
    switch (type) {
      case ZyPictureType.editAsJpg:
        return imagetool.encodeJpg(image, quality: jpgQuality);
      case ZyPictureType.editAsPng:
        return imagetool.encodePng(image, level: pngLevel);
      case ZyPictureType.editAsGif:
        return imagetool.encodeGif(image, samplingFactor: gifFactor);
      default:
        return null;
    }
  }
}

class _ZyPictureState extends State<ZyPicture> {
  static const _debugGraffiti = false; //是否显示涂鸦的绘制层
  final _editorKey = GlobalKey<ExtendedImageEditorState>();
  final _guestureKey = GlobalKey<ExtendedImageGestureState>();
  ExtendedPageController? _pageController;
  _ZyPictureEditMode _currMode = _ZyPictureEditMode.crop;
  Uint8List? _currBytes;

  final List<_ZyPictureGraffitiNode> _graffitiPath = []; //涂鸦位置相对于原始图片的路径
  Rect? _graffitiRect; //涂鸦图片当前的显示矩形
  double _graffitiScale = 0; //涂鸦图片相对于_graffitiRect的缩放比例
  Offset? _graffitiBegin; //涂鸦区域开始位置（相对于屏幕左上角的坐标）
  Offset? _graffitiUpdate; //涂鸦区域最新位置（相对于屏幕左上角的坐标）
  bool _saving = false;

  @override
  void initState() {
    super.initState();
    if (widget.type == ZyPictureType.viewer) {
      _pageController = ExtendedPageController(initialPage: widget.initialPage ?? 0);
    } else {
      _currBytes = widget.editBytes;
      _currMode = widget.cropOnly ? _ZyPictureEditMode.crop : _ZyPictureEditMode.touch;
    }
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final queryData = MediaQuery.of(context);
    if (widget.type == ZyPictureType.viewer) {
      //图片展示
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => ZyApp.pop(),
          child: ExtendedImageGesturePageView.builder(
            reverse: true,
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            itemCount: widget.urlList!.length,
            canScrollPage: (details) => widget.urlList!.length > 1,
            itemBuilder: (BuildContext context, int index) {
              if (widget.heroList != null && widget.heroList!.length == widget.urlList!.length) {
                return ClipRect(
                  child: Hero(
                    // 解决fit不一样时，动画在收起时变化的问题
                    flightShuttleBuilder: (BuildContext flightContext, animation, HeroFlightDirection flightDirection, BuildContext fromHeroContext, BuildContext toHeroContext) {
                      return flightDirection == HeroFlightDirection.pop ? fromHeroContext.widget : toHeroContext.widget;
                    },
                    tag: widget.heroList![index],
                    child: ExtendedImage.network(
                      widget.onFormatUrl == null ? widget.urlList![index] : widget.onFormatUrl!(widget.urlList![index]),
                      fit: BoxFit.contain,
                      mode: ExtendedImageMode.gesture,
                      initGestureConfigHandler: (imagestate) => GestureConfig(inPageView: true, minScale: 1, initialScale: 1),
                      loadStateChanged: (imageState) {
                        switch (imageState.extendedImageLoadState) {
                          case LoadState.loading:
                            return Container(
                              alignment: Alignment.center,
                              width: widget.blankBoxSize,
                              height: widget.blankBoxSize,
                              child: widget.loadingWidget ?? SizedBox(width: widget.blankBoxSize * 0.4, height: widget.blankBoxSize * 0.4, child: const CircularProgressIndicator(strokeWidth: 2.0)),
                            );
                          case LoadState.failed:
                            return Container(
                              alignment: Alignment.center,
                              width: widget.blankBoxSize,
                              height: widget.blankBoxSize,
                              child: widget.errorWidget ?? Icon(Icons.broken_image_outlined, size: widget.blankBoxSize * 0.5, color: Colors.grey),
                            );
                          case LoadState.completed:
                            return null;
                        }
                      },
                    ),
                  ),
                );
              } else {
                return ClipRect(
                  child: ExtendedImage.network(
                    widget.onFormatUrl == null ? widget.urlList![index] : widget.onFormatUrl!(widget.urlList![index]),
                    fit: BoxFit.contain,
                    mode: ExtendedImageMode.gesture,
                    initGestureConfigHandler: (imagestate) => GestureConfig(inPageView: true, minScale: 1, initialScale: 1),
                    loadStateChanged: (imageState) {
                      switch (imageState.extendedImageLoadState) {
                        case LoadState.loading:
                          return Container(
                            alignment: Alignment.center,
                            width: widget.blankBoxSize,
                            height: widget.blankBoxSize,
                            child: widget.loadingWidget ?? SizedBox(width: widget.blankBoxSize * 0.4, height: widget.blankBoxSize * 0.4, child: const CircularProgressIndicator(strokeWidth: 2.0)),
                          );
                        case LoadState.failed:
                          return Container(
                            alignment: Alignment.center,
                            width: widget.blankBoxSize,
                            height: widget.blankBoxSize,
                            child: widget.errorWidget ?? Icon(Icons.broken_image_outlined, size: widget.blankBoxSize * 0.5, color: Colors.grey),
                          );
                        case LoadState.completed:
                          return null;
                      }
                    },
                  ),
                );
              }
            },
          ),
        ),
      );
    } else {
      //图片编辑
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(widget.editTitle ?? ''),
          actions: [IconButton(icon: const Icon(Icons.done), onPressed: () => _onSureBtnPressed(queryData))],
        ),
        body: ClipRect(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: ExtendedImage.memory(
                  _currBytes!,
                  fit: BoxFit.contain,
                  mode: _currMode == _ZyPictureEditMode.crop ? ExtendedImageMode.editor : ExtendedImageMode.gesture,
                  extendedImageEditorKey: _editorKey,
                  extendedImageGestureKey: _guestureKey,
                  initGestureConfigHandler: (imagestate) => GestureConfig(inPageView: false, minScale: 1, initialScale: 1),
                  initEditorConfigHandler: (state) {
                    return EditorConfig(
                      maxScale: 8,
                      cornerColor: themeData.colorScheme.secondary,
                      cropAspectRatio: widget.cropOnly ? widget.cropAspectRatio : CropAspectRatios.custom,
                      initCropRectType: InitCropRectType.layoutRect,
                      editorMaskColorHandler: (context, down) => themeData.scaffoldBackgroundColor.withOpacity(0.4),
                    );
                  },
                  afterPaintImage: (canvas, rect, image, paint) {
                    //计算缩放比例
                    _graffitiRect = rect;
                    _graffitiScale = rect.width / image.width;
                    //初始化画笔
                    final paint = Paint();
                    paint.isAntiAlias = true; //抗锯齿
                    paint.style = PaintingStyle.stroke;
                    paint.color = widget.graffitiLineColor;
                    paint.strokeWidth = widget.graffitiThickness;
                    //绘制调试背景
                    if (_currMode == _ZyPictureEditMode.rect || _currMode == _ZyPictureEditMode.circle) {
                      canvas.drawRect(rect, Paint()..color = widget.graffitiMaskColor);
                    }
                    //绘制涂鸦路径
                    for (var element in _graffitiPath) {
                      if (element.mode == _ZyPictureEditMode.rect) {
                        canvas.drawRect(
                          Rect.fromLTWH(
                            element.rect.left * _graffitiScale + rect.left,
                            element.rect.top * _graffitiScale + rect.top,
                            element.rect.width * _graffitiScale,
                            element.rect.height * _graffitiScale,
                          ),
                          paint,
                        );
                      } else if (element.mode == _ZyPictureEditMode.circle) {
                        canvas.drawCircle(
                          Offset(
                            (element.rect.left + element.rect.width * 0.5) * _graffitiScale + rect.left,
                            (element.rect.top + element.rect.height * 0.5) * _graffitiScale + rect.top,
                          ),
                          math.min(element.rect.width, element.rect.height) * 0.5 * _graffitiScale,
                          paint,
                        );
                      }
                    }
                    //绘制当前涂鸦
                    if (_graffitiBegin != null && _graffitiUpdate != null) {
                      final x = math.min(_graffitiBegin!.dx, _graffitiUpdate!.dx);
                      final y = math.min(_graffitiBegin!.dy, _graffitiUpdate!.dy);
                      final w = (_graffitiBegin!.dx - _graffitiUpdate!.dx).abs();
                      final h = (_graffitiBegin!.dy - _graffitiUpdate!.dy).abs();
                      if (_currMode == _ZyPictureEditMode.rect) {
                        canvas.drawRect(Rect.fromLTWH(x, y, w, h), paint);
                      } else if (_currMode == _ZyPictureEditMode.circle) {
                        canvas.drawCircle(Offset(x + w * 0.5, y + h * 0.5), math.min(w, h) * 0.5, paint);
                        paint.color = widget.graffitiLineColor.withOpacity(0.5);
                        canvas.drawRect(Rect.fromLTWH(x, y, w, h), paint); //绘制范围
                      }
                    }
                  },
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                bottom: 0,
                child: _currMode == _ZyPictureEditMode.crop || _currMode == _ZyPictureEditMode.touch ? const SizedBox() : _buildGraffitiHandler(),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: widget.bottomToolBarHeight,
          padding: widget.bottomToolBarPadding,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: _buildBottomAppBarItems(themeData)),
        ),
      );
    }
  }

  Widget _buildGraffitiHandler() {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: _debugGraffiti ? Container(color: Colors.blue.withOpacity(0.5)) : null,
      onPanDown: (details) {
        if (_graffitiRect == null) return;
        _graffitiBegin = Offset(details.globalPosition.dx, details.globalPosition.dy);
      },
      onPanUpdate: (details) {
        if (_graffitiRect == null || _graffitiBegin == null) return;
        if (mounted) {
          setState(() {
            _graffitiUpdate = Offset(details.globalPosition.dx, details.globalPosition.dy);
          });
        }
      },
      onPanEnd: (details) {
        if (_graffitiRect == null || _graffitiBegin == null || _graffitiUpdate == null) return;
        final x = (math.min(_graffitiBegin!.dx, _graffitiUpdate!.dx) - _graffitiRect!.left) / _graffitiScale;
        final y = (math.min(_graffitiBegin!.dy, _graffitiUpdate!.dy) - _graffitiRect!.top) / _graffitiScale;
        final w = (_graffitiBegin!.dx - _graffitiUpdate!.dx).abs() / _graffitiScale;
        final h = (_graffitiBegin!.dy - _graffitiUpdate!.dy).abs() / _graffitiScale;
        if (mounted) {
          setState(() {
            final minsize = widget.graffitiThickness * 2;
            if (w > minsize && h > minsize) _graffitiPath.add(_ZyPictureGraffitiNode(_currMode, Rect.fromLTWH(x, y, w, h)));
            _graffitiBegin = null;
            _graffitiUpdate = null;
          });
        }
      },
      onPanCancel: () {
        if (_graffitiRect == null || _graffitiBegin == null || _graffitiUpdate == null) return;
        final x = (math.min(_graffitiBegin!.dx, _graffitiUpdate!.dx) - _graffitiRect!.left) / _graffitiScale;
        final y = (math.min(_graffitiBegin!.dy, _graffitiUpdate!.dy) - _graffitiRect!.top) / _graffitiScale;
        final w = (_graffitiBegin!.dx - _graffitiUpdate!.dx).abs() / _graffitiScale;
        final h = (_graffitiBegin!.dy - _graffitiUpdate!.dy).abs() / _graffitiScale;
        if (mounted) {
          setState(() {
            final minsize = widget.graffitiThickness * 2;
            if (w > minsize && h > minsize) _graffitiPath.add(_ZyPictureGraffitiNode(_currMode, Rect.fromLTWH(x, y, w, h)));
            _graffitiBegin = null;
            _graffitiUpdate = null;
          });
        }
      },
    );
  }

  List<Widget> _buildBottomAppBarItems(ThemeData themeData) {
    if (_currMode == _ZyPictureEditMode.crop) {
      return [
        widget.cropOnly
            ? const SizedBox()
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  _editorKey.currentState?.reset();
                  _setCurrentModeAndRefresh(_ZyPictureEditMode.touch);
                },
              ),
        IconButton(
          icon: const Icon(Icons.rotate_left),
          onPressed: () => _editorKey.currentState?.rotate(right: false),
        ),
        IconButton(
          icon: const Icon(Icons.flip),
          onPressed: () => _editorKey.currentState?.flip(),
        ),
        IconButton(
          icon: const Icon(Icons.rotate_right),
          onPressed: () => _editorKey.currentState?.rotate(right: true),
        ),
        widget.cropOnly
            ? const SizedBox()
            : IconButton(
                icon: const Icon(Icons.done),
                onPressed: () {
                  _cropFlipRotatePicture(updateCurrBytes: true); //reset()前执行
                  _editorKey.currentState?.reset();
                  _setCurrentModeAndRefresh(_ZyPictureEditMode.touch);
                },
              ),
      ];
    } else {
      return [
        IconButton(
          icon: const Icon(Icons.crop),
          //限制只能裁剪一次，不然无限裁剪到一定次数会出问题
          onPressed: _currBytes == widget.editBytes
              ? () {
                  _graffitiPath.clear();
                  _guestureKey.currentState?.reset();
                  _setCurrentModeAndRefresh(_ZyPictureEditMode.crop);
                }
              : null,
        ),
        IconButton(
          icon: Icon(Icons.swipe_outlined, color: _currMode == _ZyPictureEditMode.touch ? themeData.colorScheme.secondary : null),
          onPressed: () => _setCurrentModeAndRefresh(_ZyPictureEditMode.touch),
        ),
        IconButton(
          icon: Icon(Icons.crop_din_outlined, color: _currMode == _ZyPictureEditMode.rect ? themeData.colorScheme.secondary : null),
          onPressed: () => _setCurrentModeAndRefresh(_ZyPictureEditMode.rect),
        ),
        IconButton(
          icon: Icon(Icons.circle_outlined, color: _currMode == _ZyPictureEditMode.circle ? themeData.colorScheme.secondary : null),
          onPressed: () => _setCurrentModeAndRefresh(_ZyPictureEditMode.circle),
        ),
        IconButton(
          icon: const Icon(Icons.restore_outlined),
          onPressed: () {
            _currBytes = widget.editBytes; //重置为初始数据
            _graffitiPath.clear();
            _guestureKey.currentState?.reset();
            _setCurrentModeAndRefresh(_ZyPictureEditMode.touch);
          },
        ),
      ];
    }
  }

  void _setCurrentModeAndRefresh(_ZyPictureEditMode mode) {
    if (mounted) {
      setState(() {
        _currMode = mode;
      });
    }
  }

  imagetool.Image? _cropFlipRotatePicture({required bool updateCurrBytes}) {
    //解码
    imagetool.Image? image = imagetool.decodeImage(_currBytes!);
    if (image == null) return image;
    //变化
    final editAction = _editorKey.currentState?.editAction;
    if (editAction == null) return image;
    // print('---->editAction');
    //裁剪
    final cropRect = _editorKey.currentState?.getCropRect();
    if (cropRect != null) {
      // print('---->裁剪');
      image = imagetool.copyCrop(image, x: cropRect.left.toInt(), y: cropRect.top.toInt(), width: cropRect.width.toInt(), height: cropRect.height.toInt());
    }
    //翻转
    if (editAction.needFlip) {
      // print('---->翻转');
      if (editAction.flipY && editAction.flipX) {
        image = imagetool.flip(image, direction: imagetool.FlipDirection.both);
      } else if (editAction.flipY) {
        image = imagetool.flip(image, direction: imagetool.FlipDirection.horizontal);
      } else if (editAction.flipX) {
        image = imagetool.flip(image, direction: imagetool.FlipDirection.vertical);
      }
    }
    //旋转
    if (editAction.hasRotateAngle) {
      // print('---->旋转');
      image = imagetool.copyRotate(image, angle: editAction.rotateAngle);
    }
    //设置字节数据
    if (updateCurrBytes) {
      // print('---->数据');
      switch (widget.type) {
        case ZyPictureType.editAsJpg:
          _currBytes = Uint8List.fromList(imagetool.encodeJpg(image, quality: widget.jpgQuality));
          break;
        case ZyPictureType.editAsPng:
          _currBytes = Uint8List.fromList(imagetool.encodePng(image, level: widget.pngLevel));
          break;
        case ZyPictureType.editAsGif:
          _currBytes = Uint8List.fromList(imagetool.encodeGif(image, samplingFactor: widget.gifFactor));
          break;
        default:
          break;
      }
    }
    return image;
  }

  void _onSureBtnPressed(MediaQueryData queryData) async {
    if (_saving) return;
    _saving = true;
    //变换
    imagetool.Image? image = _cropFlipRotatePicture(updateCurrBytes: false);
    if (image == null) {
      ZyApp.pop();
      return;
    }
    //涂鸦
    for (var element in _graffitiPath) {
      final repreat = queryData.devicePixelRatio * widget.graffitiThickness; //加粗
      if (element.mode == _ZyPictureEditMode.rect) {
        for (int i = 0; i < repreat; i++) {
          imagetool.drawRect(
            image,
            x1: element.rect.left.toInt() - i,
            y1: element.rect.top.toInt() - i,
            x2: element.rect.right.toInt() + i,
            y2: element.rect.bottom.toInt() + i,
            color: imagetool.ColorRgba8(widget.graffitiLineColor.red, widget.graffitiLineColor.green, widget.graffitiLineColor.blue, widget.graffitiLineColor.alpha),
          );
        }
      } else if (element.mode == _ZyPictureEditMode.circle) {
        for (int i = 0; i < repreat; i++) {
          imagetool.drawCircle(
            image,
            x: (element.rect.left + element.rect.width * 0.5).toInt(),
            y: (element.rect.top + element.rect.height * 0.5).toInt(),
            radius: (math.min(element.rect.width, element.rect.height) * 0.5).toInt() + i,
            color: imagetool.ColorRgba8(widget.graffitiLineColor.red, widget.graffitiLineColor.green, widget.graffitiLineColor.blue, widget.graffitiLineColor.alpha),
          );
        }
      }
    }
    //尺寸
    if (widget.outputResize) {
      // print('---->resize');
      //进行等比压缩
      final scale = math.min(widget.outputResizeWidth / image.width, widget.outputResizeHeight / image.height);
      if (scale < 1) {
        final resizeWidth = math.min((image.width * scale).ceil(), widget.outputResizeWidth);
        final resizeHeight = math.min((image.height * scale).ceil(), widget.outputResizeHeight);
        image = imagetool.copyResize(image, width: resizeWidth, height: resizeHeight);
      }
    }
    //编码
    switch (widget.type) {
      case ZyPictureType.editAsJpg:
        ZyApp.pop(imagetool.encodeJpg(image, quality: widget.jpgQuality));
        return;
      case ZyPictureType.editAsPng:
        ZyApp.pop(imagetool.encodePng(image, level: widget.pngLevel));
        return;
      case ZyPictureType.editAsGif:
        ZyApp.pop(imagetool.encodeGif(image, samplingFactor: widget.gifFactor));
        return;
      default:
        ZyApp.pop();
        return;
    }
  }
}

///
///图片编辑器当前状态
///
enum _ZyPictureEditMode {
  ///裁剪状态
  crop,

  ///拖拽状态
  touch,

  ///矩形涂鸦状态
  rect,

  ///圆形涂鸦状态
  circle,
}

///
///图片编辑器涂鸦节点
///
class _ZyPictureGraffitiNode {
  ///类型
  final _ZyPictureEditMode mode;

  ///矩形范围
  final Rect rect;

  _ZyPictureGraffitiNode(this.mode, this.rect);
}
