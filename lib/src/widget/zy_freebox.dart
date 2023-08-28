import 'package:flutter/material.dart';

///
///[Stack]的封装
///
class ZyFreeBox extends StatelessWidget {
  ///数据的数量
  final int itemCount;

  ///子项构建器
  final Widget Function(BuildContext context, int index) itemBuilder;

  /* ******** Stack 配置信息 ******** */

  final AlignmentGeometry alignment;
  final TextDirection? textDirection;
  final StackFit fit;
  final Clip clipBehavior;

  const ZyFreeBox({
    super.key,
    required this.itemCount,
    required this.itemBuilder,

    ///Stack 配置信息
    this.alignment = AlignmentDirectional.topStart,
    this.textDirection,
    this.fit = StackFit.loose,
    this.clipBehavior = Clip.hardEdge,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: alignment,
      textDirection: textDirection,
      fit: fit,
      clipBehavior: clipBehavior,
      children: {for (var i = 0; i < itemCount; i++) itemBuilder(context, i)}.toList(),
    );
  }
}
