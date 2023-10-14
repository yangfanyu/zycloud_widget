import 'package:amap_flutter_map/amap_flutter_map.dart';
import 'package:amap_flutter_base/amap_flutter_base.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:map_launcher/map_launcher.dart' as outermap;
import 'package:shelf_easy/shelf_easy.dart';
import 'package:zycloud_client/zycloud_client.dart';

import '../device/zy_device.dart';
import '../device/zy_thirdsdk.dart';
import '../launch/zy_app.dart';
import 'zy_button.dart';
import 'zy_divider.dart';
import 'zy_listtile.dart';
import 'zy_sheet.dart';

///
///高德地图页类型
///
enum ZyAmapType {
  ///显示定位信息
  locationView,

  ///发送定位信息
  locationSend,
}

///
///高德地图页
///
class ZyAmap extends StatefulWidget {
  ///页面类型
  final ZyAmapType type;

  ///页面标题
  final String title;

  ///初始位置
  final Location location;

  ///更新位置，在此回调中更新我的当前位置到本地缓存或同步到服务区中
  final void Function(Location location)? onLocationUpdate;

  ///点击发送，在此回调中进行编码、压缩、上传。发送当前位置分享消息
  final void Function(Location location, Uint8List snapshotBytes, double zoomLevel)? onSendBtnPressed;

  const ZyAmap({
    super.key,
    required this.type,
    required this.title,
    required this.location,
    this.onLocationUpdate,
    this.onSendBtnPressed,
  });

  @override
  State<StatefulWidget> createState() => _ZyAmapSendState();
}

class _ZyAmapSendState extends State<ZyAmap> {
  static const _mapInitZoom = 16.0;
  static const _mapToolLayerPadding = 8.0;
  static const _mapToolLayerBtnGap = 2.0;
  static const _mapToolLayerBtnSize = 32.0;
  static const _mapToolLayerBtnIconSize = 20.0;
  static const _navigatorTailIconSize = 38.0;
  static const _navigatorItemBoxWidth = 80.0;
  static const _navigatorItemBoxHeight = 88.0;
  static const _navigatorItemIconSize = 42.0;
  static const _navigatorItemIconRadius = BorderRadius.all(Radius.circular(4));
  static const _navigatorItemInnerGap = 6.0;

  final _thirdSdk = ZyThirdSdk();
  final _scrollController = ScrollController();

  final _myLocation = Location(); //我当前的位置
  final _pointCenter = Location(); //当前POI搜索中心
  final _pointList = <Location>[]; //当前POI搜索中心搜索结果列表
  int _pointIndex = 0; //当前POI搜索中心搜索结果列表的选中index

  AMapController? _mapController; //地图控制器
  MapType? _mapStyle; //当前地图图层类型
  late double _mapZoomLevel; //当前地图缩放级别
  late LatLng _mapCenterMarker; //当前地图中心位置标记
  bool _mapMoveByBtnTap = false; //触发的onCameraMove()与onCameraMoveEnd()

  final List<outermap.AvailableMap> _outerMapList = []; //外置地图

  @override
  void initState() {
    super.initState();
    switch (widget.type) {
      case ZyAmapType.locationView:
        //初始位置
        _myLocation.updateByJson(widget.location.toJson());
        _pointCenter.updateByJson(widget.location.toJson());
        _mapZoomLevel = widget.location.zoomLevel;
        _mapCenterMarker = LatLng(_pointCenter.latitude, _pointCenter.longitude);
        //获取外部地图列表
        _getOuterMapList();
        break;
      case ZyAmapType.locationSend:
        _thirdSdk.init(onAmapLocationOk: _onAmapLocationOk);
        //初始位置
        _myLocation.updateByJson(widget.location.toJson());
        _pointCenter.updateByJson(widget.location.toJson());
        _mapZoomLevel = _mapInitZoom;
        _mapCenterMarker = LatLng(_pointCenter.latitude, _pointCenter.longitude);
        //搜索POI
        _searchPoiAndMoveTo(latitude: _pointCenter.latitude, longitude: _pointCenter.longitude);
        //定位一次
        _thirdSdk.startAmapLocation(onceLocation: true);
        break;
    }
  }

  @override
  void dispose() {
    _thirdSdk.dispose();
    _scrollController.dispose();
    _mapController?.disponse();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(themeData),
      body: SafeArea(
        child: _buildBody(themeData),
      ),
    );
  }

  AppBar _buildAppBar(ThemeData themeData) {
    switch (widget.type) {
      case ZyAmapType.locationView:
        return AppBar(
          title: Text(widget.title),
        );
      case ZyAmapType.locationSend:
        return AppBar(
          title: Text(widget.title),
          actions: [
            IconButton(
              icon: const Icon(Icons.done),
              onPressed: _pointList.isNotEmpty ? _onSendBtnPressed : null,
            ),
          ],
        );
    }
  }

  Widget _buildBody(ThemeData themeData) {
    final currMapType = _mapStyle ?? (themeData.brightness == Brightness.dark ? MapType.night : MapType.normal);
    switch (widget.type) {
      case ZyAmapType.locationView:
        return Column(
          children: [
            ZyDivider.forFull,
            Expanded(
              child: Stack(
                children: [
                  AMapWidget(
                    privacyStatement: const AMapPrivacyStatement(hasContains: true, hasShow: true, hasAgree: true),
                    mapType: currMapType,
                    initialCameraPosition: CameraPosition(target: _mapCenterMarker, zoom: _mapZoomLevel),
                    markers: {
                      Marker(position: _mapCenterMarker, icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed)),
                    },
                    onMapCreated: (AMapController controller) => _mapController = controller,
                  ),
                  _buildToolLayerLeft(themeData),
                  _buildToolLayerRight(themeData),
                ],
              ),
            ),
            ZyDivider.forFull,
            ZyListTile(
              type: ZyListTileType.around,
              titleL: _pointCenter.description,
              subTitleL: _pointCenter.address,
              trailing: Icon(Icons.assistant_direction, size: _navigatorTailIconSize, color: _outerMapList.isNotEmpty ? themeData.colorScheme.secondary : null),
              onPressed: _outerMapList.isNotEmpty ? () => _onNavigateItemPressed(themeData) : null,
            ),
          ],
        );
      case ZyAmapType.locationSend:
        return Column(
          children: [
            ZyDivider.forFull,
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  AMapWidget(
                    privacyStatement: const AMapPrivacyStatement(hasContains: true, hasShow: true, hasAgree: true),
                    mapType: currMapType,
                    buildingsEnabled: true,
                    tiltGesturesEnabled: false,
                    rotateGesturesEnabled: false,
                    initialCameraPosition: CameraPosition(target: _mapCenterMarker, zoom: _mapZoomLevel),
                    markers: {
                      Marker(position: _mapCenterMarker, icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed)),
                    },
                    onMapCreated: (AMapController controller) => _mapController = controller,
                    onCameraMove: (position) {
                      if (mounted) {
                        setState(() {
                          _mapZoomLevel = position.zoom;
                          _mapCenterMarker = position.target;
                        });
                      }
                    },
                    onCameraMoveEnd: (position) {
                      if (mounted) {
                        setState(() {
                          _mapZoomLevel = position.zoom;
                          _mapCenterMarker = position.target;
                        });
                      }
                      if (_mapMoveByBtnTap) {
                        ZyApp.logDebug(['是由点击了按钮触发的onCameraMoveEnd()事件函数，即_mapMoveByBtnTap 为 $_mapMoveByBtnTap，不执行_searchPoiAndMoveTo(...)操作']);
                        _mapMoveByBtnTap = false;
                      } else {
                        ZyApp.logDebug(['不是由点击按钮触发的onCameraMoveEnd()事件函数，即_mapMoveByBtnTap 为 $_mapMoveByBtnTap，执行了_searchPoiAndMoveTo(...)操作']);
                        _searchPoiAndMoveTo(latitude: position.target.latitude, longitude: position.target.longitude);
                      }
                    },
                  ),
                  _buildToolLayerLeft(themeData),
                  _buildToolLayerRight(themeData),
                ],
              ),
            ),
            ZyDivider.forFull,
            Container(
              alignment: Alignment.centerLeft,
              color: themeData.scaffoldBackgroundColor,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text('附近地点'.trs, textAlign: TextAlign.left, style: themeData.textTheme.bodyMedium),
            ),
            ZyDivider.forFull,
            Expanded(
              flex: 2,
              child: _pointList.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      controller: _scrollController,
                      itemCount: _pointList.length,
                      itemBuilder: (context, index) {
                        final item = _pointList[index];
                        return Column(
                          children: [
                            ZyListTile(
                              type: ZyListTileType.around,
                              titleL: item.description,
                              subTitleL: '${_formatDistance(item.distance)} | ${item.address}',
                              trailing: index == _pointIndex ? Icon(Icons.check, color: themeData.colorScheme.secondary) : null,
                              onPressed: () => _onPoiListItemPressed(item, index),
                            ),
                            ZyDivider.forListTileLeadingNone,
                          ],
                        );
                      },
                    ),
            )
          ],
        );
    }
  }

  Widget _buildToolLayerLeft(ThemeData themeData) {
    final btnColor = themeData.scaffoldBackgroundColor; //.withOpacity(0.8);
    return Positioned(
      top: _mapToolLayerPadding,
      left: _mapToolLayerPadding,
      bottom: _mapToolLayerPadding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: _mapToolLayerBtnSize,
            height: _mapToolLayerBtnSize,
            child: MaterialButton(
              padding: EdgeInsets.zero,
              color: btnColor,
              onPressed: () {
                if (mounted) {
                  setState(() {
                    _mapStyle = MapType.navi;
                  });
                }
              },
              child: const Icon(Icons.directions_car_outlined, size: _mapToolLayerBtnIconSize),
            ),
          ),
          const SizedBox(height: _mapToolLayerBtnGap),
          SizedBox(
            width: _mapToolLayerBtnSize,
            height: _mapToolLayerBtnSize,
            child: MaterialButton(
              padding: EdgeInsets.zero,
              color: btnColor,
              onPressed: () {
                if (mounted) {
                  setState(() {
                    _mapStyle = MapType.satellite;
                  });
                }
              },
              child: const Icon(Icons.filter_hdr_outlined, size: _mapToolLayerBtnIconSize),
            ),
          ),
          const SizedBox(height: _mapToolLayerBtnGap),
          SizedBox(
            width: _mapToolLayerBtnSize,
            height: _mapToolLayerBtnSize,
            child: MaterialButton(
              padding: EdgeInsets.zero,
              color: btnColor,
              colorBrightness: themeData.brightness,
              onPressed: () {
                if (mounted) {
                  setState(() {
                    _mapStyle = themeData.brightness == Brightness.dark ? MapType.night : MapType.normal;
                  });
                }
              },
              child: const Icon(Icons.map_outlined, size: _mapToolLayerBtnIconSize),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildToolLayerRight(ThemeData themeData) {
    final btnColor = themeData.scaffoldBackgroundColor; //.withOpacity(0.8);
    return Positioned(
      top: _mapToolLayerPadding,
      right: _mapToolLayerPadding,
      bottom: _mapToolLayerPadding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: _mapToolLayerBtnSize,
            height: _mapToolLayerBtnSize,
            child: MaterialButton(
              padding: EdgeInsets.zero,
              color: btnColor,
              onPressed: _moveCameraByZoomIn,
              child: const Icon(Icons.add, size: _mapToolLayerBtnIconSize),
            ),
          ),
          const SizedBox(height: _mapToolLayerBtnGap),
          SizedBox(
            width: _mapToolLayerBtnSize,
            height: _mapToolLayerBtnSize,
            child: MaterialButton(
              padding: EdgeInsets.zero,
              color: btnColor,
              onPressed: _moveCameraByZoomOut,
              child: const Icon(Icons.remove, size: _mapToolLayerBtnIconSize),
            ),
          ),
          const Spacer(),
          SizedBox(
            width: _mapToolLayerBtnSize,
            height: _mapToolLayerBtnSize,
            child: MaterialButton(
              padding: EdgeInsets.zero,
              color: btnColor,
              onPressed: _onLocationBtnPressed,
              child: const Icon(Icons.my_location, size: _mapToolLayerBtnIconSize),
            ),
          ),
        ],
      ),
    );
  }

  String _formatDistance(double distance) {
    if (distance >= 1000) {
      return '${(distance / 1000).toStringAsFixed(2)}${'千米'.trs}';
    } else {
      return '${distance.round()}${'米'.trs}';
    }
  }

  void _getOuterMapList() async {
    final mapList = ZyDeviceInfo.isMobileDevice ? await outermap.MapLauncher.installedMaps : <outermap.AvailableMap>[];
    if (mounted) {
      setState(() {
        _outerMapList.clear();
        _outerMapList.addAll(mapList);
      });
    }
  }

  String _getOuterMapName(outermap.AvailableMap availableMap) {
    switch (availableMap.mapType) {
      case outermap.MapType.amap:
        return '高德地图'.trs;
      case outermap.MapType.baidu:
        return '百度地图'.trs;
      case outermap.MapType.tencent:
        return '腾讯地图'.trs;
      case outermap.MapType.apple:
        return '苹果地图'.trs;
      case outermap.MapType.google:
        return '谷歌地图'.trs;
      default:
        return availableMap.mapName;
    }
  }

  void _moveCameraByZoomIn() {
    _mapMoveByBtnTap = true;
    _mapController?.moveCamera(CameraUpdate.zoomIn(), animated: true);
  }

  void _moveCameraByZoomOut() {
    _mapMoveByBtnTap = true;
    _mapController?.moveCamera(CameraUpdate.zoomOut(), animated: true);
  }

  bool _moveCameraToCenter() {
    final distance = ZyThirdSdk.countDistance(_pointCenter.latitude, _pointCenter.longitude, _mapCenterMarker.latitude, _mapCenterMarker.longitude);
    if (distance > 1) {
      ZyApp.logDebug(['中心位置坐标与中心标记坐标距离为$distance米，调用moveCamera()函数将会触发onCameraMoveEnd()事件函数，执行了moveCamera()操作']);
      _mapMoveByBtnTap = true;
      _mapController?.moveCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(_pointCenter.latitude, _pointCenter.longitude), zoom: _mapZoomLevel)), animated: true);
      return true;
    } else {
      ZyApp.logDebug(['中心位置坐标与中心标记坐标距离为$distance米，调用moveCamera()函数不会触发onCameraMoveEnd()事件函数，不执行moveCamera()操做']);
      return false;
    }
  }

  void _searchPoiAndMoveTo({required double latitude, required double longitude}) {
    //搜索前先清空列表
    if (mounted) {
      setState(() {
        _pointList.clear();
        _pointIndex = 0;
      });
    }
    //开始搜索
    _thirdSdk.poiAmapSearch(latitude: latitude, longitude: longitude, origin: _myLocation).then((value) {
      if (mounted) {
        setState(() {
          _pointList.clear();
          _pointList.addAll(value);
          _pointIndex = 0;
          //异步回调，中心标记_mapCenterMarker的坐标可能发生了变化，进行一次界面同步
          if (_pointList.isNotEmpty) {
            _pointCenter.updateByJson(_pointList.first.toJson());
            _moveCameraToCenter();
          }
        });
      }
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(0);
      }
    });
  }

  void _onSendBtnPressed() async {
    //截图
    final value = await _mapController?.takeSnapshot(); //经测试，这是个同步操作，不需要添加loading
    if (value == null) {
      if (!mounted) return;
      Navigator.pop(context);
      return;
    }
    //回调
    if (widget.onSendBtnPressed != null) {
      widget.onSendBtnPressed!(_pointCenter, value, _mapZoomLevel);
    }
  }

  void _onNavigateItemPressed(ThemeData themeData) {
    ZyApp.showBottomSheet<outermap.AvailableMap>(
      ZySheet(
        type: ZySheetType.free,
        freeWidget: SizedBox(
          height: _navigatorItemBoxHeight,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _outerMapList.length,
            itemExtent: _navigatorItemBoxWidth,
            itemBuilder: (context, index) {
              final item = _outerMapList[index];
              return ZyButton(
                subSpace: _navigatorItemInnerGap,
                subChild: Text(_getOuterMapName(item), style: themeData.textTheme.labelSmall, overflow: TextOverflow.ellipsis),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: _navigatorItemIconRadius)),
                  child: SvgPicture.asset(item.icon, width: _navigatorItemIconSize, height: _navigatorItemIconSize),
                ),
                onPressed: () => ZyApp.pop(item),
              );
            },
          ),
        ),
        cancelText: '取消'.trs,
      ),
      isScrollControlled: true,
    ).then((value) {
      if (value == null) return;
      outermap.MapLauncher.showDirections(
        mapType: value.mapType,
        destination: outermap.Coords(_mapCenterMarker.latitude, _mapCenterMarker.longitude),
        destinationTitle: _pointCenter.description,
      );
    });
  }

  void _onPoiListItemPressed(Location target, int index) {
    if (mounted) {
      setState(() {
        _pointIndex = index;
        _pointCenter.updateByJson(target.toJson());
        //无需重新搜索，直接移动到中心位置
        _moveCameraToCenter();
      });
    }
  }

  void _onLocationBtnPressed() {
    switch (widget.type) {
      case ZyAmapType.locationView:
        //直接移动到中心标志
        _mapController?.moveCamera(CameraUpdate.newCameraPosition(CameraPosition(target: _mapCenterMarker, zoom: _mapZoomLevel)), animated: true);
        break;
      case ZyAmapType.locationSend:
        //需要重新搜索，然后移动到中心位置
        _searchPoiAndMoveTo(latitude: _myLocation.latitude, longitude: _myLocation.longitude);
        break;
    }
  }

  void _onAmapLocationOk(Location location) {
    //同步更新我当前的位置数据
    _myLocation.updateByJson(location.toJson());
    //相当于点击了我的位置按钮
    _onLocationBtnPressed();
    //回调
    if (widget.onLocationUpdate != null) {
      widget.onLocationUpdate!(location);
    }
  }
}
