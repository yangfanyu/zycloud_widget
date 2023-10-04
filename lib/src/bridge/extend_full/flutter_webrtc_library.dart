// ignore_for_file: avoid_function_literals_in_foreach_calls
// ignore_for_file: deprecated_member_use
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: unnecessary_constructor_name

import 'package:shelf_easy/shelf_easy.dart';
import 'package:flutter/material.dart';
import "package:flutter_webrtc/flutter_webrtc.dart" hide MediaDevices, MediaRecorder;
import "package:webrtc_interface/webrtc_interface.dart" show MediaDevices, MediaRecorder;

///
///flutter_webrtc库桥接类
///
class FlutterWebrtcLibrary {
  ///class AdapterType
  static final classAdapterType = VmClass<AdapterType>(
    identifier: 'AdapterType',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'adapterTypeAny': VmProxy(identifier: 'adapterTypeAny', externalStaticPropertyReader: () => AdapterType.adapterTypeAny),
      'adapterTypeCellular': VmProxy(identifier: 'adapterTypeCellular', externalStaticPropertyReader: () => AdapterType.adapterTypeCellular),
      'adapterTypeEthernet': VmProxy(identifier: 'adapterTypeEthernet', externalStaticPropertyReader: () => AdapterType.adapterTypeEthernet),
      'adapterTypeLoopback': VmProxy(identifier: 'adapterTypeLoopback', externalStaticPropertyReader: () => AdapterType.adapterTypeLoopback),
      'adapterTypeUnknown': VmProxy(identifier: 'adapterTypeUnknown', externalStaticPropertyReader: () => AdapterType.adapterTypeUnknown),
      'adapterTypeVpn': VmProxy(identifier: 'adapterTypeVpn', externalStaticPropertyReader: () => AdapterType.adapterTypeVpn),
      'adapterTypeWifi': VmProxy(identifier: 'adapterTypeWifi', externalStaticPropertyReader: () => AdapterType.adapterTypeWifi),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AdapterType instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (AdapterType instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (AdapterType instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AdapterType instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AdapterType instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AdapterType instance) => instance.toString),
      'value': VmProxy(identifier: 'value', externalInstancePropertyReader: (AdapterType instance) => instance.value),
    },
  );

  ///class Algorithm
  static final classAlgorithm = VmClass<Algorithm>(
    identifier: 'Algorithm',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'kAesCbc': VmProxy(identifier: 'kAesCbc', externalStaticPropertyReader: () => Algorithm.kAesCbc),
      'kAesGcm': VmProxy(identifier: 'kAesGcm', externalStaticPropertyReader: () => Algorithm.kAesGcm),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Algorithm instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (Algorithm instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (Algorithm instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Algorithm instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Algorithm instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Algorithm instance) => instance.toString),
    },
  );

  ///class AndroidAudioAttributesContentType
  static final classAndroidAudioAttributesContentType = VmClass<AndroidAudioAttributesContentType>(
    identifier: 'AndroidAudioAttributesContentType',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'movie': VmProxy(identifier: 'movie', externalStaticPropertyReader: () => AndroidAudioAttributesContentType.movie),
      'music': VmProxy(identifier: 'music', externalStaticPropertyReader: () => AndroidAudioAttributesContentType.music),
      'sonification': VmProxy(identifier: 'sonification', externalStaticPropertyReader: () => AndroidAudioAttributesContentType.sonification),
      'speech': VmProxy(identifier: 'speech', externalStaticPropertyReader: () => AndroidAudioAttributesContentType.speech),
      'unknown': VmProxy(identifier: 'unknown', externalStaticPropertyReader: () => AndroidAudioAttributesContentType.unknown),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AndroidAudioAttributesContentType instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (AndroidAudioAttributesContentType instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (AndroidAudioAttributesContentType instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AndroidAudioAttributesContentType instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AndroidAudioAttributesContentType instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AndroidAudioAttributesContentType instance) => instance.toString),
      'value': VmProxy(identifier: 'value', externalInstancePropertyReader: (AndroidAudioAttributesContentType instance) => instance.value),
    },
  );

  ///class AndroidAudioAttributesUsageType
  static final classAndroidAudioAttributesUsageType = VmClass<AndroidAudioAttributesUsageType>(
    identifier: 'AndroidAudioAttributesUsageType',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'alarm': VmProxy(identifier: 'alarm', externalStaticPropertyReader: () => AndroidAudioAttributesUsageType.alarm),
      'assistanceAccessibility': VmProxy(identifier: 'assistanceAccessibility', externalStaticPropertyReader: () => AndroidAudioAttributesUsageType.assistanceAccessibility),
      'assistanceNavigationGuidance': VmProxy(identifier: 'assistanceNavigationGuidance', externalStaticPropertyReader: () => AndroidAudioAttributesUsageType.assistanceNavigationGuidance),
      'assistanceSonification': VmProxy(identifier: 'assistanceSonification', externalStaticPropertyReader: () => AndroidAudioAttributesUsageType.assistanceSonification),
      'assistant': VmProxy(identifier: 'assistant', externalStaticPropertyReader: () => AndroidAudioAttributesUsageType.assistant),
      'game': VmProxy(identifier: 'game', externalStaticPropertyReader: () => AndroidAudioAttributesUsageType.game),
      'media': VmProxy(identifier: 'media', externalStaticPropertyReader: () => AndroidAudioAttributesUsageType.media),
      'notification': VmProxy(identifier: 'notification', externalStaticPropertyReader: () => AndroidAudioAttributesUsageType.notification),
      'notificationEvent': VmProxy(identifier: 'notificationEvent', externalStaticPropertyReader: () => AndroidAudioAttributesUsageType.notificationEvent),
      'notificationRingtone': VmProxy(identifier: 'notificationRingtone', externalStaticPropertyReader: () => AndroidAudioAttributesUsageType.notificationRingtone),
      'unknown': VmProxy(identifier: 'unknown', externalStaticPropertyReader: () => AndroidAudioAttributesUsageType.unknown),
      'voiceCommunication': VmProxy(identifier: 'voiceCommunication', externalStaticPropertyReader: () => AndroidAudioAttributesUsageType.voiceCommunication),
      'voiceCommunicationSignalling': VmProxy(identifier: 'voiceCommunicationSignalling', externalStaticPropertyReader: () => AndroidAudioAttributesUsageType.voiceCommunicationSignalling),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AndroidAudioAttributesUsageType instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (AndroidAudioAttributesUsageType instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (AndroidAudioAttributesUsageType instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AndroidAudioAttributesUsageType instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AndroidAudioAttributesUsageType instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AndroidAudioAttributesUsageType instance) => instance.toString),
      'value': VmProxy(identifier: 'value', externalInstancePropertyReader: (AndroidAudioAttributesUsageType instance) => instance.value),
    },
  );

  ///class AndroidAudioConfiguration
  static final classAndroidAudioConfiguration = VmClass<AndroidAudioConfiguration>(
    identifier: 'AndroidAudioConfiguration',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => AndroidAudioConfiguration.new),
      'communication': VmProxy(identifier: 'communication', externalStaticPropertyReader: () => AndroidAudioConfiguration.communication),
      'media': VmProxy(identifier: 'media', externalStaticPropertyReader: () => AndroidAudioConfiguration.media),
      'androidAudioAttributesContentType': VmProxy(identifier: 'androidAudioAttributesContentType', externalInstancePropertyReader: (AndroidAudioConfiguration instance) => instance.androidAudioAttributesContentType),
      'androidAudioAttributesUsageType': VmProxy(identifier: 'androidAudioAttributesUsageType', externalInstancePropertyReader: (AndroidAudioConfiguration instance) => instance.androidAudioAttributesUsageType),
      'androidAudioFocusMode': VmProxy(identifier: 'androidAudioFocusMode', externalInstancePropertyReader: (AndroidAudioConfiguration instance) => instance.androidAudioFocusMode),
      'androidAudioMode': VmProxy(identifier: 'androidAudioMode', externalInstancePropertyReader: (AndroidAudioConfiguration instance) => instance.androidAudioMode),
      'androidAudioStreamType': VmProxy(identifier: 'androidAudioStreamType', externalInstancePropertyReader: (AndroidAudioConfiguration instance) => instance.androidAudioStreamType),
      'forceHandleAudioRouting': VmProxy(identifier: 'forceHandleAudioRouting', externalInstancePropertyReader: (AndroidAudioConfiguration instance) => instance.forceHandleAudioRouting),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AndroidAudioConfiguration instance) => instance.hashCode),
      'manageAudioFocus': VmProxy(identifier: 'manageAudioFocus', externalInstancePropertyReader: (AndroidAudioConfiguration instance) => instance.manageAudioFocus),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AndroidAudioConfiguration instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AndroidAudioConfiguration instance) => instance.runtimeType),
      'toMap': VmProxy(identifier: 'toMap', externalInstancePropertyReader: (AndroidAudioConfiguration instance) => instance.toMap),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AndroidAudioConfiguration instance) => instance.toString),
    },
  );

  ///class AndroidAudioFocusMode
  static final classAndroidAudioFocusMode = VmClass<AndroidAudioFocusMode>(
    identifier: 'AndroidAudioFocusMode',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'gain': VmProxy(identifier: 'gain', externalStaticPropertyReader: () => AndroidAudioFocusMode.gain),
      'gainTransient': VmProxy(identifier: 'gainTransient', externalStaticPropertyReader: () => AndroidAudioFocusMode.gainTransient),
      'gainTransientExclusive': VmProxy(identifier: 'gainTransientExclusive', externalStaticPropertyReader: () => AndroidAudioFocusMode.gainTransientExclusive),
      'gainTransientMayDuck': VmProxy(identifier: 'gainTransientMayDuck', externalStaticPropertyReader: () => AndroidAudioFocusMode.gainTransientMayDuck),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AndroidAudioFocusMode instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (AndroidAudioFocusMode instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (AndroidAudioFocusMode instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AndroidAudioFocusMode instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AndroidAudioFocusMode instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AndroidAudioFocusMode instance) => instance.toString),
      'value': VmProxy(identifier: 'value', externalInstancePropertyReader: (AndroidAudioFocusMode instance) => instance.value),
    },
  );

  ///class AndroidAudioStreamType
  static final classAndroidAudioStreamType = VmClass<AndroidAudioStreamType>(
    identifier: 'AndroidAudioStreamType',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'accessibility': VmProxy(identifier: 'accessibility', externalStaticPropertyReader: () => AndroidAudioStreamType.accessibility),
      'alarm': VmProxy(identifier: 'alarm', externalStaticPropertyReader: () => AndroidAudioStreamType.alarm),
      'dtmf': VmProxy(identifier: 'dtmf', externalStaticPropertyReader: () => AndroidAudioStreamType.dtmf),
      'music': VmProxy(identifier: 'music', externalStaticPropertyReader: () => AndroidAudioStreamType.music),
      'notification': VmProxy(identifier: 'notification', externalStaticPropertyReader: () => AndroidAudioStreamType.notification),
      'ring': VmProxy(identifier: 'ring', externalStaticPropertyReader: () => AndroidAudioStreamType.ring),
      'system': VmProxy(identifier: 'system', externalStaticPropertyReader: () => AndroidAudioStreamType.system),
      'voiceCall': VmProxy(identifier: 'voiceCall', externalStaticPropertyReader: () => AndroidAudioStreamType.voiceCall),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AndroidAudioStreamType instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (AndroidAudioStreamType instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (AndroidAudioStreamType instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AndroidAudioStreamType instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AndroidAudioStreamType instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AndroidAudioStreamType instance) => instance.toString),
      'value': VmProxy(identifier: 'value', externalInstancePropertyReader: (AndroidAudioStreamType instance) => instance.value),
    },
  );

  ///class AndroidNativeAudioManagement
  static final classAndroidNativeAudioManagement = VmClass<AndroidNativeAudioManagement>(
    identifier: 'AndroidNativeAudioManagement',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => AndroidNativeAudioManagement.new),
      'setAndroidAudioConfiguration': VmProxy(identifier: 'setAndroidAudioConfiguration', externalStaticPropertyReader: () => AndroidNativeAudioManagement.setAndroidAudioConfiguration),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AndroidNativeAudioManagement instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AndroidNativeAudioManagement instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AndroidNativeAudioManagement instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AndroidNativeAudioManagement instance) => instance.toString),
    },
  );

  ///class AudioOutputOptions
  static final classAudioOutputOptions = VmClass<AudioOutputOptions>(
    identifier: 'AudioOutputOptions',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => AudioOutputOptions.new),
      'deviceId': VmProxy(identifier: 'deviceId', externalInstancePropertyReader: (AudioOutputOptions instance) => instance.deviceId),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AudioOutputOptions instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AudioOutputOptions instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AudioOutputOptions instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AudioOutputOptions instance) => instance.toString),
    },
  );

  ///class DesktopCapturer
  static final classDesktopCapturer = VmClass<DesktopCapturer>(
    identifier: 'DesktopCapturer',
    superclassNames: ['Object'],
    externalProxyMap: {
      'getSources': VmProxy(identifier: 'getSources', externalInstancePropertyReader: (DesktopCapturer instance) => instance.getSources),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (DesktopCapturer instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (DesktopCapturer instance) => instance.noSuchMethod),
      'onAdded': VmProxy(identifier: 'onAdded', externalInstancePropertyReader: (DesktopCapturer instance) => instance.onAdded),
      'onNameChanged': VmProxy(identifier: 'onNameChanged', externalInstancePropertyReader: (DesktopCapturer instance) => instance.onNameChanged),
      'onRemoved': VmProxy(identifier: 'onRemoved', externalInstancePropertyReader: (DesktopCapturer instance) => instance.onRemoved),
      'onThumbnailChanged': VmProxy(identifier: 'onThumbnailChanged', externalInstancePropertyReader: (DesktopCapturer instance) => instance.onThumbnailChanged),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (DesktopCapturer instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (DesktopCapturer instance) => instance.toString),
      'updateSources': VmProxy(identifier: 'updateSources', externalInstancePropertyReader: (DesktopCapturer instance) => instance.updateSources),
    },
  );

  ///class DesktopCapturerSource
  static final classDesktopCapturerSource = VmClass<DesktopCapturerSource>(
    identifier: 'DesktopCapturerSource',
    superclassNames: ['Object'],
    externalProxyMap: {
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (DesktopCapturerSource instance) => instance.hashCode),
      'id': VmProxy(identifier: 'id', externalInstancePropertyReader: (DesktopCapturerSource instance) => instance.id),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (DesktopCapturerSource instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (DesktopCapturerSource instance) => instance.noSuchMethod),
      'onNameChanged': VmProxy(identifier: 'onNameChanged', externalInstancePropertyReader: (DesktopCapturerSource instance) => instance.onNameChanged),
      'onThumbnailChanged': VmProxy(identifier: 'onThumbnailChanged', externalInstancePropertyReader: (DesktopCapturerSource instance) => instance.onThumbnailChanged),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (DesktopCapturerSource instance) => instance.runtimeType),
      'thumbnail': VmProxy(identifier: 'thumbnail', externalInstancePropertyReader: (DesktopCapturerSource instance) => instance.thumbnail),
      'thumbnailSize': VmProxy(identifier: 'thumbnailSize', externalInstancePropertyReader: (DesktopCapturerSource instance) => instance.thumbnailSize),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (DesktopCapturerSource instance) => instance.toString),
      'type': VmProxy(identifier: 'type', externalInstancePropertyReader: (DesktopCapturerSource instance) => instance.type),
    },
  );

  ///class FrameCryptor
  static final classFrameCryptor = VmClass<FrameCryptor>(
    identifier: 'FrameCryptor',
    superclassNames: ['Object'],
    externalProxyMap: {
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (FrameCryptor instance) => instance.dispose),
      'enabled': VmProxy(identifier: 'enabled', externalInstancePropertyReader: (FrameCryptor instance) => instance.enabled),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (FrameCryptor instance) => instance.hashCode),
      'keyIndex': VmProxy(identifier: 'keyIndex', externalInstancePropertyReader: (FrameCryptor instance) => instance.keyIndex),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (FrameCryptor instance) => instance.noSuchMethod),
      'onFrameCryptorStateChanged': VmProxy(identifier: 'onFrameCryptorStateChanged', externalInstancePropertyReader: (FrameCryptor instance) => instance.onFrameCryptorStateChanged, externalInstancePropertyWriter: (FrameCryptor instance, value) => instance.onFrameCryptorStateChanged = value),
      'participantId': VmProxy(identifier: 'participantId', externalInstancePropertyReader: (FrameCryptor instance) => instance.participantId),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (FrameCryptor instance) => instance.runtimeType),
      'setEnabled': VmProxy(identifier: 'setEnabled', externalInstancePropertyReader: (FrameCryptor instance) => instance.setEnabled),
      'setKeyIndex': VmProxy(identifier: 'setKeyIndex', externalInstancePropertyReader: (FrameCryptor instance) => instance.setKeyIndex),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (FrameCryptor instance) => instance.toString),
      'updateCodec': VmProxy(identifier: 'updateCodec', externalInstancePropertyReader: (FrameCryptor instance) => instance.updateCodec),
    },
  );

  ///class FrameCryptorFactory
  static final classFrameCryptorFactory = VmClass<FrameCryptorFactory>(
    identifier: 'FrameCryptorFactory',
    superclassNames: ['Object'],
    externalProxyMap: {
      'createDefaultKeyProvider': VmProxy(identifier: 'createDefaultKeyProvider', externalInstancePropertyReader: (FrameCryptorFactory instance) => instance.createDefaultKeyProvider),
      'createFrameCryptorForRtpReceiver': VmProxy(identifier: 'createFrameCryptorForRtpReceiver', externalInstancePropertyReader: (FrameCryptorFactory instance) => instance.createFrameCryptorForRtpReceiver),
      'createFrameCryptorForRtpSender': VmProxy(identifier: 'createFrameCryptorForRtpSender', externalInstancePropertyReader: (FrameCryptorFactory instance) => instance.createFrameCryptorForRtpSender),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (FrameCryptorFactory instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (FrameCryptorFactory instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (FrameCryptorFactory instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (FrameCryptorFactory instance) => instance.toString),
    },
  );

  ///class FrameCryptorState
  static final classFrameCryptorState = VmClass<FrameCryptorState>(
    identifier: 'FrameCryptorState',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'FrameCryptorStateDecryptionFailed': VmProxy(identifier: 'FrameCryptorStateDecryptionFailed', externalStaticPropertyReader: () => FrameCryptorState.FrameCryptorStateDecryptionFailed),
      'FrameCryptorStateEncryptionFailed': VmProxy(identifier: 'FrameCryptorStateEncryptionFailed', externalStaticPropertyReader: () => FrameCryptorState.FrameCryptorStateEncryptionFailed),
      'FrameCryptorStateInternalError': VmProxy(identifier: 'FrameCryptorStateInternalError', externalStaticPropertyReader: () => FrameCryptorState.FrameCryptorStateInternalError),
      'FrameCryptorStateKeyRatcheted': VmProxy(identifier: 'FrameCryptorStateKeyRatcheted', externalStaticPropertyReader: () => FrameCryptorState.FrameCryptorStateKeyRatcheted),
      'FrameCryptorStateMissingKey': VmProxy(identifier: 'FrameCryptorStateMissingKey', externalStaticPropertyReader: () => FrameCryptorState.FrameCryptorStateMissingKey),
      'FrameCryptorStateNew': VmProxy(identifier: 'FrameCryptorStateNew', externalStaticPropertyReader: () => FrameCryptorState.FrameCryptorStateNew),
      'FrameCryptorStateOk': VmProxy(identifier: 'FrameCryptorStateOk', externalStaticPropertyReader: () => FrameCryptorState.FrameCryptorStateOk),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (FrameCryptorState instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (FrameCryptorState instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (FrameCryptorState instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (FrameCryptorState instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (FrameCryptorState instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (FrameCryptorState instance) => instance.toString),
    },
  );

  ///class Helper
  static final classHelper = VmClass<Helper>(
    identifier: 'Helper',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => Helper.new),
      'audiooutputs': VmProxy(identifier: 'audiooutputs', externalStaticPropertyReader: () => Helper.audiooutputs),
      'cameras': VmProxy(identifier: 'cameras', externalStaticPropertyReader: () => Helper.cameras),
      'clearAndroidCommunicationDevice': VmProxy(identifier: 'clearAndroidCommunicationDevice', externalStaticPropertyReader: () => Helper.clearAndroidCommunicationDevice),
      'enumerateDevices': VmProxy(identifier: 'enumerateDevices', externalStaticPropertyReader: () => Helper.enumerateDevices),
      'openCamera': VmProxy(identifier: 'openCamera', externalStaticPropertyReader: () => Helper.openCamera),
      'selectAudioInput': VmProxy(identifier: 'selectAudioInput', externalStaticPropertyReader: () => Helper.selectAudioInput),
      'selectAudioOutput': VmProxy(identifier: 'selectAudioOutput', externalStaticPropertyReader: () => Helper.selectAudioOutput),
      'setAndroidAudioConfiguration': VmProxy(identifier: 'setAndroidAudioConfiguration', externalStaticPropertyReader: () => Helper.setAndroidAudioConfiguration),
      'setAppleAudioConfiguration': VmProxy(identifier: 'setAppleAudioConfiguration', externalStaticPropertyReader: () => Helper.setAppleAudioConfiguration),
      'setAppleAudioIOMode': VmProxy(identifier: 'setAppleAudioIOMode', externalStaticPropertyReader: () => Helper.setAppleAudioIOMode),
      'setMicrophoneMute': VmProxy(identifier: 'setMicrophoneMute', externalStaticPropertyReader: () => Helper.setMicrophoneMute),
      'setSpeakerphoneOn': VmProxy(identifier: 'setSpeakerphoneOn', externalStaticPropertyReader: () => Helper.setSpeakerphoneOn),
      'setSpeakerphoneOnButPreferBluetooth': VmProxy(identifier: 'setSpeakerphoneOnButPreferBluetooth', externalStaticPropertyReader: () => Helper.setSpeakerphoneOnButPreferBluetooth),
      'setVolume': VmProxy(identifier: 'setVolume', externalStaticPropertyReader: () => Helper.setVolume),
      'setZoom': VmProxy(identifier: 'setZoom', externalStaticPropertyReader: () => Helper.setZoom),
      'switchCamera': VmProxy(identifier: 'switchCamera', externalStaticPropertyReader: () => Helper.switchCamera),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Helper instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Helper instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Helper instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Helper instance) => instance.toString),
    },
  );

  ///class KeyProvider
  static final classKeyProvider = VmClass<KeyProvider>(
    identifier: 'KeyProvider',
    superclassNames: ['Object'],
    externalProxyMap: {
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (KeyProvider instance) => instance.dispose),
      'exportKey': VmProxy(identifier: 'exportKey', externalInstancePropertyReader: (KeyProvider instance) => instance.exportKey),
      'exportSharedKey': VmProxy(identifier: 'exportSharedKey', externalInstancePropertyReader: (KeyProvider instance) => instance.exportSharedKey),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (KeyProvider instance) => instance.hashCode),
      'id': VmProxy(identifier: 'id', externalInstancePropertyReader: (KeyProvider instance) => instance.id),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (KeyProvider instance) => instance.noSuchMethod),
      'ratchetKey': VmProxy(identifier: 'ratchetKey', externalInstancePropertyReader: (KeyProvider instance) => instance.ratchetKey),
      'ratchetSharedKey': VmProxy(identifier: 'ratchetSharedKey', externalInstancePropertyReader: (KeyProvider instance) => instance.ratchetSharedKey),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (KeyProvider instance) => instance.runtimeType),
      'setKey': VmProxy(identifier: 'setKey', externalInstancePropertyReader: (KeyProvider instance) => instance.setKey),
      'setSharedKey': VmProxy(identifier: 'setSharedKey', externalInstancePropertyReader: (KeyProvider instance) => instance.setSharedKey),
      'setSifTrailer': VmProxy(identifier: 'setSifTrailer', externalInstancePropertyReader: (KeyProvider instance) => instance.setSifTrailer),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (KeyProvider instance) => instance.toString),
    },
  );

  ///class KeyProviderOptions
  static final classKeyProviderOptions = VmClass<KeyProviderOptions>(
    identifier: 'KeyProviderOptions',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => KeyProviderOptions.new),
      'failureTolerance': VmProxy(identifier: 'failureTolerance', externalInstancePropertyReader: (KeyProviderOptions instance) => instance.failureTolerance, externalInstancePropertyWriter: (KeyProviderOptions instance, value) => instance.failureTolerance = value),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (KeyProviderOptions instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (KeyProviderOptions instance) => instance.noSuchMethod),
      'ratchetSalt': VmProxy(identifier: 'ratchetSalt', externalInstancePropertyReader: (KeyProviderOptions instance) => instance.ratchetSalt, externalInstancePropertyWriter: (KeyProviderOptions instance, value) => instance.ratchetSalt = value),
      'ratchetWindowSize': VmProxy(identifier: 'ratchetWindowSize', externalInstancePropertyReader: (KeyProviderOptions instance) => instance.ratchetWindowSize, externalInstancePropertyWriter: (KeyProviderOptions instance, value) => instance.ratchetWindowSize = value),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (KeyProviderOptions instance) => instance.runtimeType),
      'sharedKey': VmProxy(identifier: 'sharedKey', externalInstancePropertyReader: (KeyProviderOptions instance) => instance.sharedKey, externalInstancePropertyWriter: (KeyProviderOptions instance, value) => instance.sharedKey = value),
      'toJson': VmProxy(identifier: 'toJson', externalInstancePropertyReader: (KeyProviderOptions instance) => instance.toJson),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (KeyProviderOptions instance) => instance.toString),
      'uncryptedMagicBytes': VmProxy(identifier: 'uncryptedMagicBytes', externalInstancePropertyReader: (KeyProviderOptions instance) => instance.uncryptedMagicBytes, externalInstancePropertyWriter: (KeyProviderOptions instance, value) => instance.uncryptedMagicBytes = value),
    },
  );

  ///class MediaDeviceInfo
  static final classMediaDeviceInfo = VmClass<MediaDeviceInfo>(
    identifier: 'MediaDeviceInfo',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => MediaDeviceInfo.new),
      'deviceId': VmProxy(identifier: 'deviceId', externalInstancePropertyReader: (MediaDeviceInfo instance) => instance.deviceId),
      'groupId': VmProxy(identifier: 'groupId', externalInstancePropertyReader: (MediaDeviceInfo instance) => instance.groupId),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (MediaDeviceInfo instance) => instance.hashCode),
      'kind': VmProxy(identifier: 'kind', externalInstancePropertyReader: (MediaDeviceInfo instance) => instance.kind),
      'label': VmProxy(identifier: 'label', externalInstancePropertyReader: (MediaDeviceInfo instance) => instance.label),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (MediaDeviceInfo instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (MediaDeviceInfo instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (MediaDeviceInfo instance) => instance.toString),
    },
  );

  ///class MediaDevices
  static final classMediaDevices = VmClass<MediaDevices>(
    identifier: 'MediaDevices',
    superclassNames: ['Object'],
    externalProxyMap: {
      'enumerateDevices': VmProxy(identifier: 'enumerateDevices', externalInstancePropertyReader: (MediaDevices instance) => instance.enumerateDevices),
      'getDisplayMedia': VmProxy(identifier: 'getDisplayMedia', externalInstancePropertyReader: (MediaDevices instance) => instance.getDisplayMedia),
      'getSources': VmProxy(identifier: 'getSources', externalInstancePropertyReader: (MediaDevices instance) => instance.getSources),
      'getSupportedConstraints': VmProxy(identifier: 'getSupportedConstraints', externalInstancePropertyReader: (MediaDevices instance) => instance.getSupportedConstraints),
      'getUserMedia': VmProxy(identifier: 'getUserMedia', externalInstancePropertyReader: (MediaDevices instance) => instance.getUserMedia),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (MediaDevices instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (MediaDevices instance) => instance.noSuchMethod),
      'ondevicechange': VmProxy(identifier: 'ondevicechange', externalInstancePropertyReader: (MediaDevices instance) => instance.ondevicechange, externalInstancePropertyWriter: (MediaDevices instance, value) => instance.ondevicechange = value),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (MediaDevices instance) => instance.runtimeType),
      'selectAudioOutput': VmProxy(identifier: 'selectAudioOutput', externalInstancePropertyReader: (MediaDevices instance) => instance.selectAudioOutput),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (MediaDevices instance) => instance.toString),
    },
  );

  ///class MediaRecorder
  static final classMediaRecorder = VmClass<MediaRecorder>(
    identifier: 'MediaRecorder',
    superclassNames: ['Object'],
    externalProxyMap: {
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (MediaRecorder instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (MediaRecorder instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (MediaRecorder instance) => instance.runtimeType),
      'start': VmProxy(identifier: 'start', externalInstancePropertyReader: (MediaRecorder instance) => instance.start),
      'startWeb': VmProxy(identifier: 'startWeb', externalInstancePropertyReader: (MediaRecorder instance) => instance.startWeb, externalInstanceFunctionCaller: (MediaRecorder instance, a0, {onDataChunk, mimeType = '', timeSlice = 1000}) => instance.startWeb(a0, onDataChunk: onDataChunk == null ? null : (b0, b1) => onDataChunk(b0, b1), mimeType: mimeType, timeSlice: timeSlice)),
      'stop': VmProxy(identifier: 'stop', externalInstancePropertyReader: (MediaRecorder instance) => instance.stop),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (MediaRecorder instance) => instance.toString),
    },
  );

  ///class MediaStream
  static final classMediaStream = VmClass<MediaStream>(
    identifier: 'MediaStream',
    superclassNames: ['Object'],
    externalProxyMap: {
      'active': VmProxy(identifier: 'active', externalInstancePropertyReader: (MediaStream instance) => instance.active),
      'addTrack': VmProxy(identifier: 'addTrack', externalInstancePropertyReader: (MediaStream instance) => instance.addTrack),
      'clone': VmProxy(identifier: 'clone', externalInstancePropertyReader: (MediaStream instance) => instance.clone),
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (MediaStream instance) => instance.dispose),
      'getAudioTracks': VmProxy(identifier: 'getAudioTracks', externalInstancePropertyReader: (MediaStream instance) => instance.getAudioTracks),
      'getMediaTracks': VmProxy(identifier: 'getMediaTracks', externalInstancePropertyReader: (MediaStream instance) => instance.getMediaTracks),
      'getTrackById': VmProxy(identifier: 'getTrackById', externalInstancePropertyReader: (MediaStream instance) => instance.getTrackById),
      'getTracks': VmProxy(identifier: 'getTracks', externalInstancePropertyReader: (MediaStream instance) => instance.getTracks),
      'getVideoTracks': VmProxy(identifier: 'getVideoTracks', externalInstancePropertyReader: (MediaStream instance) => instance.getVideoTracks),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (MediaStream instance) => instance.hashCode),
      'id': VmProxy(identifier: 'id', externalInstancePropertyReader: (MediaStream instance) => instance.id),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (MediaStream instance) => instance.noSuchMethod),
      'onAddTrack': VmProxy(identifier: 'onAddTrack', externalInstancePropertyReader: (MediaStream instance) => instance.onAddTrack, externalInstancePropertyWriter: (MediaStream instance, value) => instance.onAddTrack = value),
      'onRemoveTrack': VmProxy(identifier: 'onRemoveTrack', externalInstancePropertyReader: (MediaStream instance) => instance.onRemoveTrack, externalInstancePropertyWriter: (MediaStream instance, value) => instance.onRemoveTrack = value),
      'ownerTag': VmProxy(identifier: 'ownerTag', externalInstancePropertyReader: (MediaStream instance) => instance.ownerTag),
      'removeTrack': VmProxy(identifier: 'removeTrack', externalInstancePropertyReader: (MediaStream instance) => instance.removeTrack),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (MediaStream instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (MediaStream instance) => instance.toString),
    },
  );

  ///class MediaStreamConstraints
  static final classMediaStreamConstraints = VmClass<MediaStreamConstraints>(
    identifier: 'MediaStreamConstraints',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => MediaStreamConstraints.new),
      'audio': VmProxy(identifier: 'audio', externalInstancePropertyReader: (MediaStreamConstraints instance) => instance.audio, externalInstancePropertyWriter: (MediaStreamConstraints instance, value) => instance.audio = value),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (MediaStreamConstraints instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (MediaStreamConstraints instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (MediaStreamConstraints instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (MediaStreamConstraints instance) => instance.toString),
      'video': VmProxy(identifier: 'video', externalInstancePropertyReader: (MediaStreamConstraints instance) => instance.video, externalInstancePropertyWriter: (MediaStreamConstraints instance, value) => instance.video = value),
    },
  );

  ///class MediaStreamTrack
  static final classMediaStreamTrack = VmClass<MediaStreamTrack>(
    identifier: 'MediaStreamTrack',
    superclassNames: ['Object'],
    externalProxyMap: {
      'adaptRes': VmProxy(identifier: 'adaptRes', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.adaptRes),
      'applyConstraints': VmProxy(identifier: 'applyConstraints', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.applyConstraints),
      'captureFrame': VmProxy(identifier: 'captureFrame', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.captureFrame),
      'clone': VmProxy(identifier: 'clone', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.clone),
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.dispose),
      'enabled': VmProxy(identifier: 'enabled', externalInstancePropertyWriter: (MediaStreamTrack instance, value) => instance.enabled = value, externalInstancePropertyReader: (MediaStreamTrack instance) => instance.enabled),
      'enableSpeakerphone': VmProxy(identifier: 'enableSpeakerphone', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.enableSpeakerphone),
      'getConstraints': VmProxy(identifier: 'getConstraints', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.getConstraints),
      'getSettings': VmProxy(identifier: 'getSettings', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.getSettings),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.hashCode),
      'hasTorch': VmProxy(identifier: 'hasTorch', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.hasTorch),
      'id': VmProxy(identifier: 'id', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.id),
      'kind': VmProxy(identifier: 'kind', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.kind),
      'label': VmProxy(identifier: 'label', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.label),
      'muted': VmProxy(identifier: 'muted', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.muted),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.noSuchMethod),
      'onEnded': VmProxy(identifier: 'onEnded', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.onEnded, externalInstancePropertyWriter: (MediaStreamTrack instance, value) => instance.onEnded = value),
      'onMute': VmProxy(identifier: 'onMute', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.onMute, externalInstancePropertyWriter: (MediaStreamTrack instance, value) => instance.onMute = value),
      'onUnMute': VmProxy(identifier: 'onUnMute', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.onUnMute, externalInstancePropertyWriter: (MediaStreamTrack instance, value) => instance.onUnMute = value),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.runtimeType),
      'setTorch': VmProxy(identifier: 'setTorch', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.setTorch),
      'stop': VmProxy(identifier: 'stop', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.stop),
      'switchCamera': VmProxy(identifier: 'switchCamera', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.switchCamera),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (MediaStreamTrack instance) => instance.toString),
    },
  );

  ///class MediaTrackSupportedConstraints
  static final classMediaTrackSupportedConstraints = VmClass<MediaTrackSupportedConstraints>(
    identifier: 'MediaTrackSupportedConstraints',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => MediaTrackSupportedConstraints.new),
      'aspectRatio': VmProxy(identifier: 'aspectRatio', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.aspectRatio),
      'autoGainControl': VmProxy(identifier: 'autoGainControl', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.autoGainControl),
      'brightness': VmProxy(identifier: 'brightness', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.brightness),
      'channelCount': VmProxy(identifier: 'channelCount', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.channelCount),
      'colorTemperature': VmProxy(identifier: 'colorTemperature', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.colorTemperature),
      'contrast': VmProxy(identifier: 'contrast', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.contrast),
      'deviceId': VmProxy(identifier: 'deviceId', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.deviceId),
      'echoCancellation': VmProxy(identifier: 'echoCancellation', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.echoCancellation),
      'exposureCompensation': VmProxy(identifier: 'exposureCompensation', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.exposureCompensation),
      'exposureMode': VmProxy(identifier: 'exposureMode', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.exposureMode),
      'exposureTime': VmProxy(identifier: 'exposureTime', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.exposureTime),
      'facingMode': VmProxy(identifier: 'facingMode', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.facingMode),
      'focusDistance': VmProxy(identifier: 'focusDistance', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.focusDistance),
      'focusMode': VmProxy(identifier: 'focusMode', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.focusMode),
      'frameRate': VmProxy(identifier: 'frameRate', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.frameRate),
      'groupId': VmProxy(identifier: 'groupId', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.groupId),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.hashCode),
      'height': VmProxy(identifier: 'height', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.height),
      'iso': VmProxy(identifier: 'iso', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.iso),
      'latency': VmProxy(identifier: 'latency', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.latency),
      'noiseSuppression': VmProxy(identifier: 'noiseSuppression', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.noiseSuppression),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.noSuchMethod),
      'pan': VmProxy(identifier: 'pan', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.pan),
      'pointsOfInterest': VmProxy(identifier: 'pointsOfInterest', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.pointsOfInterest),
      'resizeMode': VmProxy(identifier: 'resizeMode', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.resizeMode),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.runtimeType),
      'sampleRate': VmProxy(identifier: 'sampleRate', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.sampleRate),
      'sampleSize': VmProxy(identifier: 'sampleSize', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.sampleSize),
      'saturation': VmProxy(identifier: 'saturation', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.saturation),
      'sharpness': VmProxy(identifier: 'sharpness', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.sharpness),
      'tilt': VmProxy(identifier: 'tilt', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.tilt),
      'torch': VmProxy(identifier: 'torch', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.torch),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.toString),
      'whiteBalanceMode': VmProxy(identifier: 'whiteBalanceMode', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.whiteBalanceMode),
      'width': VmProxy(identifier: 'width', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.width),
      'zoom': VmProxy(identifier: 'zoom', externalInstancePropertyReader: (MediaTrackSupportedConstraints instance) => instance.zoom),
    },
  );

  ///class MessageType
  static final classMessageType = VmClass<MessageType>(
    identifier: 'MessageType',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'binary': VmProxy(identifier: 'binary', externalStaticPropertyReader: () => MessageType.binary),
      'text': VmProxy(identifier: 'text', externalStaticPropertyReader: () => MessageType.text),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (MessageType instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (MessageType instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (MessageType instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (MessageType instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (MessageType instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (MessageType instance) => instance.toString),
    },
  );

  ///class RecorderAudioChannel
  static final classRecorderAudioChannel = VmClass<RecorderAudioChannel>(
    identifier: 'RecorderAudioChannel',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'INPUT': VmProxy(identifier: 'INPUT', externalStaticPropertyReader: () => RecorderAudioChannel.INPUT),
      'OUTPUT': VmProxy(identifier: 'OUTPUT', externalStaticPropertyReader: () => RecorderAudioChannel.OUTPUT),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RecorderAudioChannel instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (RecorderAudioChannel instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (RecorderAudioChannel instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RecorderAudioChannel instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RecorderAudioChannel instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RecorderAudioChannel instance) => instance.toString),
    },
  );

  ///class RTCDataChannel
  static final classRTCDataChannel = VmClass<RTCDataChannel>(
    identifier: 'RTCDataChannel',
    superclassNames: ['Object'],
    externalProxyMap: {
      'bufferedAmount': VmProxy(identifier: 'bufferedAmount', externalInstancePropertyReader: (RTCDataChannel instance) => instance.bufferedAmount),
      'bufferedAmountLowThreshold': VmProxy(identifier: 'bufferedAmountLowThreshold', externalInstancePropertyReader: (RTCDataChannel instance) => instance.bufferedAmountLowThreshold, externalInstancePropertyWriter: (RTCDataChannel instance, value) => instance.bufferedAmountLowThreshold = value),
      'close': VmProxy(identifier: 'close', externalInstancePropertyReader: (RTCDataChannel instance) => instance.close),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCDataChannel instance) => instance.hashCode),
      'id': VmProxy(identifier: 'id', externalInstancePropertyReader: (RTCDataChannel instance) => instance.id),
      'label': VmProxy(identifier: 'label', externalInstancePropertyReader: (RTCDataChannel instance) => instance.label),
      'messageStream': VmProxy(identifier: 'messageStream', externalInstancePropertyReader: (RTCDataChannel instance) => instance.messageStream, externalInstancePropertyWriter: (RTCDataChannel instance, value) => instance.messageStream = value),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCDataChannel instance) => instance.noSuchMethod),
      'onBufferedAmountChange': VmProxy(identifier: 'onBufferedAmountChange', externalInstancePropertyReader: (RTCDataChannel instance) => instance.onBufferedAmountChange, externalInstancePropertyWriter: (RTCDataChannel instance, value) => instance.onBufferedAmountChange = value),
      'onBufferedAmountLow': VmProxy(identifier: 'onBufferedAmountLow', externalInstancePropertyReader: (RTCDataChannel instance) => instance.onBufferedAmountLow, externalInstancePropertyWriter: (RTCDataChannel instance, value) => instance.onBufferedAmountLow = value),
      'onDataChannelState': VmProxy(identifier: 'onDataChannelState', externalInstancePropertyReader: (RTCDataChannel instance) => instance.onDataChannelState, externalInstancePropertyWriter: (RTCDataChannel instance, value) => instance.onDataChannelState = value),
      'onMessage': VmProxy(identifier: 'onMessage', externalInstancePropertyReader: (RTCDataChannel instance) => instance.onMessage, externalInstancePropertyWriter: (RTCDataChannel instance, value) => instance.onMessage = value),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCDataChannel instance) => instance.runtimeType),
      'send': VmProxy(identifier: 'send', externalInstancePropertyReader: (RTCDataChannel instance) => instance.send),
      'state': VmProxy(identifier: 'state', externalInstancePropertyReader: (RTCDataChannel instance) => instance.state),
      'stateChangeStream': VmProxy(identifier: 'stateChangeStream', externalInstancePropertyReader: (RTCDataChannel instance) => instance.stateChangeStream, externalInstancePropertyWriter: (RTCDataChannel instance, value) => instance.stateChangeStream = value),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCDataChannel instance) => instance.toString),
    },
  );

  ///class RTCDataChannelInit
  static final classRTCDataChannelInit = VmClass<RTCDataChannelInit>(
    identifier: 'RTCDataChannelInit',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => RTCDataChannelInit.new),
      'binaryType': VmProxy(identifier: 'binaryType', externalInstancePropertyReader: (RTCDataChannelInit instance) => instance.binaryType, externalInstancePropertyWriter: (RTCDataChannelInit instance, value) => instance.binaryType = value),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCDataChannelInit instance) => instance.hashCode),
      'id': VmProxy(identifier: 'id', externalInstancePropertyReader: (RTCDataChannelInit instance) => instance.id, externalInstancePropertyWriter: (RTCDataChannelInit instance, value) => instance.id = value),
      'maxRetransmits': VmProxy(identifier: 'maxRetransmits', externalInstancePropertyReader: (RTCDataChannelInit instance) => instance.maxRetransmits, externalInstancePropertyWriter: (RTCDataChannelInit instance, value) => instance.maxRetransmits = value),
      'maxRetransmitTime': VmProxy(identifier: 'maxRetransmitTime', externalInstancePropertyReader: (RTCDataChannelInit instance) => instance.maxRetransmitTime, externalInstancePropertyWriter: (RTCDataChannelInit instance, value) => instance.maxRetransmitTime = value),
      'negotiated': VmProxy(identifier: 'negotiated', externalInstancePropertyReader: (RTCDataChannelInit instance) => instance.negotiated, externalInstancePropertyWriter: (RTCDataChannelInit instance, value) => instance.negotiated = value),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCDataChannelInit instance) => instance.noSuchMethod),
      'ordered': VmProxy(identifier: 'ordered', externalInstancePropertyReader: (RTCDataChannelInit instance) => instance.ordered, externalInstancePropertyWriter: (RTCDataChannelInit instance, value) => instance.ordered = value),
      'protocol': VmProxy(identifier: 'protocol', externalInstancePropertyReader: (RTCDataChannelInit instance) => instance.protocol, externalInstancePropertyWriter: (RTCDataChannelInit instance, value) => instance.protocol = value),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCDataChannelInit instance) => instance.runtimeType),
      'toMap': VmProxy(identifier: 'toMap', externalInstancePropertyReader: (RTCDataChannelInit instance) => instance.toMap),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCDataChannelInit instance) => instance.toString),
    },
  );

  ///class RTCDataChannelMessage
  static final classRTCDataChannelMessage = VmClass<RTCDataChannelMessage>(
    identifier: 'RTCDataChannelMessage',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => RTCDataChannelMessage.new),
      'fromBinary': VmProxy(identifier: 'fromBinary', externalStaticPropertyReader: () => RTCDataChannelMessage.fromBinary),
      'binary': VmProxy(identifier: 'binary', externalInstancePropertyReader: (RTCDataChannelMessage instance) => instance.binary),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCDataChannelMessage instance) => instance.hashCode),
      'isBinary': VmProxy(identifier: 'isBinary', externalInstancePropertyReader: (RTCDataChannelMessage instance) => instance.isBinary),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCDataChannelMessage instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCDataChannelMessage instance) => instance.runtimeType),
      'text': VmProxy(identifier: 'text', externalInstancePropertyReader: (RTCDataChannelMessage instance) => instance.text),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCDataChannelMessage instance) => instance.toString),
      'type': VmProxy(identifier: 'type', externalInstancePropertyReader: (RTCDataChannelMessage instance) => instance.type),
    },
  );

  ///class RTCDataChannelState
  static final classRTCDataChannelState = VmClass<RTCDataChannelState>(
    identifier: 'RTCDataChannelState',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'RTCDataChannelClosed': VmProxy(identifier: 'RTCDataChannelClosed', externalStaticPropertyReader: () => RTCDataChannelState.RTCDataChannelClosed),
      'RTCDataChannelClosing': VmProxy(identifier: 'RTCDataChannelClosing', externalStaticPropertyReader: () => RTCDataChannelState.RTCDataChannelClosing),
      'RTCDataChannelConnecting': VmProxy(identifier: 'RTCDataChannelConnecting', externalStaticPropertyReader: () => RTCDataChannelState.RTCDataChannelConnecting),
      'RTCDataChannelOpen': VmProxy(identifier: 'RTCDataChannelOpen', externalStaticPropertyReader: () => RTCDataChannelState.RTCDataChannelOpen),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCDataChannelState instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (RTCDataChannelState instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (RTCDataChannelState instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCDataChannelState instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCDataChannelState instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCDataChannelState instance) => instance.toString),
    },
  );

  ///class RTCDegradationPreference
  static final classRTCDegradationPreference = VmClass<RTCDegradationPreference>(
    identifier: 'RTCDegradationPreference',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'BALANCED': VmProxy(identifier: 'BALANCED', externalStaticPropertyReader: () => RTCDegradationPreference.BALANCED),
      'DISABLED': VmProxy(identifier: 'DISABLED', externalStaticPropertyReader: () => RTCDegradationPreference.DISABLED),
      'MAINTAIN_FRAMERATE': VmProxy(identifier: 'MAINTAIN_FRAMERATE', externalStaticPropertyReader: () => RTCDegradationPreference.MAINTAIN_FRAMERATE),
      'MAINTAIN_RESOLUTION': VmProxy(identifier: 'MAINTAIN_RESOLUTION', externalStaticPropertyReader: () => RTCDegradationPreference.MAINTAIN_RESOLUTION),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCDegradationPreference instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (RTCDegradationPreference instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (RTCDegradationPreference instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCDegradationPreference instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCDegradationPreference instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCDegradationPreference instance) => instance.toString),
    },
  );

  ///class RTCDTMFSender
  static final classRTCDTMFSender = VmClass<RTCDTMFSender>(
    identifier: 'RTCDTMFSender',
    superclassNames: ['Object'],
    externalProxyMap: {
      'canInsertDtmf': VmProxy(identifier: 'canInsertDtmf', externalInstancePropertyReader: (RTCDTMFSender instance) => instance.canInsertDtmf),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCDTMFSender instance) => instance.hashCode),
      'insertDTMF': VmProxy(identifier: 'insertDTMF', externalInstancePropertyReader: (RTCDTMFSender instance) => instance.insertDTMF),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCDTMFSender instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCDTMFSender instance) => instance.runtimeType),
      'sendDtmf': VmProxy(identifier: 'sendDtmf', externalInstancePropertyReader: (RTCDTMFSender instance) => instance.sendDtmf),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCDTMFSender instance) => instance.toString),
    },
  );

  ///class RTCFactory
  static final classRTCFactory = VmClass<RTCFactory>(
    identifier: 'RTCFactory',
    superclassNames: ['Object'],
    externalProxyMap: {
      'createLocalMediaStream': VmProxy(identifier: 'createLocalMediaStream', externalInstancePropertyReader: (RTCFactory instance) => instance.createLocalMediaStream),
      'createPeerConnection': VmProxy(identifier: 'createPeerConnection', externalInstancePropertyReader: (RTCFactory instance) => instance.createPeerConnection),
      'frameCryptorFactory': VmProxy(identifier: 'frameCryptorFactory', externalInstancePropertyReader: (RTCFactory instance) => instance.frameCryptorFactory),
      'getRtpReceiverCapabilities': VmProxy(identifier: 'getRtpReceiverCapabilities', externalInstancePropertyReader: (RTCFactory instance) => instance.getRtpReceiverCapabilities),
      'getRtpSenderCapabilities': VmProxy(identifier: 'getRtpSenderCapabilities', externalInstancePropertyReader: (RTCFactory instance) => instance.getRtpSenderCapabilities),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCFactory instance) => instance.hashCode),
      'mediaRecorder': VmProxy(identifier: 'mediaRecorder', externalInstancePropertyReader: (RTCFactory instance) => instance.mediaRecorder),
      'navigator': VmProxy(identifier: 'navigator', externalInstancePropertyReader: (RTCFactory instance) => instance.navigator),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCFactory instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCFactory instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCFactory instance) => instance.toString),
      'videoRenderer': VmProxy(identifier: 'videoRenderer', externalInstancePropertyReader: (RTCFactory instance) => instance.videoRenderer),
    },
  );

  ///class RTCFactoryNative
  static final classRTCFactoryNative = VmClass<RTCFactoryNative>(
    identifier: 'RTCFactoryNative',
    superclassNames: ['Object', 'RTCFactory'],
    externalProxyMap: {
      'instance': VmProxy(identifier: 'instance', externalStaticPropertyReader: () => RTCFactoryNative.instance),
      'createLocalMediaStream': VmProxy(identifier: 'createLocalMediaStream', externalInstancePropertyReader: (RTCFactoryNative instance) => instance.createLocalMediaStream),
      'createPeerConnection': VmProxy(identifier: 'createPeerConnection', externalInstancePropertyReader: (RTCFactoryNative instance) => instance.createPeerConnection),
      'frameCryptorFactory': VmProxy(identifier: 'frameCryptorFactory', externalInstancePropertyReader: (RTCFactoryNative instance) => instance.frameCryptorFactory),
      'getRtpReceiverCapabilities': VmProxy(identifier: 'getRtpReceiverCapabilities', externalInstancePropertyReader: (RTCFactoryNative instance) => instance.getRtpReceiverCapabilities),
      'getRtpSenderCapabilities': VmProxy(identifier: 'getRtpSenderCapabilities', externalInstancePropertyReader: (RTCFactoryNative instance) => instance.getRtpSenderCapabilities),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCFactoryNative instance) => instance.hashCode),
      'mediaRecorder': VmProxy(identifier: 'mediaRecorder', externalInstancePropertyReader: (RTCFactoryNative instance) => instance.mediaRecorder),
      'navigator': VmProxy(identifier: 'navigator', externalInstancePropertyReader: (RTCFactoryNative instance) => instance.navigator),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCFactoryNative instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCFactoryNative instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCFactoryNative instance) => instance.toString),
      'videoRenderer': VmProxy(identifier: 'videoRenderer', externalInstancePropertyReader: (RTCFactoryNative instance) => instance.videoRenderer),
    },
  );

  ///class RTCHeaderExtension
  static final classRTCHeaderExtension = VmClass<RTCHeaderExtension>(
    identifier: 'RTCHeaderExtension',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => RTCHeaderExtension.new),
      'fromMap': VmProxy(identifier: 'fromMap', externalStaticPropertyReader: () => RTCHeaderExtension.fromMap),
      'encrypted': VmProxy(identifier: 'encrypted', externalInstancePropertyReader: (RTCHeaderExtension instance) => instance.encrypted, externalInstancePropertyWriter: (RTCHeaderExtension instance, value) => instance.encrypted = value),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCHeaderExtension instance) => instance.hashCode),
      'id': VmProxy(identifier: 'id', externalInstancePropertyReader: (RTCHeaderExtension instance) => instance.id, externalInstancePropertyWriter: (RTCHeaderExtension instance, value) => instance.id = value),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCHeaderExtension instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCHeaderExtension instance) => instance.runtimeType),
      'toMap': VmProxy(identifier: 'toMap', externalInstancePropertyReader: (RTCHeaderExtension instance) => instance.toMap),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCHeaderExtension instance) => instance.toString),
      'uri': VmProxy(identifier: 'uri', externalInstancePropertyReader: (RTCHeaderExtension instance) => instance.uri, externalInstancePropertyWriter: (RTCHeaderExtension instance, value) => instance.uri = value),
    },
  );

  ///class RTCIceCandidate
  static final classRTCIceCandidate = VmClass<RTCIceCandidate>(
    identifier: 'RTCIceCandidate',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => RTCIceCandidate.new),
      'candidate': VmProxy(identifier: 'candidate', externalInstancePropertyReader: (RTCIceCandidate instance) => instance.candidate),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCIceCandidate instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCIceCandidate instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCIceCandidate instance) => instance.runtimeType),
      'sdpMid': VmProxy(identifier: 'sdpMid', externalInstancePropertyReader: (RTCIceCandidate instance) => instance.sdpMid),
      'sdpMLineIndex': VmProxy(identifier: 'sdpMLineIndex', externalInstancePropertyReader: (RTCIceCandidate instance) => instance.sdpMLineIndex),
      'toMap': VmProxy(identifier: 'toMap', externalInstancePropertyReader: (RTCIceCandidate instance) => instance.toMap),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCIceCandidate instance) => instance.toString),
    },
  );

  ///class RTCIceConnectionState
  static final classRTCIceConnectionState = VmClass<RTCIceConnectionState>(
    identifier: 'RTCIceConnectionState',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'RTCIceConnectionStateChecking': VmProxy(identifier: 'RTCIceConnectionStateChecking', externalStaticPropertyReader: () => RTCIceConnectionState.RTCIceConnectionStateChecking),
      'RTCIceConnectionStateClosed': VmProxy(identifier: 'RTCIceConnectionStateClosed', externalStaticPropertyReader: () => RTCIceConnectionState.RTCIceConnectionStateClosed),
      'RTCIceConnectionStateCompleted': VmProxy(identifier: 'RTCIceConnectionStateCompleted', externalStaticPropertyReader: () => RTCIceConnectionState.RTCIceConnectionStateCompleted),
      'RTCIceConnectionStateConnected': VmProxy(identifier: 'RTCIceConnectionStateConnected', externalStaticPropertyReader: () => RTCIceConnectionState.RTCIceConnectionStateConnected),
      'RTCIceConnectionStateCount': VmProxy(identifier: 'RTCIceConnectionStateCount', externalStaticPropertyReader: () => RTCIceConnectionState.RTCIceConnectionStateCount),
      'RTCIceConnectionStateDisconnected': VmProxy(identifier: 'RTCIceConnectionStateDisconnected', externalStaticPropertyReader: () => RTCIceConnectionState.RTCIceConnectionStateDisconnected),
      'RTCIceConnectionStateFailed': VmProxy(identifier: 'RTCIceConnectionStateFailed', externalStaticPropertyReader: () => RTCIceConnectionState.RTCIceConnectionStateFailed),
      'RTCIceConnectionStateNew': VmProxy(identifier: 'RTCIceConnectionStateNew', externalStaticPropertyReader: () => RTCIceConnectionState.RTCIceConnectionStateNew),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCIceConnectionState instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (RTCIceConnectionState instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (RTCIceConnectionState instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCIceConnectionState instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCIceConnectionState instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCIceConnectionState instance) => instance.toString),
    },
  );

  ///class RTCIceGatheringState
  static final classRTCIceGatheringState = VmClass<RTCIceGatheringState>(
    identifier: 'RTCIceGatheringState',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'RTCIceGatheringStateComplete': VmProxy(identifier: 'RTCIceGatheringStateComplete', externalStaticPropertyReader: () => RTCIceGatheringState.RTCIceGatheringStateComplete),
      'RTCIceGatheringStateGathering': VmProxy(identifier: 'RTCIceGatheringStateGathering', externalStaticPropertyReader: () => RTCIceGatheringState.RTCIceGatheringStateGathering),
      'RTCIceGatheringStateNew': VmProxy(identifier: 'RTCIceGatheringStateNew', externalStaticPropertyReader: () => RTCIceGatheringState.RTCIceGatheringStateNew),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCIceGatheringState instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (RTCIceGatheringState instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (RTCIceGatheringState instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCIceGatheringState instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCIceGatheringState instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCIceGatheringState instance) => instance.toString),
    },
  );

  ///class RTCPeerConnection
  static final classRTCPeerConnection = VmClass<RTCPeerConnection>(
    identifier: 'RTCPeerConnection',
    superclassNames: ['Object'],
    externalProxyMap: {
      'addCandidate': VmProxy(identifier: 'addCandidate', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.addCandidate),
      'addStream': VmProxy(identifier: 'addStream', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.addStream),
      'addTrack': VmProxy(identifier: 'addTrack', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.addTrack),
      'addTransceiver': VmProxy(identifier: 'addTransceiver', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.addTransceiver),
      'close': VmProxy(identifier: 'close', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.close),
      'connectionState': VmProxy(identifier: 'connectionState', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.connectionState),
      'createAnswer': VmProxy(identifier: 'createAnswer', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.createAnswer),
      'createDataChannel': VmProxy(identifier: 'createDataChannel', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.createDataChannel),
      'createDtmfSender': VmProxy(identifier: 'createDtmfSender', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.createDtmfSender),
      'createOffer': VmProxy(identifier: 'createOffer', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.createOffer),
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.dispose),
      'getConfiguration': VmProxy(identifier: 'getConfiguration', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.getConfiguration),
      'getConnectionState': VmProxy(identifier: 'getConnectionState', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.getConnectionState),
      'getIceConnectionState': VmProxy(identifier: 'getIceConnectionState', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.getIceConnectionState),
      'getIceGatheringState': VmProxy(identifier: 'getIceGatheringState', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.getIceGatheringState),
      'getLocalDescription': VmProxy(identifier: 'getLocalDescription', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.getLocalDescription),
      'getLocalStreams': VmProxy(identifier: 'getLocalStreams', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.getLocalStreams),
      'getReceivers': VmProxy(identifier: 'getReceivers', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.getReceivers),
      'getRemoteDescription': VmProxy(identifier: 'getRemoteDescription', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.getRemoteDescription),
      'getRemoteStreams': VmProxy(identifier: 'getRemoteStreams', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.getRemoteStreams),
      'getSenders': VmProxy(identifier: 'getSenders', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.getSenders),
      'getSignalingState': VmProxy(identifier: 'getSignalingState', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.getSignalingState),
      'getStats': VmProxy(identifier: 'getStats', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.getStats),
      'getTransceivers': VmProxy(identifier: 'getTransceivers', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.getTransceivers),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.hashCode),
      'iceConnectionState': VmProxy(identifier: 'iceConnectionState', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.iceConnectionState),
      'iceGatheringState': VmProxy(identifier: 'iceGatheringState', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.iceGatheringState),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.noSuchMethod),
      'onAddStream': VmProxy(identifier: 'onAddStream', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.onAddStream, externalInstancePropertyWriter: (RTCPeerConnection instance, value) => instance.onAddStream = value),
      'onAddTrack': VmProxy(identifier: 'onAddTrack', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.onAddTrack, externalInstancePropertyWriter: (RTCPeerConnection instance, value) => instance.onAddTrack = value),
      'onConnectionState': VmProxy(identifier: 'onConnectionState', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.onConnectionState, externalInstancePropertyWriter: (RTCPeerConnection instance, value) => instance.onConnectionState = value),
      'onDataChannel': VmProxy(identifier: 'onDataChannel', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.onDataChannel, externalInstancePropertyWriter: (RTCPeerConnection instance, value) => instance.onDataChannel = value),
      'onIceCandidate': VmProxy(identifier: 'onIceCandidate', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.onIceCandidate, externalInstancePropertyWriter: (RTCPeerConnection instance, value) => instance.onIceCandidate = value),
      'onIceConnectionState': VmProxy(identifier: 'onIceConnectionState', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.onIceConnectionState, externalInstancePropertyWriter: (RTCPeerConnection instance, value) => instance.onIceConnectionState = value),
      'onIceGatheringState': VmProxy(identifier: 'onIceGatheringState', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.onIceGatheringState, externalInstancePropertyWriter: (RTCPeerConnection instance, value) => instance.onIceGatheringState = value),
      'onRemoveStream': VmProxy(identifier: 'onRemoveStream', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.onRemoveStream, externalInstancePropertyWriter: (RTCPeerConnection instance, value) => instance.onRemoveStream = value),
      'onRemoveTrack': VmProxy(identifier: 'onRemoveTrack', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.onRemoveTrack, externalInstancePropertyWriter: (RTCPeerConnection instance, value) => instance.onRemoveTrack = value),
      'onRenegotiationNeeded': VmProxy(identifier: 'onRenegotiationNeeded', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.onRenegotiationNeeded, externalInstancePropertyWriter: (RTCPeerConnection instance, value) => instance.onRenegotiationNeeded = value),
      'onSignalingState': VmProxy(identifier: 'onSignalingState', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.onSignalingState, externalInstancePropertyWriter: (RTCPeerConnection instance, value) => instance.onSignalingState = value),
      'onTrack': VmProxy(identifier: 'onTrack', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.onTrack, externalInstancePropertyWriter: (RTCPeerConnection instance, value) => instance.onTrack = value),
      'receivers': VmProxy(identifier: 'receivers', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.receivers),
      'removeStream': VmProxy(identifier: 'removeStream', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.removeStream),
      'removeTrack': VmProxy(identifier: 'removeTrack', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.removeTrack),
      'restartIce': VmProxy(identifier: 'restartIce', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.restartIce),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.runtimeType),
      'senders': VmProxy(identifier: 'senders', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.senders),
      'setConfiguration': VmProxy(identifier: 'setConfiguration', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.setConfiguration),
      'setLocalDescription': VmProxy(identifier: 'setLocalDescription', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.setLocalDescription),
      'setRemoteDescription': VmProxy(identifier: 'setRemoteDescription', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.setRemoteDescription),
      'signalingState': VmProxy(identifier: 'signalingState', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.signalingState),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.toString),
      'transceivers': VmProxy(identifier: 'transceivers', externalInstancePropertyReader: (RTCPeerConnection instance) => instance.transceivers),
    },
  );

  ///class RTCPeerConnectionState
  static final classRTCPeerConnectionState = VmClass<RTCPeerConnectionState>(
    identifier: 'RTCPeerConnectionState',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'RTCPeerConnectionStateClosed': VmProxy(identifier: 'RTCPeerConnectionStateClosed', externalStaticPropertyReader: () => RTCPeerConnectionState.RTCPeerConnectionStateClosed),
      'RTCPeerConnectionStateConnected': VmProxy(identifier: 'RTCPeerConnectionStateConnected', externalStaticPropertyReader: () => RTCPeerConnectionState.RTCPeerConnectionStateConnected),
      'RTCPeerConnectionStateConnecting': VmProxy(identifier: 'RTCPeerConnectionStateConnecting', externalStaticPropertyReader: () => RTCPeerConnectionState.RTCPeerConnectionStateConnecting),
      'RTCPeerConnectionStateDisconnected': VmProxy(identifier: 'RTCPeerConnectionStateDisconnected', externalStaticPropertyReader: () => RTCPeerConnectionState.RTCPeerConnectionStateDisconnected),
      'RTCPeerConnectionStateFailed': VmProxy(identifier: 'RTCPeerConnectionStateFailed', externalStaticPropertyReader: () => RTCPeerConnectionState.RTCPeerConnectionStateFailed),
      'RTCPeerConnectionStateNew': VmProxy(identifier: 'RTCPeerConnectionStateNew', externalStaticPropertyReader: () => RTCPeerConnectionState.RTCPeerConnectionStateNew),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCPeerConnectionState instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (RTCPeerConnectionState instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (RTCPeerConnectionState instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCPeerConnectionState instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCPeerConnectionState instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCPeerConnectionState instance) => instance.toString),
    },
  );

  ///class RTCRTCPParameters
  static final classRTCRTCPParameters = VmClass<RTCRTCPParameters>(
    identifier: 'RTCRTCPParameters',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => RTCRTCPParameters.new),
      'fromMap': VmProxy(identifier: 'fromMap', externalStaticPropertyReader: () => RTCRTCPParameters.fromMap),
      'cname': VmProxy(identifier: 'cname', externalInstancePropertyReader: (RTCRTCPParameters instance) => instance.cname, externalInstancePropertyWriter: (RTCRTCPParameters instance, value) => instance.cname = value),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCRTCPParameters instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCRTCPParameters instance) => instance.noSuchMethod),
      'reducedSize': VmProxy(identifier: 'reducedSize', externalInstancePropertyReader: (RTCRTCPParameters instance) => instance.reducedSize, externalInstancePropertyWriter: (RTCRTCPParameters instance, value) => instance.reducedSize = value),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCRTCPParameters instance) => instance.runtimeType),
      'toMap': VmProxy(identifier: 'toMap', externalInstancePropertyReader: (RTCRTCPParameters instance) => instance.toMap),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCRTCPParameters instance) => instance.toString),
    },
  );

  ///class RTCRtpCapabilities
  static final classRTCRtpCapabilities = VmClass<RTCRtpCapabilities>(
    identifier: 'RTCRtpCapabilities',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => RTCRtpCapabilities.new),
      'fromMap': VmProxy(identifier: 'fromMap', externalStaticPropertyReader: () => RTCRtpCapabilities.fromMap),
      'codecs': VmProxy(identifier: 'codecs', externalInstancePropertyReader: (RTCRtpCapabilities instance) => instance.codecs, externalInstancePropertyWriter: (RTCRtpCapabilities instance, value) => instance.codecs = value),
      'fecMechanisms': VmProxy(identifier: 'fecMechanisms', externalInstancePropertyReader: (RTCRtpCapabilities instance) => instance.fecMechanisms, externalInstancePropertyWriter: (RTCRtpCapabilities instance, value) => instance.fecMechanisms = value),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCRtpCapabilities instance) => instance.hashCode),
      'headerExtensions': VmProxy(identifier: 'headerExtensions', externalInstancePropertyReader: (RTCRtpCapabilities instance) => instance.headerExtensions, externalInstancePropertyWriter: (RTCRtpCapabilities instance, value) => instance.headerExtensions = value),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCRtpCapabilities instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCRtpCapabilities instance) => instance.runtimeType),
      'toMap': VmProxy(identifier: 'toMap', externalInstancePropertyReader: (RTCRtpCapabilities instance) => instance.toMap),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCRtpCapabilities instance) => instance.toString),
    },
  );

  ///class RTCRTPCodec
  static final classRTCRTPCodec = VmClass<RTCRTPCodec>(
    identifier: 'RTCRTPCodec',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => RTCRTPCodec.new),
      'fromMap': VmProxy(identifier: 'fromMap', externalStaticPropertyReader: () => RTCRTPCodec.fromMap),
      'clockRate': VmProxy(identifier: 'clockRate', externalInstancePropertyReader: (RTCRTPCodec instance) => instance.clockRate, externalInstancePropertyWriter: (RTCRTPCodec instance, value) => instance.clockRate = value),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCRTPCodec instance) => instance.hashCode),
      'kind': VmProxy(identifier: 'kind', externalInstancePropertyReader: (RTCRTPCodec instance) => instance.kind, externalInstancePropertyWriter: (RTCRTPCodec instance, value) => instance.kind = value),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (RTCRTPCodec instance) => instance.name, externalInstancePropertyWriter: (RTCRTPCodec instance, value) => instance.name = value),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCRTPCodec instance) => instance.noSuchMethod),
      'numChannels': VmProxy(identifier: 'numChannels', externalInstancePropertyReader: (RTCRTPCodec instance) => instance.numChannels, externalInstancePropertyWriter: (RTCRTPCodec instance, value) => instance.numChannels = value),
      'parameters': VmProxy(identifier: 'parameters', externalInstancePropertyReader: (RTCRTPCodec instance) => instance.parameters, externalInstancePropertyWriter: (RTCRTPCodec instance, value) => instance.parameters = value),
      'payloadType': VmProxy(identifier: 'payloadType', externalInstancePropertyReader: (RTCRTPCodec instance) => instance.payloadType, externalInstancePropertyWriter: (RTCRTPCodec instance, value) => instance.payloadType = value),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCRTPCodec instance) => instance.runtimeType),
      'toMap': VmProxy(identifier: 'toMap', externalInstancePropertyReader: (RTCRTPCodec instance) => instance.toMap),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCRTPCodec instance) => instance.toString),
    },
  );

  ///class RTCRtpCodecCapability
  static final classRTCRtpCodecCapability = VmClass<RTCRtpCodecCapability>(
    identifier: 'RTCRtpCodecCapability',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => RTCRtpCodecCapability.new),
      'fromMap': VmProxy(identifier: 'fromMap', externalStaticPropertyReader: () => RTCRtpCodecCapability.fromMap),
      'channels': VmProxy(identifier: 'channels', externalInstancePropertyReader: (RTCRtpCodecCapability instance) => instance.channels, externalInstancePropertyWriter: (RTCRtpCodecCapability instance, value) => instance.channels = value),
      'clockRate': VmProxy(identifier: 'clockRate', externalInstancePropertyReader: (RTCRtpCodecCapability instance) => instance.clockRate, externalInstancePropertyWriter: (RTCRtpCodecCapability instance, value) => instance.clockRate = value),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCRtpCodecCapability instance) => instance.hashCode),
      'mimeType': VmProxy(identifier: 'mimeType', externalInstancePropertyReader: (RTCRtpCodecCapability instance) => instance.mimeType, externalInstancePropertyWriter: (RTCRtpCodecCapability instance, value) => instance.mimeType = value),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCRtpCodecCapability instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCRtpCodecCapability instance) => instance.runtimeType),
      'sdpFmtpLine': VmProxy(identifier: 'sdpFmtpLine', externalInstancePropertyReader: (RTCRtpCodecCapability instance) => instance.sdpFmtpLine, externalInstancePropertyWriter: (RTCRtpCodecCapability instance, value) => instance.sdpFmtpLine = value),
      'toMap': VmProxy(identifier: 'toMap', externalInstancePropertyReader: (RTCRtpCodecCapability instance) => instance.toMap),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCRtpCodecCapability instance) => instance.toString),
    },
  );

  ///class RTCRtpEncoding
  static final classRTCRtpEncoding = VmClass<RTCRtpEncoding>(
    identifier: 'RTCRtpEncoding',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => RTCRtpEncoding.new),
      'fromMap': VmProxy(identifier: 'fromMap', externalStaticPropertyReader: () => RTCRtpEncoding.fromMap),
      'active': VmProxy(identifier: 'active', externalInstancePropertyReader: (RTCRtpEncoding instance) => instance.active, externalInstancePropertyWriter: (RTCRtpEncoding instance, value) => instance.active = value),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCRtpEncoding instance) => instance.hashCode),
      'maxBitrate': VmProxy(identifier: 'maxBitrate', externalInstancePropertyReader: (RTCRtpEncoding instance) => instance.maxBitrate, externalInstancePropertyWriter: (RTCRtpEncoding instance, value) => instance.maxBitrate = value),
      'maxFramerate': VmProxy(identifier: 'maxFramerate', externalInstancePropertyReader: (RTCRtpEncoding instance) => instance.maxFramerate, externalInstancePropertyWriter: (RTCRtpEncoding instance, value) => instance.maxFramerate = value),
      'minBitrate': VmProxy(identifier: 'minBitrate', externalInstancePropertyReader: (RTCRtpEncoding instance) => instance.minBitrate, externalInstancePropertyWriter: (RTCRtpEncoding instance, value) => instance.minBitrate = value),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCRtpEncoding instance) => instance.noSuchMethod),
      'numTemporalLayers': VmProxy(identifier: 'numTemporalLayers', externalInstancePropertyReader: (RTCRtpEncoding instance) => instance.numTemporalLayers, externalInstancePropertyWriter: (RTCRtpEncoding instance, value) => instance.numTemporalLayers = value),
      'rid': VmProxy(identifier: 'rid', externalInstancePropertyReader: (RTCRtpEncoding instance) => instance.rid, externalInstancePropertyWriter: (RTCRtpEncoding instance, value) => instance.rid = value),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCRtpEncoding instance) => instance.runtimeType),
      'scalabilityMode': VmProxy(identifier: 'scalabilityMode', externalInstancePropertyReader: (RTCRtpEncoding instance) => instance.scalabilityMode, externalInstancePropertyWriter: (RTCRtpEncoding instance, value) => instance.scalabilityMode = value),
      'scaleResolutionDownBy': VmProxy(identifier: 'scaleResolutionDownBy', externalInstancePropertyReader: (RTCRtpEncoding instance) => instance.scaleResolutionDownBy, externalInstancePropertyWriter: (RTCRtpEncoding instance, value) => instance.scaleResolutionDownBy = value),
      'ssrc': VmProxy(identifier: 'ssrc', externalInstancePropertyReader: (RTCRtpEncoding instance) => instance.ssrc, externalInstancePropertyWriter: (RTCRtpEncoding instance, value) => instance.ssrc = value),
      'toMap': VmProxy(identifier: 'toMap', externalInstancePropertyReader: (RTCRtpEncoding instance) => instance.toMap),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCRtpEncoding instance) => instance.toString),
    },
  );

  ///class RTCRtpHeaderExtensionCapability
  static final classRTCRtpHeaderExtensionCapability = VmClass<RTCRtpHeaderExtensionCapability>(
    identifier: 'RTCRtpHeaderExtensionCapability',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => RTCRtpHeaderExtensionCapability.new),
      'fromMap': VmProxy(identifier: 'fromMap', externalStaticPropertyReader: () => RTCRtpHeaderExtensionCapability.fromMap),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCRtpHeaderExtensionCapability instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCRtpHeaderExtensionCapability instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCRtpHeaderExtensionCapability instance) => instance.runtimeType),
      'toMap': VmProxy(identifier: 'toMap', externalInstancePropertyReader: (RTCRtpHeaderExtensionCapability instance) => instance.toMap),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCRtpHeaderExtensionCapability instance) => instance.toString),
      'uri': VmProxy(identifier: 'uri', externalInstancePropertyReader: (RTCRtpHeaderExtensionCapability instance) => instance.uri, externalInstancePropertyWriter: (RTCRtpHeaderExtensionCapability instance, value) => instance.uri = value),
    },
  );

  ///class RTCRtpMediaType
  static final classRTCRtpMediaType = VmClass<RTCRtpMediaType>(
    identifier: 'RTCRtpMediaType',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'RTCRtpMediaTypeAudio': VmProxy(identifier: 'RTCRtpMediaTypeAudio', externalStaticPropertyReader: () => RTCRtpMediaType.RTCRtpMediaTypeAudio),
      'RTCRtpMediaTypeData': VmProxy(identifier: 'RTCRtpMediaTypeData', externalStaticPropertyReader: () => RTCRtpMediaType.RTCRtpMediaTypeData),
      'RTCRtpMediaTypeVideo': VmProxy(identifier: 'RTCRtpMediaTypeVideo', externalStaticPropertyReader: () => RTCRtpMediaType.RTCRtpMediaTypeVideo),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCRtpMediaType instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (RTCRtpMediaType instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (RTCRtpMediaType instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCRtpMediaType instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCRtpMediaType instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCRtpMediaType instance) => instance.toString),
    },
  );

  ///class RTCRtpParameters
  static final classRTCRtpParameters = VmClass<RTCRtpParameters>(
    identifier: 'RTCRtpParameters',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => RTCRtpParameters.new),
      'fromMap': VmProxy(identifier: 'fromMap', externalStaticPropertyReader: () => RTCRtpParameters.fromMap),
      'codecs': VmProxy(identifier: 'codecs', externalInstancePropertyReader: (RTCRtpParameters instance) => instance.codecs, externalInstancePropertyWriter: (RTCRtpParameters instance, value) => instance.codecs = value),
      'degradationPreference': VmProxy(identifier: 'degradationPreference', externalInstancePropertyReader: (RTCRtpParameters instance) => instance.degradationPreference, externalInstancePropertyWriter: (RTCRtpParameters instance, value) => instance.degradationPreference = value),
      'encodings': VmProxy(identifier: 'encodings', externalInstancePropertyReader: (RTCRtpParameters instance) => instance.encodings, externalInstancePropertyWriter: (RTCRtpParameters instance, value) => instance.encodings = value),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCRtpParameters instance) => instance.hashCode),
      'headerExtensions': VmProxy(identifier: 'headerExtensions', externalInstancePropertyReader: (RTCRtpParameters instance) => instance.headerExtensions, externalInstancePropertyWriter: (RTCRtpParameters instance, value) => instance.headerExtensions = value),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCRtpParameters instance) => instance.noSuchMethod),
      'rtcp': VmProxy(identifier: 'rtcp', externalInstancePropertyReader: (RTCRtpParameters instance) => instance.rtcp, externalInstancePropertyWriter: (RTCRtpParameters instance, value) => instance.rtcp = value),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCRtpParameters instance) => instance.runtimeType),
      'toMap': VmProxy(identifier: 'toMap', externalInstancePropertyReader: (RTCRtpParameters instance) => instance.toMap),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCRtpParameters instance) => instance.toString),
      'transactionId': VmProxy(identifier: 'transactionId', externalInstancePropertyReader: (RTCRtpParameters instance) => instance.transactionId, externalInstancePropertyWriter: (RTCRtpParameters instance, value) => instance.transactionId = value),
    },
  );

  ///class RTCRtpReceiver
  static final classRTCRtpReceiver = VmClass<RTCRtpReceiver>(
    identifier: 'RTCRtpReceiver',
    superclassNames: ['Object'],
    externalProxyMap: {
      'getStats': VmProxy(identifier: 'getStats', externalInstancePropertyReader: (RTCRtpReceiver instance) => instance.getStats),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCRtpReceiver instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCRtpReceiver instance) => instance.noSuchMethod),
      'onFirstPacketReceived': VmProxy(identifier: 'onFirstPacketReceived', externalInstancePropertyReader: (RTCRtpReceiver instance) => instance.onFirstPacketReceived, externalInstancePropertyWriter: (RTCRtpReceiver instance, value) => instance.onFirstPacketReceived = value),
      'parameters': VmProxy(identifier: 'parameters', externalInstancePropertyReader: (RTCRtpReceiver instance) => instance.parameters),
      'receiverId': VmProxy(identifier: 'receiverId', externalInstancePropertyReader: (RTCRtpReceiver instance) => instance.receiverId),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCRtpReceiver instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCRtpReceiver instance) => instance.toString),
      'track': VmProxy(identifier: 'track', externalInstancePropertyReader: (RTCRtpReceiver instance) => instance.track),
    },
  );

  ///class RTCRtpSender
  static final classRTCRtpSender = VmClass<RTCRtpSender>(
    identifier: 'RTCRtpSender',
    superclassNames: ['Object'],
    externalProxyMap: {
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (RTCRtpSender instance) => instance.dispose),
      'dtmfSender': VmProxy(identifier: 'dtmfSender', externalInstancePropertyReader: (RTCRtpSender instance) => instance.dtmfSender),
      'getStats': VmProxy(identifier: 'getStats', externalInstancePropertyReader: (RTCRtpSender instance) => instance.getStats),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCRtpSender instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCRtpSender instance) => instance.noSuchMethod),
      'ownsTrack': VmProxy(identifier: 'ownsTrack', externalInstancePropertyReader: (RTCRtpSender instance) => instance.ownsTrack),
      'parameters': VmProxy(identifier: 'parameters', externalInstancePropertyReader: (RTCRtpSender instance) => instance.parameters),
      'replaceTrack': VmProxy(identifier: 'replaceTrack', externalInstancePropertyReader: (RTCRtpSender instance) => instance.replaceTrack),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCRtpSender instance) => instance.runtimeType),
      'senderId': VmProxy(identifier: 'senderId', externalInstancePropertyReader: (RTCRtpSender instance) => instance.senderId),
      'setParameters': VmProxy(identifier: 'setParameters', externalInstancePropertyReader: (RTCRtpSender instance) => instance.setParameters),
      'setStreams': VmProxy(identifier: 'setStreams', externalInstancePropertyReader: (RTCRtpSender instance) => instance.setStreams),
      'setTrack': VmProxy(identifier: 'setTrack', externalInstancePropertyReader: (RTCRtpSender instance) => instance.setTrack),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCRtpSender instance) => instance.toString),
      'track': VmProxy(identifier: 'track', externalInstancePropertyReader: (RTCRtpSender instance) => instance.track),
    },
  );

  ///class RTCRtpTransceiver
  static final classRTCRtpTransceiver = VmClass<RTCRtpTransceiver>(
    identifier: 'RTCRtpTransceiver',
    superclassNames: ['Object'],
    externalProxyMap: {
      'currentDirection': VmProxy(identifier: 'currentDirection', externalInstancePropertyReader: (RTCRtpTransceiver instance) => instance.currentDirection),
      'getCurrentDirection': VmProxy(identifier: 'getCurrentDirection', externalInstancePropertyReader: (RTCRtpTransceiver instance) => instance.getCurrentDirection),
      'getDirection': VmProxy(identifier: 'getDirection', externalInstancePropertyReader: (RTCRtpTransceiver instance) => instance.getDirection),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCRtpTransceiver instance) => instance.hashCode),
      'mid': VmProxy(identifier: 'mid', externalInstancePropertyReader: (RTCRtpTransceiver instance) => instance.mid),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCRtpTransceiver instance) => instance.noSuchMethod),
      'receiver': VmProxy(identifier: 'receiver', externalInstancePropertyReader: (RTCRtpTransceiver instance) => instance.receiver),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCRtpTransceiver instance) => instance.runtimeType),
      'sender': VmProxy(identifier: 'sender', externalInstancePropertyReader: (RTCRtpTransceiver instance) => instance.sender),
      'setCodecPreferences': VmProxy(identifier: 'setCodecPreferences', externalInstancePropertyReader: (RTCRtpTransceiver instance) => instance.setCodecPreferences),
      'setDirection': VmProxy(identifier: 'setDirection', externalInstancePropertyReader: (RTCRtpTransceiver instance) => instance.setDirection),
      'stop': VmProxy(identifier: 'stop', externalInstancePropertyReader: (RTCRtpTransceiver instance) => instance.stop),
      'stoped': VmProxy(identifier: 'stoped', externalInstancePropertyReader: (RTCRtpTransceiver instance) => instance.stoped),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCRtpTransceiver instance) => instance.toString),
      'transceiverId': VmProxy(identifier: 'transceiverId', externalInstancePropertyReader: (RTCRtpTransceiver instance) => instance.transceiverId),
    },
  );

  ///class RTCRtpTransceiverInit
  static final classRTCRtpTransceiverInit = VmClass<RTCRtpTransceiverInit>(
    identifier: 'RTCRtpTransceiverInit',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => RTCRtpTransceiverInit.new),
      'direction': VmProxy(identifier: 'direction', externalInstancePropertyReader: (RTCRtpTransceiverInit instance) => instance.direction, externalInstancePropertyWriter: (RTCRtpTransceiverInit instance, value) => instance.direction = value),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCRtpTransceiverInit instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCRtpTransceiverInit instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCRtpTransceiverInit instance) => instance.runtimeType),
      'sendEncodings': VmProxy(identifier: 'sendEncodings', externalInstancePropertyReader: (RTCRtpTransceiverInit instance) => instance.sendEncodings, externalInstancePropertyWriter: (RTCRtpTransceiverInit instance, value) => instance.sendEncodings = value),
      'streams': VmProxy(identifier: 'streams', externalInstancePropertyReader: (RTCRtpTransceiverInit instance) => instance.streams, externalInstancePropertyWriter: (RTCRtpTransceiverInit instance, value) => instance.streams = value),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCRtpTransceiverInit instance) => instance.toString),
    },
  );

  ///class RTCSessionDescription
  static final classRTCSessionDescription = VmClass<RTCSessionDescription>(
    identifier: 'RTCSessionDescription',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => RTCSessionDescription.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCSessionDescription instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCSessionDescription instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCSessionDescription instance) => instance.runtimeType),
      'sdp': VmProxy(identifier: 'sdp', externalInstancePropertyReader: (RTCSessionDescription instance) => instance.sdp, externalInstancePropertyWriter: (RTCSessionDescription instance, value) => instance.sdp = value),
      'toMap': VmProxy(identifier: 'toMap', externalInstancePropertyReader: (RTCSessionDescription instance) => instance.toMap),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCSessionDescription instance) => instance.toString),
      'type': VmProxy(identifier: 'type', externalInstancePropertyReader: (RTCSessionDescription instance) => instance.type, externalInstancePropertyWriter: (RTCSessionDescription instance, value) => instance.type = value),
    },
  );

  ///class RTCSignalingState
  static final classRTCSignalingState = VmClass<RTCSignalingState>(
    identifier: 'RTCSignalingState',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'RTCSignalingStateClosed': VmProxy(identifier: 'RTCSignalingStateClosed', externalStaticPropertyReader: () => RTCSignalingState.RTCSignalingStateClosed),
      'RTCSignalingStateHaveLocalOffer': VmProxy(identifier: 'RTCSignalingStateHaveLocalOffer', externalStaticPropertyReader: () => RTCSignalingState.RTCSignalingStateHaveLocalOffer),
      'RTCSignalingStateHaveLocalPrAnswer': VmProxy(identifier: 'RTCSignalingStateHaveLocalPrAnswer', externalStaticPropertyReader: () => RTCSignalingState.RTCSignalingStateHaveLocalPrAnswer),
      'RTCSignalingStateHaveRemoteOffer': VmProxy(identifier: 'RTCSignalingStateHaveRemoteOffer', externalStaticPropertyReader: () => RTCSignalingState.RTCSignalingStateHaveRemoteOffer),
      'RTCSignalingStateHaveRemotePrAnswer': VmProxy(identifier: 'RTCSignalingStateHaveRemotePrAnswer', externalStaticPropertyReader: () => RTCSignalingState.RTCSignalingStateHaveRemotePrAnswer),
      'RTCSignalingStateStable': VmProxy(identifier: 'RTCSignalingStateStable', externalStaticPropertyReader: () => RTCSignalingState.RTCSignalingStateStable),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCSignalingState instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (RTCSignalingState instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (RTCSignalingState instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCSignalingState instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCSignalingState instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCSignalingState instance) => instance.toString),
    },
  );

  ///class RTCTrackEvent
  static final classRTCTrackEvent = VmClass<RTCTrackEvent>(
    identifier: 'RTCTrackEvent',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => RTCTrackEvent.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCTrackEvent instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCTrackEvent instance) => instance.noSuchMethod),
      'receiver': VmProxy(identifier: 'receiver', externalInstancePropertyReader: (RTCTrackEvent instance) => instance.receiver),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCTrackEvent instance) => instance.runtimeType),
      'streams': VmProxy(identifier: 'streams', externalInstancePropertyReader: (RTCTrackEvent instance) => instance.streams),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCTrackEvent instance) => instance.toString),
      'track': VmProxy(identifier: 'track', externalInstancePropertyReader: (RTCTrackEvent instance) => instance.track),
      'transceiver': VmProxy(identifier: 'transceiver', externalInstancePropertyReader: (RTCTrackEvent instance) => instance.transceiver),
    },
  );

  ///class RTCVideoRenderer
  static final classRTCVideoRenderer = VmClass<RTCVideoRenderer>(
    identifier: 'RTCVideoRenderer',
    superclassNames: ['Object', 'Listenable', 'ChangeNotifier', 'ValueListenable', 'ValueNotifier', 'VideoRenderer'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => RTCVideoRenderer.new),
      'addListener': VmProxy(identifier: 'addListener', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.addListener),
      'audioOutput': VmProxy(identifier: 'audioOutput', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.audioOutput),
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.dispose),
      'errorListener': VmProxy(identifier: 'errorListener', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.errorListener),
      'eventListener': VmProxy(identifier: 'eventListener', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.eventListener),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.hashCode),
      'hasListeners': VmProxy(identifier: 'hasListeners', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.hasListeners),
      'initialize': VmProxy(identifier: 'initialize', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.initialize),
      'muted': VmProxy(identifier: 'muted', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.muted, externalInstancePropertyWriter: (RTCVideoRenderer instance, value) => instance.muted = value),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.noSuchMethod),
      'notifyListeners': VmProxy(identifier: 'notifyListeners', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.notifyListeners),
      'onFirstFrameRendered': VmProxy(identifier: 'onFirstFrameRendered', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.onFirstFrameRendered, externalInstancePropertyWriter: (RTCVideoRenderer instance, value) => instance.onFirstFrameRendered = value),
      'onResize': VmProxy(identifier: 'onResize', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.onResize, externalInstancePropertyWriter: (RTCVideoRenderer instance, value) => instance.onResize = value),
      'removeListener': VmProxy(identifier: 'removeListener', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.removeListener),
      'renderVideo': VmProxy(identifier: 'renderVideo', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.renderVideo),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.runtimeType),
      'setSrcObject': VmProxy(identifier: 'setSrcObject', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.setSrcObject),
      'srcObject': VmProxy(identifier: 'srcObject', externalInstancePropertyWriter: (RTCVideoRenderer instance, value) => instance.srcObject = value, externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.srcObject),
      'textureId': VmProxy(identifier: 'textureId', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.textureId),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.toString),
      'value': VmProxy(identifier: 'value', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.value, externalInstancePropertyWriter: (RTCVideoRenderer instance, value) => instance.value = value),
      'videoHeight': VmProxy(identifier: 'videoHeight', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.videoHeight),
      'videoWidth': VmProxy(identifier: 'videoWidth', externalInstancePropertyReader: (RTCVideoRenderer instance) => instance.videoWidth),
    },
  );

  ///class RTCVideoValue
  static final classRTCVideoValue = VmClass<RTCVideoValue>(
    identifier: 'RTCVideoValue',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => RTCVideoValue.new),
      'empty': VmProxy(identifier: 'empty', externalStaticPropertyReader: () => RTCVideoValue.empty),
      'aspectRatio': VmProxy(identifier: 'aspectRatio', externalInstancePropertyReader: (RTCVideoValue instance) => instance.aspectRatio),
      'copyWith': VmProxy(identifier: 'copyWith', externalInstancePropertyReader: (RTCVideoValue instance) => instance.copyWith),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCVideoValue instance) => instance.hashCode),
      'height': VmProxy(identifier: 'height', externalInstancePropertyReader: (RTCVideoValue instance) => instance.height),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCVideoValue instance) => instance.noSuchMethod),
      'renderVideo': VmProxy(identifier: 'renderVideo', externalInstancePropertyReader: (RTCVideoValue instance) => instance.renderVideo),
      'rotation': VmProxy(identifier: 'rotation', externalInstancePropertyReader: (RTCVideoValue instance) => instance.rotation),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCVideoValue instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCVideoValue instance) => instance.toString),
      'width': VmProxy(identifier: 'width', externalInstancePropertyReader: (RTCVideoValue instance) => instance.width),
    },
  );

  ///class RTCVideoView
  static final classRTCVideoView = VmClass<RTCVideoView>(
    identifier: 'RTCVideoView',
    superclassNames: ['Object', 'Diagnosticable', 'DiagnosticableTree', 'Widget', 'StatelessWidget'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => RTCVideoView.new, externalStaticFunctionCaller: (a0, {key, objectFit = RTCVideoViewObjectFit.RTCVideoViewObjectFitContain, mirror = false, filterQuality = FilterQuality.low, placeholderBuilder}) => RTCVideoView.new(a0, key: key, objectFit: objectFit, mirror: mirror, filterQuality: filterQuality, placeholderBuilder: placeholderBuilder == null ? null : (b0) => placeholderBuilder(b0))),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (RTCVideoView instance) => instance.build),
      'createElement': VmProxy(identifier: 'createElement', externalInstancePropertyReader: (RTCVideoView instance) => instance.createElement),
      'debugDescribeChildren': VmProxy(identifier: 'debugDescribeChildren', externalInstancePropertyReader: (RTCVideoView instance) => instance.debugDescribeChildren),
      'debugFillProperties': VmProxy(identifier: 'debugFillProperties', externalInstancePropertyReader: (RTCVideoView instance) => instance.debugFillProperties),
      'filterQuality': VmProxy(identifier: 'filterQuality', externalInstancePropertyReader: (RTCVideoView instance) => instance.filterQuality),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCVideoView instance) => instance.hashCode),
      'key': VmProxy(identifier: 'key', externalInstancePropertyReader: (RTCVideoView instance) => instance.key),
      'mirror': VmProxy(identifier: 'mirror', externalInstancePropertyReader: (RTCVideoView instance) => instance.mirror),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCVideoView instance) => instance.noSuchMethod),
      'objectFit': VmProxy(identifier: 'objectFit', externalInstancePropertyReader: (RTCVideoView instance) => instance.objectFit),
      'placeholderBuilder': VmProxy(identifier: 'placeholderBuilder', externalInstancePropertyReader: (RTCVideoView instance) => instance.placeholderBuilder),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCVideoView instance) => instance.runtimeType),
      'toDiagnosticsNode': VmProxy(identifier: 'toDiagnosticsNode', externalInstancePropertyReader: (RTCVideoView instance) => instance.toDiagnosticsNode),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCVideoView instance) => instance.toString),
      'toStringDeep': VmProxy(identifier: 'toStringDeep', externalInstancePropertyReader: (RTCVideoView instance) => instance.toStringDeep),
      'toStringShallow': VmProxy(identifier: 'toStringShallow', externalInstancePropertyReader: (RTCVideoView instance) => instance.toStringShallow),
      'toStringShort': VmProxy(identifier: 'toStringShort', externalInstancePropertyReader: (RTCVideoView instance) => instance.toStringShort),
      'videoRenderer': VmProxy(identifier: 'videoRenderer', externalInstancePropertyReader: (RTCVideoView instance) => instance.videoRenderer),
    },
  );

  ///class RTCVideoViewObjectFit
  static final classRTCVideoViewObjectFit = VmClass<RTCVideoViewObjectFit>(
    identifier: 'RTCVideoViewObjectFit',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'RTCVideoViewObjectFitContain': VmProxy(identifier: 'RTCVideoViewObjectFitContain', externalStaticPropertyReader: () => RTCVideoViewObjectFit.RTCVideoViewObjectFitContain),
      'RTCVideoViewObjectFitCover': VmProxy(identifier: 'RTCVideoViewObjectFitCover', externalStaticPropertyReader: () => RTCVideoViewObjectFit.RTCVideoViewObjectFitCover),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (RTCVideoViewObjectFit instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (RTCVideoViewObjectFit instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (RTCVideoViewObjectFit instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (RTCVideoViewObjectFit instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (RTCVideoViewObjectFit instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (RTCVideoViewObjectFit instance) => instance.toString),
    },
  );

  ///class SourceType
  static final classSourceType = VmClass<SourceType>(
    identifier: 'SourceType',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'Screen': VmProxy(identifier: 'Screen', externalStaticPropertyReader: () => SourceType.Screen),
      'Window': VmProxy(identifier: 'Window', externalStaticPropertyReader: () => SourceType.Window),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (SourceType instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (SourceType instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (SourceType instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (SourceType instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (SourceType instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (SourceType instance) => instance.toString),
    },
  );

  ///class StatsReport
  static final classStatsReport = VmClass<StatsReport>(
    identifier: 'StatsReport',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => StatsReport.new),
      'fromMap': VmProxy(identifier: 'fromMap', externalStaticPropertyReader: () => StatsReport.fromMap),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (StatsReport instance) => instance.hashCode),
      'id': VmProxy(identifier: 'id', externalInstancePropertyReader: (StatsReport instance) => instance.id),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (StatsReport instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (StatsReport instance) => instance.runtimeType),
      'timestamp': VmProxy(identifier: 'timestamp', externalInstancePropertyReader: (StatsReport instance) => instance.timestamp),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (StatsReport instance) => instance.toString),
      'type': VmProxy(identifier: 'type', externalInstancePropertyReader: (StatsReport instance) => instance.type),
      'values': VmProxy(identifier: 'values', externalInstancePropertyReader: (StatsReport instance) => instance.values),
    },
  );

  ///class ThumbnailSize
  static final classThumbnailSize = VmClass<ThumbnailSize>(
    identifier: 'ThumbnailSize',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => ThumbnailSize.new),
      'fromMap': VmProxy(identifier: 'fromMap', externalStaticPropertyReader: () => ThumbnailSize.fromMap),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ThumbnailSize instance) => instance.hashCode),
      'height': VmProxy(identifier: 'height', externalInstancePropertyReader: (ThumbnailSize instance) => instance.height, externalInstancePropertyWriter: (ThumbnailSize instance, value) => instance.height = value),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ThumbnailSize instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ThumbnailSize instance) => instance.runtimeType),
      'toMap': VmProxy(identifier: 'toMap', externalInstancePropertyReader: (ThumbnailSize instance) => instance.toMap),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ThumbnailSize instance) => instance.toString),
      'width': VmProxy(identifier: 'width', externalInstancePropertyReader: (ThumbnailSize instance) => instance.width, externalInstancePropertyWriter: (ThumbnailSize instance, value) => instance.width = value),
    },
  );

  ///class TransceiverDirection
  static final classTransceiverDirection = VmClass<TransceiverDirection>(
    identifier: 'TransceiverDirection',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'Inactive': VmProxy(identifier: 'Inactive', externalStaticPropertyReader: () => TransceiverDirection.Inactive),
      'RecvOnly': VmProxy(identifier: 'RecvOnly', externalStaticPropertyReader: () => TransceiverDirection.RecvOnly),
      'SendOnly': VmProxy(identifier: 'SendOnly', externalStaticPropertyReader: () => TransceiverDirection.SendOnly),
      'SendRecv': VmProxy(identifier: 'SendRecv', externalStaticPropertyReader: () => TransceiverDirection.SendRecv),
      'Stopped': VmProxy(identifier: 'Stopped', externalStaticPropertyReader: () => TransceiverDirection.Stopped),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (TransceiverDirection instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (TransceiverDirection instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (TransceiverDirection instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (TransceiverDirection instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (TransceiverDirection instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (TransceiverDirection instance) => instance.toString),
    },
  );

  ///class VideoRenderer
  static final classVideoRenderer = VmClass<VideoRenderer>(
    identifier: 'VideoRenderer',
    superclassNames: ['Object'],
    externalProxyMap: {
      'audioOutput': VmProxy(identifier: 'audioOutput', externalInstancePropertyReader: (VideoRenderer instance) => instance.audioOutput),
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (VideoRenderer instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (VideoRenderer instance) => instance.hashCode),
      'initialize': VmProxy(identifier: 'initialize', externalInstancePropertyReader: (VideoRenderer instance) => instance.initialize),
      'muted': VmProxy(identifier: 'muted', externalInstancePropertyReader: (VideoRenderer instance) => instance.muted, externalInstancePropertyWriter: (VideoRenderer instance, value) => instance.muted = value),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (VideoRenderer instance) => instance.noSuchMethod),
      'onFirstFrameRendered': VmProxy(identifier: 'onFirstFrameRendered', externalInstancePropertyReader: (VideoRenderer instance) => instance.onFirstFrameRendered, externalInstancePropertyWriter: (VideoRenderer instance, value) => instance.onFirstFrameRendered = value),
      'onResize': VmProxy(identifier: 'onResize', externalInstancePropertyReader: (VideoRenderer instance) => instance.onResize, externalInstancePropertyWriter: (VideoRenderer instance, value) => instance.onResize = value),
      'renderVideo': VmProxy(identifier: 'renderVideo', externalInstancePropertyReader: (VideoRenderer instance) => instance.renderVideo),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (VideoRenderer instance) => instance.runtimeType),
      'srcObject': VmProxy(identifier: 'srcObject', externalInstancePropertyReader: (VideoRenderer instance) => instance.srcObject, externalInstancePropertyWriter: (VideoRenderer instance, value) => instance.srcObject = value),
      'textureId': VmProxy(identifier: 'textureId', externalInstancePropertyReader: (VideoRenderer instance) => instance.textureId),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (VideoRenderer instance) => instance.toString),
      'videoHeight': VmProxy(identifier: 'videoHeight', externalInstancePropertyReader: (VideoRenderer instance) => instance.videoHeight),
      'videoWidth': VmProxy(identifier: 'videoWidth', externalInstancePropertyReader: (VideoRenderer instance) => instance.videoWidth),
    },
  );

  ///class WebRTC
  static final classWebRTC = VmClass<WebRTC>(
    identifier: 'WebRTC',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => WebRTC.new),
      'initialize': VmProxy(identifier: 'initialize', externalStaticPropertyReader: () => WebRTC.initialize),
      'initialized': VmProxy(identifier: 'initialized', externalStaticPropertyReader: () => WebRTC.initialized, externalStaticPropertyWriter: (value) => WebRTC.initialized = value),
      'invokeMethod': VmProxy(identifier: 'invokeMethod', externalStaticPropertyReader: () => WebRTC.invokeMethod),
      'platformIsAndroid': VmProxy(identifier: 'platformIsAndroid', externalStaticPropertyReader: () => WebRTC.platformIsAndroid),
      'platformIsDesktop': VmProxy(identifier: 'platformIsDesktop', externalStaticPropertyReader: () => WebRTC.platformIsDesktop),
      'platformIsIOS': VmProxy(identifier: 'platformIsIOS', externalStaticPropertyReader: () => WebRTC.platformIsIOS),
      'platformIsLinux': VmProxy(identifier: 'platformIsLinux', externalStaticPropertyReader: () => WebRTC.platformIsLinux),
      'platformIsMacOS': VmProxy(identifier: 'platformIsMacOS', externalStaticPropertyReader: () => WebRTC.platformIsMacOS),
      'platformIsMobile': VmProxy(identifier: 'platformIsMobile', externalStaticPropertyReader: () => WebRTC.platformIsMobile),
      'platformIsWeb': VmProxy(identifier: 'platformIsWeb', externalStaticPropertyReader: () => WebRTC.platformIsWeb),
      'platformIsWindows': VmProxy(identifier: 'platformIsWindows', externalStaticPropertyReader: () => WebRTC.platformIsWindows),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (WebRTC instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (WebRTC instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (WebRTC instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (WebRTC instance) => instance.toString),
    },
  );

  ///all class list
  static final libraryClassList = <VmClass>[
    classAdapterType,
    classAlgorithm,
    classAndroidAudioAttributesContentType,
    classAndroidAudioAttributesUsageType,
    classAndroidAudioConfiguration,
    classAndroidAudioFocusMode,
    classAndroidAudioStreamType,
    classAndroidNativeAudioManagement,
    classAudioOutputOptions,
    classDesktopCapturer,
    classDesktopCapturerSource,
    classFrameCryptor,
    classFrameCryptorFactory,
    classFrameCryptorState,
    classHelper,
    classKeyProvider,
    classKeyProviderOptions,
    classMediaDeviceInfo,
    classMediaDevices,
    classMediaRecorder,
    classMediaStream,
    classMediaStreamConstraints,
    classMediaStreamTrack,
    classMediaTrackSupportedConstraints,
    classMessageType,
    classRecorderAudioChannel,
    classRTCDataChannel,
    classRTCDataChannelInit,
    classRTCDataChannelMessage,
    classRTCDataChannelState,
    classRTCDegradationPreference,
    classRTCDTMFSender,
    classRTCFactory,
    classRTCFactoryNative,
    classRTCHeaderExtension,
    classRTCIceCandidate,
    classRTCIceConnectionState,
    classRTCIceGatheringState,
    classRTCPeerConnection,
    classRTCPeerConnectionState,
    classRTCRTCPParameters,
    classRTCRtpCapabilities,
    classRTCRTPCodec,
    classRTCRtpCodecCapability,
    classRTCRtpEncoding,
    classRTCRtpHeaderExtensionCapability,
    classRTCRtpMediaType,
    classRTCRtpParameters,
    classRTCRtpReceiver,
    classRTCRtpSender,
    classRTCRtpTransceiver,
    classRTCRtpTransceiverInit,
    classRTCSessionDescription,
    classRTCSignalingState,
    classRTCTrackEvent,
    classRTCVideoRenderer,
    classRTCVideoValue,
    classRTCVideoView,
    classRTCVideoViewObjectFit,
    classSourceType,
    classStatsReport,
    classThumbnailSize,
    classTransceiverDirection,
    classVideoRenderer,
    classWebRTC,
  ];

  ///all proxy list
  static final libraryProxyList = <VmProxy<void>>[
    VmProxy(identifier: 'createLocalMediaStream', externalStaticPropertyReader: () => createLocalMediaStream),
    VmProxy(identifier: 'createPeerConnection', externalStaticPropertyReader: () => createPeerConnection),
    VmProxy(identifier: 'degradationPreferenceforString', externalStaticPropertyReader: () => degradationPreferenceforString),
    VmProxy(identifier: 'desktopCapturer', externalStaticPropertyReader: () => desktopCapturer),
    VmProxy(identifier: 'desktopSourceTypeToString', externalStaticPropertyReader: () => desktopSourceTypeToString),
    VmProxy(identifier: 'frameCryptorFactory', externalStaticPropertyReader: () => frameCryptorFactory),
    VmProxy(identifier: 'getRtpReceiverCapabilities', externalStaticPropertyReader: () => getRtpReceiverCapabilities),
    VmProxy(identifier: 'getRtpSenderCapabilities', externalStaticPropertyReader: () => getRtpSenderCapabilities),
    VmProxy(identifier: 'iceConnectionStateForString', externalStaticPropertyReader: () => iceConnectionStateForString),
    VmProxy(identifier: 'iceGatheringStateforString', externalStaticPropertyReader: () => iceGatheringStateforString),
    VmProxy(identifier: 'listToRtpEncodings', externalStaticPropertyReader: () => listToRtpEncodings),
    VmProxy(identifier: 'mediaDevices', externalStaticPropertyReader: () => mediaDevices),
    VmProxy(identifier: 'mediaRecorder', externalStaticPropertyReader: () => mediaRecorder),
    VmProxy(identifier: 'navigator', externalStaticPropertyReader: () => navigator),
    VmProxy(identifier: 'peerConnectionStateForString', externalStaticPropertyReader: () => peerConnectionStateForString),
    VmProxy(identifier: 'rtcDataChannelStateForString', externalStaticPropertyReader: () => rtcDataChannelStateForString),
    VmProxy(identifier: 'signalingStateForString', externalStaticPropertyReader: () => signalingStateForString),
    VmProxy(identifier: 'tringToDesktopSourceType', externalStaticPropertyReader: () => tringToDesktopSourceType),
    VmProxy(identifier: 'typeRTCDegradationPreferenceString', externalStaticPropertyReader: () => typeRTCDegradationPreferenceString),
    VmProxy(identifier: 'typeRTCRtpMediaTypetoString', externalStaticPropertyReader: () => typeRTCRtpMediaTypetoString),
    VmProxy(identifier: 'typeRtpTransceiverDirectionToString', externalStaticPropertyReader: () => typeRtpTransceiverDirectionToString),
    VmProxy(identifier: 'typeStringToRTCRtpMediaType', externalStaticPropertyReader: () => typeStringToRTCRtpMediaType),
    VmProxy(identifier: 'typeStringToRtpTransceiverDirection', externalStaticPropertyReader: () => typeStringToRtpTransceiverDirection),
  ];
}
