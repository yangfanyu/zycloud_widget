import 'dart:ui';

import 'zy_sprite_image.dart';

///
///精灵图集
///
class ZySpriteSheet {
  ///原始图片
  final Image image;

  ///切割尺寸
  final Size srcSize;

  ///切割缓存
  final Map<int, ZySpriteImage> _spriteImages = {};

  ZySpriteSheet({
    required this.image,
    required this.srcSize,
  });

  ///使用图像高度和图块大小计算图像的总行数
  int get totalRow => image.height ~/ srcSize.height;

  ///使用图像宽度和图块大小计算图像的总列数
  int get totalCol => image.width ~/ srcSize.width;

  ///从切割网格中获取位置为[row]和[col]的精灵图片对象
  ZySpriteImage getSpriteImage(int row, int col) => getSpriteImageById(row * totalCol + col);

  ///从切割网格中获取索引标志为[id]的精灵图片对象，itemId = row * totalCol + col
  ZySpriteImage getSpriteImageById(int id) => _spriteImages[id] ??= _createSpriteImage(id);

  ZySpriteImage _createSpriteImage(int id) {
    final row = id ~/ totalCol;
    final col = id % totalCol;
    return ZySpriteImage(
      image: image,
      source: Rect.fromLTWH(col * srcSize.width, row * srcSize.height, srcSize.width, srcSize.height),
    );
  }
}
