import 'package:flutter/material.dart';

///
///分割线
///
class ZyDivider {
  ///撑满一整行
  static const forFull = Divider();

  ///用于[ListTile]小部件，[ListTile.leading]为空
  static const forListTileLeadingNone = Divider(indent: 16);

  ///用于[ListTile]小部件，[ListTile.leading]为[Icon]
  static const forListTileLeadingIcon = Divider(indent: 56);

  ///用于[ListTile]小部件，[ListTile.leading]为超小尺寸头像
  static const forListTileLeadingAvatorMini = Divider(indent: 64);

  ///用于[ListTile]小部件，[ListTile.leading]为小尺寸头像
  static const forListTileLeadingAvatorSmall = Divider(indent: 72);

  ///用于[ListTile]小部件，[ListTile.leading]为中等尺寸头像
  static const forListTileLeadingAvatorMedium = Divider(indent: 76);

  ///用于[ListTile]小部件，[ListTile.leading]为大尺寸头像
  static const forListTileLeadingAvatorLarge = Divider(indent: 84);
}
