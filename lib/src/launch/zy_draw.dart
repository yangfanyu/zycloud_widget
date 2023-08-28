import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shelf_easy/shelf_easy.dart';

///
///自定义绘制器，是[CustomPainter]的替代
///
class ZyDraw extends CustomPainter with VmSuper {
  @override
  void paint(Canvas canvas, Size size) {
    if (isInitedByVmware && hasChildProperty('paint')) {
      VmObject.readValue(getProperty('paint').runFunction([canvas, size], null));
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    if (isInitedByVmware && hasChildProperty('shouldRepaint')) {
      return VmObject.readValue(getProperty('shouldRepaint').runFunction([oldDelegate], null));
    } else {
      return false;
    }
  }
}

///
///自定义绘制器，是[BoxPainter]的替代
///
class ZyDrawBox extends BoxPainter with VmSuper {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    if (isInitedByVmware && hasChildProperty('paint')) {
      VmObject.readValue(getProperty('paint').runFunction([canvas, offset, configuration], null));
    }
  }
}

///
///自定义装饰器，是[Decoration]的替代
///
class ZyDrawDecoration extends Decoration with VmSuper {
  @nonVirtual
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => createDrawBox();

  ///执行[createBoxPainter]逻辑的方法
  ZyDrawBox createDrawBox() {
    if (isInitedByVmware && hasChildProperty('createDrawBox')) {
      return VmObject.readValue(getProperty('createDrawBox').runFunction(null, null));
    } else {
      throw UnimplementedError();
    }
  }

  @override
  Path getClipPath(Rect rect, TextDirection textDirection) {
    if (isInitedByVmware && hasChildProperty('getClipPath')) {
      return VmObject.readValue(getProperty('getClipPath').runFunction([rect, textDirection], null));
    } else {
      throw UnimplementedError();
    }
  }
}
