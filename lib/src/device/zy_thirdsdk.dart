import 'dart:async';
import 'dart:convert';
import 'dart:math' as math;

import 'package:alipay_kit/alipay_kit.dart';
import 'package:amap_flutter_location/amap_flutter_location.dart';
import 'package:amap_flutter_location/amap_location_option.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:wechat_kit/wechat_kit.dart';
import 'package:zycloud_client/zycloud_client.dart';

import '../launch/zy_app.dart';

///
///第三方sdk的封装
///
class ZyThirdSdk {
  /* ******************************** instance content ******************************** */

  ///高德定位回调函数
  void Function(Location location)? _onAmapLocationOk;

  ///高德定位插件实例
  AMapFlutterLocation? _mapFlutterLocation;

  ///高德定位数据订阅
  StreamSubscription<Map<String, Object>>? _amapLocationSubscription;

  ///微信全部数据订阅
  StreamSubscription<WechatResp>? _wechatAllSubscription;

  ///支付宝登录数据订阅
  StreamSubscription<AlipayResp>? _alipayAuthSubscription;

  ///支付宝支付数据订阅
  StreamSubscription<AlipayResp>? _alipayPaySubscription;

  ///苹果登录回调函数
  void Function(String appleUid, String appleUname, String authorizationCode, String? identityToken)? _onAppleAuthOk;

  ZyThirdSdk();

  ///初始化
  void init({
    void Function(Location location)? onAmapLocationOk,
    void Function(String code)? onWechatAuthOk,
    void Function()? onWechatPayOk,
    void Function(String code)? onAlipayAuthOk,
    void Function()? onAlipayPayOk,
    void Function(String appleUid, String appleUname, String authorizationCode, String? identityToken)? onAppleAuthOk,
  }) {
    //高德
    _onAmapLocationOk = onAmapLocationOk;
    if (onAmapLocationOk != null && isAmapSupported()) {
      _mapFlutterLocation = AMapFlutterLocation();
      _amapLocationSubscription = _mapFlutterLocation!.onLocationChanged().listen((data) {
        data.forEach((key, value) {
          ZyApp.logDebug([(value is String ? 'String' : (value is double ? 'double' : (value is int ? 'int' : 'others'))), key, value]);
        });
        if (data['errorCode'] == null || data['errorCode'] == 0) {
          onAmapLocationOk(Location(
            latitude: double.tryParse(data['latitude']?.toString() ?? '0'),
            longitude: double.tryParse(data['longitude']?.toString() ?? '0'),
            accuracy: double.tryParse(data['accuracy']?.toString() ?? '0'),
            altitude: double.tryParse(data['altitude']?.toString() ?? '0'),
            bearing: double.tryParse(data['bearing']?.toString() ?? '0'),
            speed: double.tryParse(data['speed']?.toString() ?? '0'),
            country: data['country']?.toString(),
            province: data['province']?.toString(),
            city: data['city']?.toString(),
            district: data['district']?.toString(),
            street: data['street']?.toString(),
            streetNumber: data['streetNumber']?.toString(),
            cityCode: data['cityCode']?.toString(),
            adCode: data['adCode']?.toString(),
            address: data['address']?.toString(),
            description: data['description']?.toString(),
          ));
        }
      }, onError: (error, stack) {
        ZyApp.logError([error, '\n', stack]);
      });
    }
    //微信
    if ((onWechatAuthOk != null || onWechatPayOk != null) && isWechatSupported()) {
      _wechatAllSubscription = WechatKitPlatform.instance.respStream().listen((resp) {
        ZyApp.logDebug(['_wechatAllSubscription:', resp]);
        if (onWechatAuthOk != null && resp is WechatAuthResp) {
          if (resp.isSuccessful && resp.code != null) onWechatAuthOk(resp.code!);
        }
        if (onWechatPayOk != null && resp is WechatPayResp) {
          if (resp.isSuccessful) onWechatPayOk();
        }
      }, onError: (error, stack) {
        ZyApp.logError([error, '\n', stack]);
      });
    }
    //支付宝
    if ((onAlipayAuthOk != null || onAlipayPayOk != null) && isAlipaySupported()) {
      if (onAlipayAuthOk != null) {
        _alipayAuthSubscription = AlipayKitPlatform.instance.authResp().listen((resp) {
          ZyApp.logDebug(['_alipayAuthSubscription:', resp]);
          if (resp.isSuccessful && resp.result != null) onAlipayAuthOk(resp.result!);
        }, onError: (error, stack) {
          ZyApp.logError([error, '\n', stack]);
        });
      }
      if (onAlipayPayOk != null) {
        _alipayPaySubscription = AlipayKitPlatform.instance.payResp().listen((resp) {
          ZyApp.logDebug(['_alipayPaySubscription:', resp]);
          if (resp.isSuccessful) onAlipayPayOk();
        }, onError: (error, stack) {
          ZyApp.logError([error, '\n', stack]);
        });
      }
    }
    //苹果
    _onAppleAuthOk = onAppleAuthOk;
  }

  ///销毁
  void dispose() {
    stopAmapLocation();
    _amapLocationSubscription?.cancel();
    _mapFlutterLocation?.destroy(); //放在_amapLocationSubscription释放之后
    _wechatAllSubscription?.cancel();
    _alipayAuthSubscription?.cancel();
    _alipayPaySubscription?.cancel();
  }

  ///
  ///高德定位开始
  /// * [onceLocation] 是否只定位一次
  /// * [androidHighAccuracy] android是否高精度
  /// * [iosHighAccuracy] IOS是否高精度
  ///
  void startAmapLocation({
    required bool onceLocation,
    bool androidHighAccuracy = true,
    bool iosHighAccuracy = false,
    String? ip,
  }) async {
    if (isAmapSupported()) {
      //获取当前的权限
      PermissionStatus status;
      status = await Permission.location.status;
      ZyApp.logDebug(['Permission.location.status----------before is', status]);
      if (!status.isGranted) {
        status = await Permission.location.request();
        ZyApp.logDebug(['Permission.location.status----------after is', status]);
        if (!status.isGranted) {
          if (ip != null) ipAmapLocation(ip: ip); //IP定位
          return;
        }
      }
      //插件定位
      _mapFlutterLocation?.stopLocation();
      _mapFlutterLocation?.setLocationOption(AMapLocationOption(
        onceLocation: onceLocation,
        needAddress: true,
        geoLanguage: GeoLanguage.DEFAULT,
        desiredLocationAccuracyAuthorizationMode: iosHighAccuracy ? AMapLocationAccuracyAuthorizationMode.FullAndReduceAccuracy : AMapLocationAccuracyAuthorizationMode.ReduceAccuracy,
        locationInterval: 5000,
        locationMode: androidHighAccuracy ? AMapLocationMode.Hight_Accuracy : AMapLocationMode.Battery_Saving,
        distanceFilter: -1,
        desiredAccuracy: iosHighAccuracy ? DesiredAccuracy.Best : DesiredAccuracy.HundredMeters,
        pausesLocationUpdatesAutomatically: false,
      )..fullAccuracyPurposeKey = "AMapLocationScene");
      _mapFlutterLocation?.startLocation();
    } else {
      if (ip != null) ipAmapLocation(ip: ip); //IP定位
    }
  }

  ///高德定位暂停
  void stopAmapLocation() {
    if (isAmapSupported()) {
      _mapFlutterLocation?.stopLocation();
    }
  }

  ///高德IP定位，仅支持IPV4，不支持国外IP解析。
  void ipAmapLocation({required String ip, bool poi = false}) async {
    if (_amapWebKey == null || _onAmapLocationOk == null) return;
    final url = 'https://restapi.amap.com/v3/ip?key=$_amapWebKey&ip=$ip';
    ZyApp.logDebug(['ipAmapLocation -------->', url]);
    try {
      final resp = await EasyClient.get(url);
      if (resp.statusCode != 200) return;
      final Map<String, dynamic> body = jsonDecode(resp.body);
      //status
      final status = int.parse(body['status']);
      if (status != 1) return;
      //notice
      final rectangle = body['rectangle'];
      if (rectangle is String) {
        final coordsPair = (rectangle.split(';').map((e) => e.split(',')).toList()).map((e) => e.map((e) => double.parse(e)).toList()).toList();
        if (coordsPair.length == 2 && coordsPair.every((element) => element.length == 2)) {
          final latitude = (coordsPair[0][1] + coordsPair[1][1]) / 2;
          final longitude = (coordsPair[0][0] + coordsPair[1][0]) / 2;
          if (poi) {
            final resultList = await poiAmapSearch(latitude: latitude, longitude: longitude);
            if (resultList.isNotEmpty) {
              ZyApp.logDebug(['ipAmapLocation -------->', resultList.first]);
              _onAmapLocationOk!(resultList.first);
            }
          } else {
            final location = Location(
              latitude: latitude,
              longitude: longitude,
              country: '中国',
              province: body['province'] is String ? body['province'] : '',
              city: body['city'] is String ? body['city'] : '',
              adCode: body['adcode'] is String ? body['adcode'] : '',
              address: jsonEncode(coordsPair),
              description: 'IP定位',
            );
            ZyApp.logDebug(['ipAmapLocation -------->', location]);
            _onAmapLocationOk!(location);
          }
        }
      } else {
        final location = Location(
          country: '中国',
          province: body['province'] is String ? body['province'] : '',
          city: body['city'] is String ? body['city'] : '',
          adCode: body['adcode'] is String ? body['adcode'] : '',
          description: 'IP定位',
        );
        ZyApp.logDebug(['ipAmapLocation -------->', location]);
        _onAmapLocationOk!(location);
      }
    } catch (error, stack) {
      ZyApp.logError([error, '\n', stack]);
    }
  }

  ///
  ///高德POI搜索
  ///
  /// * [latitude] 纬度
  /// * [longitude] 经度
  /// * [poitype] 支持传入POI TYPECODE及名称；支持传入多个POI类型，多值间用“|”分隔
  /// * [radius] 查询POI的半径范围。取值范围：0~3000,单位：米
  /// * [extensions] 返回结果控制
  /// * [batch] batch=true为批量查询。batch=false为单点查询
  /// * [roadlevel] 可选值：1，当roadlevel=1时，过滤非主干道路，仅输出主干道路数据
  /// * [origin] 当origin不为null，搜索出来的poi要将距离更新为相对于origin的坐标。
  ///
  Future<List<Location>> poiAmapSearch({
    required double latitude,
    required double longitude,
    String poitype = '',
    double radius = 1000,
    String extensions = 'all',
    bool batch = false,
    int roadlevel = 1,
    Location? origin,
  }) async {
    final result = <Location>[];
    if (_amapWebKey == null) return result;
    final url = 'https://restapi.amap.com/v3/geocode/regeo?key=$_amapWebKey&location=$longitude,$latitude&poitype=$poitype&radius=$radius&extensions=$extensions&batch=$batch&roadlevel=$roadlevel';
    ZyApp.logDebug(['poiAmapSearch -------->', url]);
    try {
      final resp = await EasyClient.get(url);
      if (resp.statusCode != 200) return result;
      final Map<String, dynamic> body = jsonDecode(resp.body);
      //status
      final status = int.parse(body['status']);
      if (status != 1) return result;
      //regeocode
      final Map<String, dynamic>? regeocode = body['regeocode'];
      if (regeocode == null) return result;
      final Map<String, dynamic>? addressComponent = regeocode['addressComponent'];
      if (addressComponent == null) return result;
      final Map<String, dynamic>? streetNumber = addressComponent['streetNumber'];
      final String township = addressComponent['township'] is String ? addressComponent['township'] : '';
      //搜索中心，保证必须字段的初始化
      final location = Location();
      location.latitude = latitude;
      location.longitude = longitude;

      location.country = addressComponent['country'] is String ? addressComponent['country'] : '';
      location.province = addressComponent['province'] is String ? addressComponent['province'] : '';
      location.city = addressComponent['city'] is String ? addressComponent['city'] : '';
      location.district = addressComponent['district'] is String ? addressComponent['district'] : '';
      location.street = streetNumber != null && streetNumber['street'] is String ? streetNumber['street'] : ''; //street is streetNumber.street
      location.streetNumber = streetNumber != null && streetNumber['number'] is String ? streetNumber['number'] : ''; //streetNumber is streetNumber.number
      location.cityCode = addressComponent['citycode'] is String ? addressComponent['citycode'] : ''; //cityCode is citycode
      location.adCode = addressComponent['adcode'] is String ? addressComponent['adcode'] : ''; //adCode is adcode

      location.address = regeocode['formatted_address'] is String ? regeocode['formatted_address'] : '';
      location.description = location.address.replaceFirst(location.province, '').replaceFirst(location.city, '').replaceFirst(location.district, '').replaceFirst(township, ''); //.replaceFirst(location.street, '').replaceFirst(location.streetNumber, '');
      location.distance = streetNumber != null && streetNumber['distance'] is String ? double.parse(streetNumber['distance']) : 0; //streetNumber is streetNumber.number
      //搜索结果
      final List<Map<String, dynamic>> pois = List<Map<String, dynamic>>.from(regeocode['pois'] ?? []);
      for (Map<String, dynamic> element in pois) {
        final item = Location.fromJson(location.toJson());
        final latlng = element['location'];
        if (latlng is String && latlng.split(',').length > 1) {
          item.longitude = double.parse(latlng.split(',')[0]);
          item.latitude = double.parse(latlng.split(',')[1]);
        }
        final dist = element['distance'];
        if (dist is String) {
          item.distance = double.parse(dist);
        }
        final addr = element['address'];
        if (addr is String) {
          item.address = addr;
        }
        final name = element['name'];
        if (name is String) {
          item.description = name;
        }
        result.add(item);
      }
      //根据与搜索中心的距离排序
      result.sort((a, b) => a.distance < b.distance ? -1 : 1);
      //将搜索中心放入列表头部
      if (result.isNotEmpty && result.first.description.trim() == location.description.trim()) {
        result.first = location; //距离搜索中心最近的一项的与搜索中心重名，直接替换掉
      } else {
        result.insert(0, location);
      }
      //计算与origin的距离
      if (origin != null) {
        for (var element in result) {
          element.distance = countDistance(origin.latitude, origin.longitude, element.latitude, element.longitude);
        }
      }
      return result;
    } catch (error, stack) {
      ZyApp.logError([error, '\n', stack]);
      return result;
    }
  }

  ///微信登录
  void startWechatAuth({
    String? state,
  }) {
    if (!isWechatSupported()) return;
    WechatKitPlatform.instance.auth(
      scope: <String>[WechatScope.kSNSApiUserInfo],
      state: state,
      type: WechatAuthType.kNormal,
    );
  }

  ///微信支付
  void startWechatPay({
    required String appId,
    required String partnerId,
    required String prepayId,
    required String package,
    required String nonceStr,
    required String timeStamp,
    required String sign,
  }) {
    if (!isWechatSupported()) return;
    WechatKitPlatform.instance.pay(
      appId: appId,
      partnerId: partnerId,
      prepayId: prepayId,
      package: package,
      nonceStr: nonceStr,
      timeStamp: timeStamp,
      sign: sign,
    );
  }

  ///支付宝登录
  void startAlipayAuth({
    required String authInfo,
    bool isShowLoading = true,
  }) {
    if (!isAlipaySupported()) return;
    AlipayKitPlatform.instance.auth(
      authInfo: authInfo,
      isShowLoading: isShowLoading,
    );
  }

  ///支付宝支付
  void startAlipayPay({
    required String orderInfo,
    bool dynamicLaunch = false,
    bool isShowLoading = true,
  }) {
    if (!isAlipaySupported()) return;
    AlipayKitPlatform.instance.pay(
      orderInfo: orderInfo,
      dynamicLaunch: dynamicLaunch,
      isShowLoading: isShowLoading,
    );
  }

  ///苹果登录
  void startAppleAuth() {
    if (_onAppleAuthOk == null) return;
    SignInWithApple.getAppleIDCredential(scopes: [AppleIDAuthorizationScopes.fullName]).then((credential) {
      final appleUid = credential.userIdentifier;
      final appleUname = '${credential.familyName ?? 'Apple'}${credential.givenName ?? 'User'}';
      final authorizationCode = credential.authorizationCode;
      final identityToken = credential.identityToken;
      ZyApp.logDebug(['apple auth ok: \n appleUid: $appleUid \n appleUname: $appleUname \n authorizationCode: $authorizationCode \n identityToken: $identityToken']);
      if (appleUid != null) _onAppleAuthOk!(appleUid, appleUname, authorizationCode, identityToken);
    }, onError: (error, stack) {
      ZyApp.logError([error, '\n', stack]);
    });
  }

  /* ******************************** static content ******************************** */

  static bool? _amapEnable;

  static String? _amapWebKey;

  static bool? _wechatEnable;

  static bool? _alipayEnable;

  ///第三方开放平台参数配置
  static void register({
    required bool amapEnable,
    String? amapAndroidKey,
    String? amapIosKey,
    String? amapWebKey,
    required bool wechatEnable,
    String? wechatAppId,
    String? wechatUniversalLink,
    required bool alipayEnable,
  }) {
    //高德地图
    _amapWebKey = amapWebKey; //始终保存webkey
    if (amapEnable && amapAndroidKey != null && amapIosKey != null && amapWebKey != null) {
      AMapFlutterLocation.updatePrivacyShow(true, true);
      AMapFlutterLocation.updatePrivacyAgree(true);
      AMapFlutterLocation.setApiKey(amapAndroidKey, amapIosKey); //注入androidKey、iosKey
      _amapEnable = true; //保存平台支持情况
    }
    //微信配置
    if (wechatEnable && wechatAppId != null && wechatUniversalLink != null) {
      WechatKitPlatform.instance.registerApp(appId: wechatAppId, universalLink: wechatUniversalLink);
      _wechatEnable = true; //保存平台支持情况
    }
    //支付宝配置
    if (alipayEnable) {
      _alipayEnable = true; //保存平台支持情况
    }
    ZyApp.logInfo(['_amapEnable =>', _amapEnable, '_wechatEnable =>', _wechatEnable, '_alipayEnable =>', _alipayEnable]);
  }

  ///判断平台是否支持高德地图
  static bool isAmapSupported() => _amapEnable == true;

  ///判断平台是否支持微信调用
  static bool isWechatSupported() => _wechatEnable == true;

  ///判断平台是否支持支付宝调用
  static bool isAlipaySupported() => _alipayEnable == true;

  ///判断微信是否已经安装
  static Future<bool> isWechatInstalled() async => isWechatSupported() && await WechatKitPlatform.instance.isInstalled();

  ///判断支付宝是否已经安装
  static Future<bool> isAlipayInstalled() async => isAlipaySupported() && await AlipayKitPlatform.instance.isInstalled();

  ///计算两个经纬度坐标之间的距离（单位：米）
  ///* 维度是平行的，相邻的1度距离约等于111km。经度不是平行的，但是0度纬线上的经度间隔最远。我们为了方便计算，直接使用0度纬线上的距离计算经度间隔，也可以认为是1度约等于111km（111000米）。
  /// 向左移动6位小数点，即经纬度相差0.000001度时候，距离相差位0.111米
  static double countDistance(double latitude1, double longtiude1, double latitude2, double longtiude2) {
    final radLat1 = _countRad(latitude1);
    final radLat2 = _countRad(latitude2);
    final a = radLat1 - radLat2;
    final b = _countRad(longtiude1) - _countRad(longtiude2);
    final s = 2 * math.asin(math.sqrt(math.pow(math.sin(a / 2), 2) + math.cos(radLat1) * math.cos(radLat2) * math.pow(math.sin(b / 2), 2)));
    final distance = s * 6378137.0;
    return double.parse(distance.toStringAsFixed(6)); //四舍五入保留6位小数
  }

  static double _countRad(double d) {
    return d * math.pi / 180.0;
  }
}
