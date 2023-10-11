// ignore_for_file: avoid_function_literals_in_foreach_calls
// ignore_for_file: deprecated_member_use
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: unnecessary_constructor_name

import 'package:shelf_easy/shelf_easy.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:permission_handler_platform_interface/permission_handler_platform_interface.dart';

///
///permission_handler库桥接类
///
class PermissionHandlerLibrary {
  ///class Permission
  static final classPermission = VmClass<Permission>(
    identifier: 'Permission',
    superclassNames: ['Object'],
    externalProxyMap: {
      'byValue': VmProxy(identifier: 'byValue', externalStaticPropertyReader: () => Permission.byValue),
      'accessMediaLocation': VmProxy(identifier: 'accessMediaLocation', externalStaticPropertyReader: () => Permission.accessMediaLocation),
      'accessNotificationPolicy': VmProxy(identifier: 'accessNotificationPolicy', externalStaticPropertyReader: () => Permission.accessNotificationPolicy),
      'activityRecognition': VmProxy(identifier: 'activityRecognition', externalStaticPropertyReader: () => Permission.activityRecognition),
      'appTrackingTransparency': VmProxy(identifier: 'appTrackingTransparency', externalStaticPropertyReader: () => Permission.appTrackingTransparency),
      'audio': VmProxy(identifier: 'audio', externalStaticPropertyReader: () => Permission.audio),
      'bluetooth': VmProxy(identifier: 'bluetooth', externalStaticPropertyReader: () => Permission.bluetooth),
      'bluetoothAdvertise': VmProxy(identifier: 'bluetoothAdvertise', externalStaticPropertyReader: () => Permission.bluetoothAdvertise),
      'bluetoothConnect': VmProxy(identifier: 'bluetoothConnect', externalStaticPropertyReader: () => Permission.bluetoothConnect),
      'bluetoothScan': VmProxy(identifier: 'bluetoothScan', externalStaticPropertyReader: () => Permission.bluetoothScan),
      'calendar': VmProxy(identifier: 'calendar', externalStaticPropertyReader: () => Permission.calendar),
      'calendarFullAccess': VmProxy(identifier: 'calendarFullAccess', externalStaticPropertyReader: () => Permission.calendarFullAccess),
      'calendarReadOnly': VmProxy(identifier: 'calendarReadOnly', externalStaticPropertyReader: () => Permission.calendarReadOnly),
      'camera': VmProxy(identifier: 'camera', externalStaticPropertyReader: () => Permission.camera),
      'contacts': VmProxy(identifier: 'contacts', externalStaticPropertyReader: () => Permission.contacts),
      'criticalAlerts': VmProxy(identifier: 'criticalAlerts', externalStaticPropertyReader: () => Permission.criticalAlerts),
      'ignoreBatteryOptimizations': VmProxy(identifier: 'ignoreBatteryOptimizations', externalStaticPropertyReader: () => Permission.ignoreBatteryOptimizations),
      'location': VmProxy(identifier: 'location', externalStaticPropertyReader: () => Permission.location),
      'locationAlways': VmProxy(identifier: 'locationAlways', externalStaticPropertyReader: () => Permission.locationAlways),
      'locationWhenInUse': VmProxy(identifier: 'locationWhenInUse', externalStaticPropertyReader: () => Permission.locationWhenInUse),
      'manageExternalStorage': VmProxy(identifier: 'manageExternalStorage', externalStaticPropertyReader: () => Permission.manageExternalStorage),
      'mediaLibrary': VmProxy(identifier: 'mediaLibrary', externalStaticPropertyReader: () => Permission.mediaLibrary),
      'microphone': VmProxy(identifier: 'microphone', externalStaticPropertyReader: () => Permission.microphone),
      'nearbyWifiDevices': VmProxy(identifier: 'nearbyWifiDevices', externalStaticPropertyReader: () => Permission.nearbyWifiDevices),
      'notification': VmProxy(identifier: 'notification', externalStaticPropertyReader: () => Permission.notification),
      'phone': VmProxy(identifier: 'phone', externalStaticPropertyReader: () => Permission.phone),
      'photos': VmProxy(identifier: 'photos', externalStaticPropertyReader: () => Permission.photos),
      'photosAddOnly': VmProxy(identifier: 'photosAddOnly', externalStaticPropertyReader: () => Permission.photosAddOnly),
      'reminders': VmProxy(identifier: 'reminders', externalStaticPropertyReader: () => Permission.reminders),
      'requestInstallPackages': VmProxy(identifier: 'requestInstallPackages', externalStaticPropertyReader: () => Permission.requestInstallPackages),
      'scheduleExactAlarm': VmProxy(identifier: 'scheduleExactAlarm', externalStaticPropertyReader: () => Permission.scheduleExactAlarm),
      'sensors': VmProxy(identifier: 'sensors', externalStaticPropertyReader: () => Permission.sensors),
      'sensorsAlways': VmProxy(identifier: 'sensorsAlways', externalStaticPropertyReader: () => Permission.sensorsAlways),
      'sms': VmProxy(identifier: 'sms', externalStaticPropertyReader: () => Permission.sms),
      'speech': VmProxy(identifier: 'speech', externalStaticPropertyReader: () => Permission.speech),
      'storage': VmProxy(identifier: 'storage', externalStaticPropertyReader: () => Permission.storage),
      'systemAlertWindow': VmProxy(identifier: 'systemAlertWindow', externalStaticPropertyReader: () => Permission.systemAlertWindow),
      'unknown': VmProxy(identifier: 'unknown', externalStaticPropertyReader: () => Permission.unknown),
      'values': VmProxy(identifier: 'values', externalStaticPropertyReader: () => Permission.values),
      'videos': VmProxy(identifier: 'videos', externalStaticPropertyReader: () => Permission.videos),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Permission instance) => instance.hashCode),
      'isDenied': VmProxy(identifier: 'isDenied', externalInstancePropertyReader: (Permission instance) => instance.isDenied),
      'isGranted': VmProxy(identifier: 'isGranted', externalInstancePropertyReader: (Permission instance) => instance.isGranted),
      'isLimited': VmProxy(identifier: 'isLimited', externalInstancePropertyReader: (Permission instance) => instance.isLimited),
      'isPermanentlyDenied': VmProxy(identifier: 'isPermanentlyDenied', externalInstancePropertyReader: (Permission instance) => instance.isPermanentlyDenied),
      'isProvisional': VmProxy(identifier: 'isProvisional', externalInstancePropertyReader: (Permission instance) => instance.isProvisional),
      'isRestricted': VmProxy(identifier: 'isRestricted', externalInstancePropertyReader: (Permission instance) => instance.isRestricted),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Permission instance) => instance.noSuchMethod),
      'onDeniedCallback': VmProxy(identifier: 'onDeniedCallback', externalInstancePropertyReader: (Permission instance) => instance.onDeniedCallback, externalInstanceFunctionCaller: (Permission instance, a0) => instance.onDeniedCallback(a0 == null ? null : () => a0())),
      'onGrantedCallback': VmProxy(identifier: 'onGrantedCallback', externalInstancePropertyReader: (Permission instance) => instance.onGrantedCallback, externalInstanceFunctionCaller: (Permission instance, a0) => instance.onGrantedCallback(a0 == null ? null : () => a0())),
      'onLimitedCallback': VmProxy(identifier: 'onLimitedCallback', externalInstancePropertyReader: (Permission instance) => instance.onLimitedCallback, externalInstanceFunctionCaller: (Permission instance, a0) => instance.onLimitedCallback(a0 == null ? null : () => a0())),
      'onPermanentlyDeniedCallback': VmProxy(identifier: 'onPermanentlyDeniedCallback', externalInstancePropertyReader: (Permission instance) => instance.onPermanentlyDeniedCallback, externalInstanceFunctionCaller: (Permission instance, a0) => instance.onPermanentlyDeniedCallback(a0 == null ? null : () => a0())),
      'onProvisionalCallback': VmProxy(identifier: 'onProvisionalCallback', externalInstancePropertyReader: (Permission instance) => instance.onProvisionalCallback, externalInstanceFunctionCaller: (Permission instance, a0) => instance.onProvisionalCallback(a0 == null ? null : () => a0())),
      'onRestrictedCallback': VmProxy(identifier: 'onRestrictedCallback', externalInstancePropertyReader: (Permission instance) => instance.onRestrictedCallback, externalInstanceFunctionCaller: (Permission instance, a0) => instance.onRestrictedCallback(a0 == null ? null : () => a0())),
      'request': VmProxy(identifier: 'request', externalInstancePropertyReader: (Permission instance) => instance.request),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Permission instance) => instance.runtimeType),
      'shouldShowRequestRationale': VmProxy(identifier: 'shouldShowRequestRationale', externalInstancePropertyReader: (Permission instance) => instance.shouldShowRequestRationale),
      'status': VmProxy(identifier: 'status', externalInstancePropertyReader: (Permission instance) => instance.status),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Permission instance) => instance.toString),
      'value': VmProxy(identifier: 'value', externalInstancePropertyReader: (Permission instance) => instance.value),
    },
  );

  ///class PermissionHandlerPlatform
  static final classPermissionHandlerPlatform = VmClass<PermissionHandlerPlatform>(
    identifier: 'PermissionHandlerPlatform',
    superclassNames: ['Object', 'PlatformInterface'],
    externalProxyMap: {
      'instance': VmProxy(identifier: 'instance', externalStaticPropertyReader: () => PermissionHandlerPlatform.instance, externalStaticPropertyWriter: (value) => PermissionHandlerPlatform.instance = value),
      'checkPermissionStatus': VmProxy(identifier: 'checkPermissionStatus', externalInstancePropertyReader: (PermissionHandlerPlatform instance) => instance.checkPermissionStatus),
      'checkServiceStatus': VmProxy(identifier: 'checkServiceStatus', externalInstancePropertyReader: (PermissionHandlerPlatform instance) => instance.checkServiceStatus),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PermissionHandlerPlatform instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PermissionHandlerPlatform instance) => instance.noSuchMethod),
      'openAppSettings': VmProxy(identifier: 'openAppSettings', externalInstancePropertyReader: (PermissionHandlerPlatform instance) => instance.openAppSettings),
      'requestPermissions': VmProxy(identifier: 'requestPermissions', externalInstancePropertyReader: (PermissionHandlerPlatform instance) => instance.requestPermissions),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PermissionHandlerPlatform instance) => instance.runtimeType),
      'shouldShowRequestPermissionRationale': VmProxy(identifier: 'shouldShowRequestPermissionRationale', externalInstancePropertyReader: (PermissionHandlerPlatform instance) => instance.shouldShowRequestPermissionRationale),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PermissionHandlerPlatform instance) => instance.toString),
    },
  );

  ///class PermissionStatus
  static final classPermissionStatus = VmClass<PermissionStatus>(
    identifier: 'PermissionStatus',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'denied': VmProxy(identifier: 'denied', externalStaticPropertyReader: () => PermissionStatus.denied),
      'granted': VmProxy(identifier: 'granted', externalStaticPropertyReader: () => PermissionStatus.granted),
      'limited': VmProxy(identifier: 'limited', externalStaticPropertyReader: () => PermissionStatus.limited),
      'permanentlyDenied': VmProxy(identifier: 'permanentlyDenied', externalStaticPropertyReader: () => PermissionStatus.permanentlyDenied),
      'provisional': VmProxy(identifier: 'provisional', externalStaticPropertyReader: () => PermissionStatus.provisional),
      'restricted': VmProxy(identifier: 'restricted', externalStaticPropertyReader: () => PermissionStatus.restricted),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PermissionStatus instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (PermissionStatus instance) => instance.index),
      'isDenied': VmProxy(identifier: 'isDenied', externalInstancePropertyReader: (PermissionStatus instance) => instance.isDenied),
      'isGranted': VmProxy(identifier: 'isGranted', externalInstancePropertyReader: (PermissionStatus instance) => instance.isGranted),
      'isLimited': VmProxy(identifier: 'isLimited', externalInstancePropertyReader: (PermissionStatus instance) => instance.isLimited),
      'isPermanentlyDenied': VmProxy(identifier: 'isPermanentlyDenied', externalInstancePropertyReader: (PermissionStatus instance) => instance.isPermanentlyDenied),
      'isProvisional': VmProxy(identifier: 'isProvisional', externalInstancePropertyReader: (PermissionStatus instance) => instance.isProvisional),
      'isRestricted': VmProxy(identifier: 'isRestricted', externalInstancePropertyReader: (PermissionStatus instance) => instance.isRestricted),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (PermissionStatus instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PermissionStatus instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PermissionStatus instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PermissionStatus instance) => instance.toString),
      'value': VmProxy(identifier: 'value', externalInstancePropertyReader: (PermissionStatus instance) => instance.value),
    },
  );

  ///class PermissionWithService
  static final classPermissionWithService = VmClass<PermissionWithService>(
    identifier: 'PermissionWithService',
    superclassNames: ['Object', 'Permission'],
    externalProxyMap: {
      'private': VmProxy(identifier: 'private', externalStaticPropertyReader: () => PermissionWithService.private),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PermissionWithService instance) => instance.hashCode),
      'isDenied': VmProxy(identifier: 'isDenied', externalInstancePropertyReader: (PermissionWithService instance) => instance.isDenied),
      'isGranted': VmProxy(identifier: 'isGranted', externalInstancePropertyReader: (PermissionWithService instance) => instance.isGranted),
      'isLimited': VmProxy(identifier: 'isLimited', externalInstancePropertyReader: (PermissionWithService instance) => instance.isLimited),
      'isPermanentlyDenied': VmProxy(identifier: 'isPermanentlyDenied', externalInstancePropertyReader: (PermissionWithService instance) => instance.isPermanentlyDenied),
      'isProvisional': VmProxy(identifier: 'isProvisional', externalInstancePropertyReader: (PermissionWithService instance) => instance.isProvisional),
      'isRestricted': VmProxy(identifier: 'isRestricted', externalInstancePropertyReader: (PermissionWithService instance) => instance.isRestricted),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PermissionWithService instance) => instance.noSuchMethod),
      'onDeniedCallback': VmProxy(identifier: 'onDeniedCallback', externalInstancePropertyReader: (PermissionWithService instance) => instance.onDeniedCallback, externalInstanceFunctionCaller: (PermissionWithService instance, a0) => instance.onDeniedCallback(a0 == null ? null : () => a0())),
      'onGrantedCallback': VmProxy(identifier: 'onGrantedCallback', externalInstancePropertyReader: (PermissionWithService instance) => instance.onGrantedCallback, externalInstanceFunctionCaller: (PermissionWithService instance, a0) => instance.onGrantedCallback(a0 == null ? null : () => a0())),
      'onLimitedCallback': VmProxy(identifier: 'onLimitedCallback', externalInstancePropertyReader: (PermissionWithService instance) => instance.onLimitedCallback, externalInstanceFunctionCaller: (PermissionWithService instance, a0) => instance.onLimitedCallback(a0 == null ? null : () => a0())),
      'onPermanentlyDeniedCallback': VmProxy(identifier: 'onPermanentlyDeniedCallback', externalInstancePropertyReader: (PermissionWithService instance) => instance.onPermanentlyDeniedCallback, externalInstanceFunctionCaller: (PermissionWithService instance, a0) => instance.onPermanentlyDeniedCallback(a0 == null ? null : () => a0())),
      'onProvisionalCallback': VmProxy(identifier: 'onProvisionalCallback', externalInstancePropertyReader: (PermissionWithService instance) => instance.onProvisionalCallback, externalInstanceFunctionCaller: (PermissionWithService instance, a0) => instance.onProvisionalCallback(a0 == null ? null : () => a0())),
      'onRestrictedCallback': VmProxy(identifier: 'onRestrictedCallback', externalInstancePropertyReader: (PermissionWithService instance) => instance.onRestrictedCallback, externalInstanceFunctionCaller: (PermissionWithService instance, a0) => instance.onRestrictedCallback(a0 == null ? null : () => a0())),
      'request': VmProxy(identifier: 'request', externalInstancePropertyReader: (PermissionWithService instance) => instance.request),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PermissionWithService instance) => instance.runtimeType),
      'serviceStatus': VmProxy(identifier: 'serviceStatus', externalInstancePropertyReader: (PermissionWithService instance) => instance.serviceStatus),
      'shouldShowRequestRationale': VmProxy(identifier: 'shouldShowRequestRationale', externalInstancePropertyReader: (PermissionWithService instance) => instance.shouldShowRequestRationale),
      'status': VmProxy(identifier: 'status', externalInstancePropertyReader: (PermissionWithService instance) => instance.status),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PermissionWithService instance) => instance.toString),
      'value': VmProxy(identifier: 'value', externalInstancePropertyReader: (PermissionWithService instance) => instance.value),
    },
  );

  ///class ServiceStatus
  static final classServiceStatus = VmClass<ServiceStatus>(
    identifier: 'ServiceStatus',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'disabled': VmProxy(identifier: 'disabled', externalStaticPropertyReader: () => ServiceStatus.disabled),
      'enabled': VmProxy(identifier: 'enabled', externalStaticPropertyReader: () => ServiceStatus.enabled),
      'notApplicable': VmProxy(identifier: 'notApplicable', externalStaticPropertyReader: () => ServiceStatus.notApplicable),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ServiceStatus instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (ServiceStatus instance) => instance.index),
      'isDisabled': VmProxy(identifier: 'isDisabled', externalInstancePropertyReader: (ServiceStatus instance) => instance.isDisabled),
      'isEnabled': VmProxy(identifier: 'isEnabled', externalInstancePropertyReader: (ServiceStatus instance) => instance.isEnabled),
      'isNotApplicable': VmProxy(identifier: 'isNotApplicable', externalInstancePropertyReader: (ServiceStatus instance) => instance.isNotApplicable),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (ServiceStatus instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ServiceStatus instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ServiceStatus instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ServiceStatus instance) => instance.toString),
      'value': VmProxy(identifier: 'value', externalInstancePropertyReader: (ServiceStatus instance) => instance.value),
    },
  );

  ///all class list
  static final libraryClassList = <VmClass>[
    classPermission,
    classPermissionHandlerPlatform,
    classPermissionStatus,
    classPermissionWithService,
    classServiceStatus,
  ];

  ///all proxy list
  static final libraryProxyList = <VmProxy<void>>[
    VmProxy(identifier: 'openAppSettings', externalStaticPropertyReader: () => openAppSettings),
  ];
}
