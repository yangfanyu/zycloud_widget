///
///绘制的锚点
///
class ZyAnchor {
  static const topLeft = ZyAnchor(0.0, 0.0);
  static const topCenter = ZyAnchor(0.5, 0.0);
  static const topRight = ZyAnchor(1.0, 0.0);
  static const centerLeft = ZyAnchor(0.0, 0.5);
  static const center = ZyAnchor(0.5, 0.5);
  static const centerRight = ZyAnchor(1.0, 0.5);
  static const bottomLeft = ZyAnchor(0.0, 1.0);
  static const bottomCenter = ZyAnchor(0.5, 1.0);
  static const bottomRight = ZyAnchor(1.0, 1.0);

  ///相对于对象宽度的x轴偏移：0表示最左边，1表示最右边
  final double x;

  ///相对于对象高度的y轴偏移：0表示最顶部，1表示最底部
  final double y;

  const ZyAnchor(this.x, this.y);
}
