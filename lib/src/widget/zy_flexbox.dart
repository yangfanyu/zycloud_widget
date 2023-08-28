import 'package:flutter/material.dart';

///
///[Flex]的封装
///
class ZyFlexBox extends StatelessWidget {
  ///数据的数量
  final int itemCount;

  ///子项构建器
  final Widget Function(BuildContext context, int index) itemBuilder;

  /* ******** Flex 配置信息 ******** */

  final Axis direction;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;
  final TextBaseline? textBaseline;
  final Clip clipBehavior;

  const ZyFlexBox({
    super.key,
    required this.itemCount,
    required this.itemBuilder,

    ///Flex 配置信息
    this.direction = Axis.horizontal,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.stretch, //原始默认值为CrossAxisAlignment.center
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.clipBehavior = Clip.none,
  });

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: direction,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      clipBehavior: clipBehavior,
      children: {for (var i = 0; i < itemCount; i++) itemBuilder(context, i)}.toList(),
    );
  }
}
