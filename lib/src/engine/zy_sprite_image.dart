import 'dart:ui';

import 'zy_anchor.dart';
import 'zy_merger.dart';

///
///精灵图片
///
class ZySpriteImage {
  ///原始图片
  final Image image;

  ///截取区域
  final Rect source;

  const ZySpriteImage({
    required this.image,
    required this.source,
  });

  ///内容尺寸
  Size get size => Size(source.width, source.height);

  ///绘制到[canvas]
  void render(Canvas canvas, {required Offset position, required ZyAnchor anchor, required Paint paint}) {
    final destination = Rect.fromLTWH(
      position.dx - source.width * anchor.x,
      position.dy - source.height * anchor.y,
      source.width,
      source.height,
    );
    canvas.drawImageRect(image, source, destination, paint);
  }

  ///转换为图片
  ///
  ///注意：这是一个繁重的异步操作，不应在游戏循环内部调用。不再使用[Image]对象时，记得调用[Image.dispose]方法释放资源
  Future<Image> toImage() {
    final merger = ZyMerger()..add(image: image, position: Offset.zero, source: source);
    return merger.merge();
  }
}
