import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../assets/china_province.dart';
import '../launch/zy_app.dart';
import 'zy_border.dart';
import 'zy_button.dart';

///
///底部框类型
///
enum ZySheetType {
  ///自由定义
  free,

  ///列表选择
  list,

  ///数字输入
  code,

  ///日期选择
  date,

  ///城区选择（中国）
  city,
}

///
///底部框
///
class ZySheet extends StatelessWidget {
  ///底部框的类型
  final ZySheetType type;

  ///自由定义部件
  final Widget? freeWidget;

  ///列表选择参数
  final List<ZySheetItemParams>? listParams;

  ///数字输入参数
  final ZySheetCodeParams? codeParams;

  ///日期选择参数
  final ZySheetDateParams? dateParams;

  ///城区选择参数
  final ZySheetCityParams? cityParams;

  ///取消按钮，仅用于free与list模式
  final String? cancelText;

  ///取消按钮与主内容的距离
  final double cancelSpace;

  ///圆角半径
  final BorderRadius radius;

  ///内边距离
  final EdgeInsets padding;

  ///图标尺寸
  final double iconSize;

  ///高度占比
  final double? heightFactor;

  const ZySheet({
    super.key,
    this.type = ZySheetType.free,
    this.freeWidget,
    this.listParams,
    this.codeParams,
    this.dateParams,
    this.cityParams,
    this.cancelText,
    this.cancelSpace = 8,
    this.radius = const BorderRadius.all(Radius.circular(8)),
    this.padding = const EdgeInsets.all(16),
    this.iconSize = 28,
    this.heightFactor,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final queryData = MediaQuery.of(context);
    return ConstrainedBox(
      constraints: heightFactor == null ? const BoxConstraints() : BoxConstraints(maxHeight: queryData.size.height * heightFactor!),
      child: Ink(
        decoration: ShapeDecoration(
          color: themeData.cardColor,
          shape: ZyBorder.getRoundedRectangleBorderThin(themeData, false, borderRadius: radius.copyWith(bottomLeft: Radius.zero, bottomRight: Radius.zero)),
        ),
        child: SafeArea(
          child: type == ZySheetType.list
              ? SingleChildScrollView(
                  child: Column(mainAxisSize: MainAxisSize.min, children: _buildContent(themeData)),
                )
              : Column(mainAxisSize: MainAxisSize.min, children: _buildContent(themeData)),
        ),
      ),
    );
  }

  List<Widget> _buildContent(ThemeData themeData) {
    switch (type) {
      case ZySheetType.free:
        final children = <Widget>[freeWidget!];
        if (cancelText != null && cancelText!.trim() != '') {
          children.add(const Divider());
          children.add(Container(color: themeData.scaffoldBackgroundColor, height: cancelSpace));
          children.add(const Divider());
          children.add(ListTile(title: Text(cancelText!, textAlign: TextAlign.center, style: themeData.textTheme.titleMedium), onTap: () => ZyApp.pop()));
        }
        return children;
      case ZySheetType.list:
        final children = <Widget>[];
        for (var e in listParams!) {
          children.add(ListTile(title: Text(e.text, textAlign: TextAlign.center, style: themeData.textTheme.titleMedium?.copyWith(color: e.color)), onTap: () => ZyApp.pop(e)));
          if (e != listParams!.last) children.add(const Divider());
        }
        if (cancelText != null && cancelText!.trim() != '') {
          children.add(const Divider());
          children.add(Container(color: themeData.scaffoldBackgroundColor, height: cancelSpace));
          children.add(const Divider());
          children.add(ListTile(title: Text(cancelText!, textAlign: TextAlign.center, style: themeData.textTheme.titleMedium), onTap: () => ZyApp.pop()));
        }
        return children;
      case ZySheetType.code:
        final unitStyle = themeData.textTheme.titleMedium;
        final valueStyle = themeData.textTheme.headlineSmall?.copyWith(color: themeData.colorScheme.secondary, fontWeight: FontWeight.bold);
        return [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: Icon(Icons.close, size: iconSize), padding: padding, onPressed: () => ZyApp.pop()),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: valueStyle?.fontSize,
                    padding: const EdgeInsets.only(top: 2),
                    alignment: Alignment.bottomRight,
                    child: codeParams!.topIcon == null ? const SizedBox() : Icon(codeParams!.topIcon, color: unitStyle?.color, size: (unitStyle?.fontSize ?? 17) + 3),
                  ),
                  const SizedBox(width: 4),
                  Text(codeParams!.topText ?? '', style: valueStyle),
                  const SizedBox(width: 4),
                  Container(
                    height: valueStyle?.fontSize,
                    padding: const EdgeInsets.only(top: 2),
                    alignment: Alignment.bottomLeft,
                    child: Text(codeParams!.topUnit ?? '', style: unitStyle),
                  )
                ],
              ),
              IconButton(icon: Icon(Icons.check, size: iconSize), padding: padding, onPressed: () => ZyApp.pop(codeParams)),
            ],
          ),
          ZySheetCodeInput(
            initParams: codeParams!,
            onValueChange: (value) {}, //内部已同步啥都不用干
          ),
        ];
      case ZySheetType.date:
        return [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: Icon(Icons.close, size: iconSize), padding: padding, onPressed: () => ZyApp.pop()),
              IconButton(icon: Icon(Icons.check, size: iconSize), padding: padding, onPressed: () => ZyApp.pop(dateParams)),
            ],
          ),
          Expanded(
            child: CupertinoTheme(
              data: CupertinoThemeData(brightness: themeData.brightness),
              child: CupertinoDatePicker(
                mode: dateParams!.mode,
                onDateTimeChanged: (value) => dateParams!.value = value, //同步value值
                initialDateTime: dateParams!.initialDateTime,
                minimumDate: dateParams!.minimumDate,
                maximumDate: dateParams!.maximumDate,
                minimumYear: dateParams!.minimumYear,
                maximumYear: dateParams!.maximumYear,
                minuteInterval: dateParams!.minuteInterval,
                use24hFormat: dateParams!.use24hFormat,
                dateOrder: dateParams!.dateOrder,
                backgroundColor: dateParams!.backgroundColor,
              ),
            ),
          ),
        ];
      case ZySheetType.city:
        return [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: Icon(Icons.close, size: iconSize), padding: padding, onPressed: () => ZyApp.pop()),
              IconButton(icon: Icon(Icons.check, size: iconSize), padding: padding, onPressed: () => ZyApp.pop(cityParams)),
            ],
          ),
          Expanded(
            child: CupertinoTheme(
              data: CupertinoThemeData(brightness: themeData.brightness),
              child: ZySheetCityPicker(
                initParams: cityParams!,
                onValueChange: (value) {}, //内部已同步啥都不用干
              ),
            ),
          ),
        ];
    }
  }
}

///
///列表子项参数
///
class ZySheetItemParams {
  final int id;
  final String text;
  final Color? color;
  final dynamic data;

  ZySheetItemParams({
    required this.id,
    required this.text,
    this.color,
    this.data,
  });
}

///
///数字输入参数
///
class ZySheetCodeParams {
  final IconData? topIcon;
  final String? topText;
  final String? topUnit;
  final String? hintText;
  final String? emptyText;
  final bool empty;
  final int length;
  String value;

  ZySheetCodeParams({
    this.topIcon,
    this.topText,
    this.topUnit,
    this.hintText,
    this.emptyText,
    required this.empty,
    required this.length,
  }) : value = '';
}

///
///日期选择参数
///
class ZySheetDateParams {
  final CupertinoDatePickerMode mode;
  final DateTime? initialDateTime;
  final DateTime? minimumDate;
  final DateTime? maximumDate;
  final int minimumYear;
  final int? maximumYear;
  final int minuteInterval;
  final bool use24hFormat;
  final DatePickerDateOrder? dateOrder;
  final Color? backgroundColor;
  DateTime? value;

  ZySheetDateParams({
    this.mode = CupertinoDatePickerMode.dateAndTime,
    this.initialDateTime,
    this.minimumDate,
    this.maximumDate,
    this.minimumYear = 1,
    this.maximumYear,
    this.minuteInterval = 1,
    this.use24hFormat = false,
    this.dateOrder,
    this.backgroundColor,
  }) : value = initialDateTime;
}

///
///城区选择参数
///
class ZySheetCityParams {
  final String initCode;
  final String initProvince;
  final String initCity;
  final String initDistrict;
  final double itemExtent;
  final EdgeInsets itemPadding;

  String code;
  String province;
  String city;
  String district;

  ZySheetCityParams({
    required this.initCode,
    required this.initProvince,
    required this.initCity,
    required this.initDistrict,
    this.itemExtent = 40,
    this.itemPadding = const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
  })  : code = initCode,
        province = initProvince,
        city = initCity,
        district = initDistrict;
}

///
///数字输入控件
///
class ZySheetCodeInput extends StatefulWidget {
  final ZySheetCodeParams initParams;
  final void Function(ZySheetCodeParams value) onValueChange;

  const ZySheetCodeInput({
    super.key,
    required this.initParams,
    required this.onValueChange,
  });

  @override
  State<StatefulWidget> createState() => _ZySheetCodeInputState();
}

///
///数字输入状态
///
class _ZySheetCodeInputState extends State<ZySheetCodeInput> {
  static const _gapLarge = 24.0;
  static const _gapMedium = 16.0;
  static const _gapSmall = 12.0;
  static const _btnRadius = 8.0;
  static const _btnHeight = 56.0;
  static const _keyvalsH = [4, 5, 6, 7, 8, 9, -2, 0, 1, 2, 3, -1];
  static const _keyvalsV = [7, 8, 9, 4, 5, 6, 1, 2, 3, -2, 0, -1];
  final _resultList = <String>[];

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final queryData = MediaQuery.of(context);
    final inputWidth = min(52.0, (queryData.size.width - 16 * (widget.initParams.length + 1)) / widget.initParams.length);
    final horizontal = queryData.orientation == Orientation.landscape;
    if (widget.initParams.empty) {
      return Container(
        height: queryData.size.height * 0.5,
        padding: const EdgeInsets.only(left: _gapMedium, right: _gapMedium, top: _gapMedium, bottom: _gapMedium * 3),
        child: Center(child: Text(widget.initParams.emptyText ?? '', style: themeData.textTheme.bodyMedium)),
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        horizontal ? const SizedBox() : const SizedBox(height: _gapMedium),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(),
            ...{
              for (int i = 0; i < widget.initParams.length; i++)
                ZyButton(
                  minWidth: inputWidth,
                  height: inputWidth,
                  border: true,
                  borderSize: 1,
                  borderColor: themeData.textTheme.bodySmall?.color?.withOpacity(0.35),
                  radius: const BorderRadius.all(Radius.circular(_btnRadius)),
                  color: themeData.cardColor,
                  onPressed: () {},
                  child: Text(i < _resultList.length ? _resultList[i] : '', style: themeData.textTheme.headlineSmall?.copyWith(color: themeData.colorScheme.secondary)),
                )
            },
            const SizedBox(),
          ],
        ),
        horizontal ? const SizedBox(height: _gapMedium) : const SizedBox(height: _gapLarge),
        Text(widget.initParams.hintText ?? '', style: themeData.textTheme.bodyMedium),
        SizedBox(
          height: horizontal ? (_btnHeight * 2 + _gapSmall * 1 + _gapMedium * 2) : (_btnHeight * 4 + _gapSmall * 3 + _gapLarge * 2),
          child: GridView.builder(
            padding: horizontal ? const EdgeInsets.symmetric(horizontal: _gapSmall, vertical: _gapMedium) : const EdgeInsets.symmetric(horizontal: _gapSmall, vertical: _gapLarge),
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: horizontal ? 6 : 3,
              crossAxisSpacing: _gapSmall,
              mainAxisSpacing: _gapSmall,
              mainAxisExtent: _btnHeight,
            ),
            shrinkWrap: true,
            itemCount: horizontal ? _keyvalsH.length : _keyvalsV.length,
            itemBuilder: (context, index) {
              final value = horizontal ? _keyvalsH[index] : _keyvalsV[index];
              return ZyButton(
                border: true,
                borderColor: themeData.textTheme.bodySmall?.color?.withOpacity(0.35),
                radius: const BorderRadius.all(Radius.circular(_btnRadius)),
                color: themeData.cardColor,
                onPressed: () => _onButtonPressed(value),
                child: value >= 0
                    ? Text(value.toString(), style: themeData.textTheme.titleMedium)
                    : Icon(
                        value == -1 ? Icons.backspace : Icons.cancel,
                        color: themeData.textTheme.bodySmall?.color,
                        size: themeData.textTheme.titleMedium?.fontSize,
                      ),
              );
            },
          ),
        ),
      ],
    );
  }

  void _onButtonPressed(int value) {
    if (value >= 0) {
      if (_resultList.length < widget.initParams.length) {
        if (mounted) {
          setState(() {
            _resultList.add(value.toString());
          });
        }
      }
    } else if (value == -1) {
      if (_resultList.isNotEmpty) {
        if (mounted) {
          setState(() {
            _resultList.removeLast();
          });
        }
      }
    } else {
      if (_resultList.isNotEmpty) {
        if (mounted) {
          setState(() {
            _resultList.clear();
          });
        }
      }
    }
    widget.onValueChange(widget.initParams..value = _resultList.join(''));
  }
}

///
///城区选择控件
///
class ZySheetCityPicker extends StatefulWidget {
  final ZySheetCityParams initParams;
  final void Function(ZySheetCityParams value) onValueChange;

  const ZySheetCityPicker({
    super.key,
    required this.initParams,
    required this.onValueChange,
  });

  @override
  State<StatefulWidget> createState() => _ZySheetCityPickerState();
}

///
///城区选择状态
///
class _ZySheetCityPickerState extends State<ZySheetCityPicker> {
  static const _codeKey = 'code';
  static const _nameKey = 'name';
  static const _childrenKey = 'children';

  late List<String> provinceNames;
  late List<String> cityNames;
  late List<String> districtNames;

  late FixedExtentScrollController provinceController;
  late FixedExtentScrollController cityController;
  late FixedExtentScrollController districtController;

  @override
  void initState() {
    super.initState();
    int provinceIndex = 0, cityIndex = 0, districtIndex = 0;

    provinceNames = _safeProvinceNames();
    provinceIndex = max(0, provinceNames.indexWhere((e) => e == widget.initParams.initProvince));
    provinceController = FixedExtentScrollController(initialItem: provinceIndex);

    cityNames = _safeCityNames(provinceIndex);
    cityIndex = max(0, cityNames.indexWhere((e) => e == widget.initParams.initCity));
    cityController = FixedExtentScrollController(initialItem: cityIndex);

    districtNames = _safeDistrictNames(provinceIndex, cityIndex);
    districtIndex = max(0, districtNames.indexWhere((e) => e == widget.initParams.initDistrict));
    districtController = FixedExtentScrollController(initialItem: districtIndex);

    widget.onValueChange(_syncSelectedValue(provinceIndex, cityIndex, districtIndex)); //回调
  }

  @override
  void dispose() {
    provinceController.dispose();
    cityController.dispose();
    districtController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CupertinoPicker.builder(
            scrollController: provinceController,
            childCount: provinceNames.length,
            itemExtent: widget.initParams.itemExtent,
            itemBuilder: (context, index) => Padding(
              padding: widget.initParams.itemPadding,
              child: Center(
                child: FittedBox(
                  child: Text(provinceNames[index]),
                ),
              ),
            ),
            onSelectedItemChanged: (index) {
              cityController.jumpTo(0);
              districtController.jumpTo(0);
              if (mounted) {
                setState(() {
                  cityNames = _safeCityNames(provinceController.selectedItem);
                  districtNames = _safeDistrictNames(provinceController.selectedItem, cityController.selectedItem);
                });
              }
              widget.onValueChange(_syncSelectedValue(provinceController.selectedItem, cityController.selectedItem, districtController.selectedItem)); //回调
            },
          ),
        ),
        Expanded(
          child: CupertinoPicker.builder(
            scrollController: cityController,
            childCount: cityNames.length,
            itemExtent: widget.initParams.itemExtent,
            itemBuilder: (context, index) => Padding(
              padding: widget.initParams.itemPadding,
              child: Center(
                child: FittedBox(
                  child: Text(cityNames[index]),
                ),
              ),
            ),
            onSelectedItemChanged: (index) {
              districtController.jumpTo(0);
              if (mounted) {
                setState(() {
                  districtNames = _safeDistrictNames(provinceController.selectedItem, cityController.selectedItem);
                });
              }
              widget.onValueChange(_syncSelectedValue(provinceController.selectedItem, cityController.selectedItem, districtController.selectedItem)); //回调
            },
          ),
        ),
        Expanded(
          child: CupertinoPicker.builder(
            scrollController: districtController,
            childCount: districtNames.length,
            itemExtent: widget.initParams.itemExtent,
            itemBuilder: (context, index) => Padding(
              padding: widget.initParams.itemPadding,
              child: Center(
                child: FittedBox(
                  child: Text(districtNames[index]),
                ),
              ),
            ),
            onSelectedItemChanged: (index) {
              widget.onValueChange(_syncSelectedValue(provinceController.selectedItem, cityController.selectedItem, districtController.selectedItem)); //回调
            },
          ),
        ),
      ],
    );
  }

  List<String> _safeProvinceNames() {
    return provinceData.map((e) => e[_nameKey] as String).toList();
  }

  List<String> _safeCityNames(int provinceIndex) {
    final provinceItem = provinceIndex >= 0 && provinceIndex < provinceData.length ? provinceData[provinceIndex] : const {};
    final cityData = (provinceItem[_childrenKey] as List?) ?? const [];
    return cityData.map((e) => e[_nameKey] as String).toList();
  }

  List<String> _safeDistrictNames(int provinceIndex, int cityIndex) {
    final provinceItem = provinceIndex >= 0 && provinceIndex < provinceData.length ? provinceData[provinceIndex] : const {};
    final cityData = (provinceItem[_childrenKey] as List?) ?? const [];
    final cityItem = cityIndex >= 0 && cityIndex < cityData.length ? cityData[cityIndex] as Map : const {};
    final districtData = (cityItem[_childrenKey] as List?) ?? const [];
    return districtData.map((e) => e[_nameKey] as String).toList();
  }

  ZySheetCityParams _syncSelectedValue(int provinceIndex, int cityIndex, int districtIndex) {
    final provinceItem = provinceIndex >= 0 && provinceIndex < provinceData.length ? provinceData[provinceIndex] : const {};
    final cityData = (provinceItem[_childrenKey] as List?) ?? const [];
    final cityItem = cityIndex >= 0 && cityIndex < cityData.length ? cityData[cityIndex] as Map : const {};
    final districtData = (cityItem[_childrenKey] as List?) ?? const [];
    final districtItem = districtIndex >= 0 && districtIndex < districtData.length ? districtData[districtIndex] as Map : const {};

    return widget.initParams
      ..code = districtItem[_codeKey] ?? cityItem[_codeKey] ?? provinceItem[_codeKey] ?? ''
      ..province = provinceItem[_nameKey] ?? ''
      ..city = cityItem[_nameKey] ?? ''
      ..district = districtItem[_nameKey] ?? '';
  }
}
