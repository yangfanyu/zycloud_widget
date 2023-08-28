import 'dart:ui';

///
///合图器
///
class ZyMerger {
  ///混合方式
  final BlendMode blendMode;

  ///消除锯齿
  final bool isAntiAlias;

  ///合图画笔
  final Paint _mergePaint;

  ///碎片缓存
  final List<_ZyMergeFragment> _fragments;

  ZyMerger({
    this.blendMode = BlendMode.srcOver,
    this.isAntiAlias = false,
  })  : _mergePaint = Paint()
          ..blendMode = blendMode
          ..isAntiAlias = isAntiAlias,
        _fragments = [];

  ///添加碎片，[image]为原始图片，[position]为放置坐标，[source]为截取区域
  void add({required Image image, required Offset position, required Rect source}) {
    final imageRect = Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble());
    assert(imageRect.topLeft <= source.topLeft && imageRect.bottomRight >= source.bottomRight, 'Source rect should fit within the image');
    _fragments.add(_ZyMergeFragment(image: image, position: position, source: source));
  }

  ///将碎片合成一张图片
  ///
  ///注意：这是一个繁重的异步操作，不应在游戏循环内部调用。不再使用[Image]对象时，记得调用[Image.dispose]方法释放资源
  Future<Image> merge() {
    Rect output = Rect.zero; //输出矩形
    final recorder = PictureRecorder();
    final canvas = Canvas(recorder);
    for (final item in _fragments) {
      final destination = Rect.fromLTWH(item.position.dx, item.position.dy, item.source.width, item.source.height);
      canvas.drawImageRect(item.image, item.source, destination, _mergePaint);
      output = output.expandToInclude(destination); //扩充矩形
    }
    return recorder.endRecording()._toImageSafe(output.width.toInt(), output.height.toInt());
  }

  ///清空碎片
  void clear() => _fragments.clear();
}

///
///合图碎片
///
class _ZyMergeFragment {
  ///原始图片
  final Image image;

  ///放置坐标
  final Offset position;

  ///截取区域
  final Rect source;

  _ZyMergeFragment({
    required this.image,
    required this.position,
    required this.source,
  });
}

///
///将[Picture]转换为[Image]之后释放资源
///
extension on Picture {
  Future<Image> _toImageSafe(int width, int height) {
    return toImage(width, height).then((image) {
      dispose();
      return image;
    });
  }
}
