// ignore_for_file: avoid_function_literals_in_foreach_calls
// ignore_for_file: deprecated_member_use
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: unnecessary_constructor_name

import 'package:shelf_easy/shelf_easy.dart';
import 'package:audioplayers/audioplayers.dart';

///
///audioplayers库桥接类
///
class AudioplayersLibrary {
  ///class AndroidAudioFocus
  static final classAndroidAudioFocus = VmClass<AndroidAudioFocus>(
    identifier: 'AndroidAudioFocus',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'gain': VmProxy(identifier: 'gain', externalStaticPropertyReader: () => AndroidAudioFocus.gain),
      'gainTransient': VmProxy(identifier: 'gainTransient', externalStaticPropertyReader: () => AndroidAudioFocus.gainTransient),
      'gainTransientExclusive': VmProxy(identifier: 'gainTransientExclusive', externalStaticPropertyReader: () => AndroidAudioFocus.gainTransientExclusive),
      'gainTransientMayDuck': VmProxy(identifier: 'gainTransientMayDuck', externalStaticPropertyReader: () => AndroidAudioFocus.gainTransientMayDuck),
      'none': VmProxy(identifier: 'none', externalStaticPropertyReader: () => AndroidAudioFocus.none),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AndroidAudioFocus instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (AndroidAudioFocus instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (AndroidAudioFocus instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AndroidAudioFocus instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AndroidAudioFocus instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AndroidAudioFocus instance) => instance.toString),
    },
  );

  ///class AndroidAudioMode
  static final classAndroidAudioMode = VmClass<AndroidAudioMode>(
    identifier: 'AndroidAudioMode',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'callScreening': VmProxy(identifier: 'callScreening', externalStaticPropertyReader: () => AndroidAudioMode.callScreening),
      'inCall': VmProxy(identifier: 'inCall', externalStaticPropertyReader: () => AndroidAudioMode.inCall),
      'inCommunication': VmProxy(identifier: 'inCommunication', externalStaticPropertyReader: () => AndroidAudioMode.inCommunication),
      'normal': VmProxy(identifier: 'normal', externalStaticPropertyReader: () => AndroidAudioMode.normal),
      'ringtone': VmProxy(identifier: 'ringtone', externalStaticPropertyReader: () => AndroidAudioMode.ringtone),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AndroidAudioMode instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (AndroidAudioMode instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (AndroidAudioMode instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AndroidAudioMode instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AndroidAudioMode instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AndroidAudioMode instance) => instance.toString),
    },
  );

  ///class AndroidContentType
  static final classAndroidContentType = VmClass<AndroidContentType>(
    identifier: 'AndroidContentType',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'movie': VmProxy(identifier: 'movie', externalStaticPropertyReader: () => AndroidContentType.movie),
      'music': VmProxy(identifier: 'music', externalStaticPropertyReader: () => AndroidContentType.music),
      'sonification': VmProxy(identifier: 'sonification', externalStaticPropertyReader: () => AndroidContentType.sonification),
      'speech': VmProxy(identifier: 'speech', externalStaticPropertyReader: () => AndroidContentType.speech),
      'unknown': VmProxy(identifier: 'unknown', externalStaticPropertyReader: () => AndroidContentType.unknown),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AndroidContentType instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (AndroidContentType instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (AndroidContentType instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AndroidContentType instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AndroidContentType instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AndroidContentType instance) => instance.toString),
    },
  );

  ///class AndroidUsageType
  static final classAndroidUsageType = VmClass<AndroidUsageType>(
    identifier: 'AndroidUsageType',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'alarm': VmProxy(identifier: 'alarm', externalStaticPropertyReader: () => AndroidUsageType.alarm),
      'assistanceAccessibility': VmProxy(identifier: 'assistanceAccessibility', externalStaticPropertyReader: () => AndroidUsageType.assistanceAccessibility),
      'assistanceNavigationGuidance': VmProxy(identifier: 'assistanceNavigationGuidance', externalStaticPropertyReader: () => AndroidUsageType.assistanceNavigationGuidance),
      'assistanceSonification': VmProxy(identifier: 'assistanceSonification', externalStaticPropertyReader: () => AndroidUsageType.assistanceSonification),
      'assistant': VmProxy(identifier: 'assistant', externalStaticPropertyReader: () => AndroidUsageType.assistant),
      'game': VmProxy(identifier: 'game', externalStaticPropertyReader: () => AndroidUsageType.game),
      'media': VmProxy(identifier: 'media', externalStaticPropertyReader: () => AndroidUsageType.media),
      'notification': VmProxy(identifier: 'notification', externalStaticPropertyReader: () => AndroidUsageType.notification),
      'notificationCommunicationDelayed': VmProxy(identifier: 'notificationCommunicationDelayed', externalStaticPropertyReader: () => AndroidUsageType.notificationCommunicationDelayed),
      'notificationCommunicationInstant': VmProxy(identifier: 'notificationCommunicationInstant', externalStaticPropertyReader: () => AndroidUsageType.notificationCommunicationInstant),
      'notificationCommunicationRequest': VmProxy(identifier: 'notificationCommunicationRequest', externalStaticPropertyReader: () => AndroidUsageType.notificationCommunicationRequest),
      'notificationEvent': VmProxy(identifier: 'notificationEvent', externalStaticPropertyReader: () => AndroidUsageType.notificationEvent),
      'notificationRingtone': VmProxy(identifier: 'notificationRingtone', externalStaticPropertyReader: () => AndroidUsageType.notificationRingtone),
      'unknown': VmProxy(identifier: 'unknown', externalStaticPropertyReader: () => AndroidUsageType.unknown),
      'virtualSource': VmProxy(identifier: 'virtualSource', externalStaticPropertyReader: () => AndroidUsageType.virtualSource),
      'voiceCommunication': VmProxy(identifier: 'voiceCommunication', externalStaticPropertyReader: () => AndroidUsageType.voiceCommunication),
      'voiceCommunicationSignalling': VmProxy(identifier: 'voiceCommunicationSignalling', externalStaticPropertyReader: () => AndroidUsageType.voiceCommunicationSignalling),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AndroidUsageType instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (AndroidUsageType instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (AndroidUsageType instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AndroidUsageType instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AndroidUsageType instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AndroidUsageType instance) => instance.toString),
    },
  );

  ///class AssetSource
  static final classAssetSource = VmClass<AssetSource>(
    identifier: 'AssetSource',
    superclassNames: ['Object', 'Source'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => AssetSource.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AssetSource instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AssetSource instance) => instance.noSuchMethod),
      'path': VmProxy(identifier: 'path', externalInstancePropertyReader: (AssetSource instance) => instance.path),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AssetSource instance) => instance.runtimeType),
      'setOnPlayer': VmProxy(identifier: 'setOnPlayer', externalInstancePropertyReader: (AssetSource instance) => instance.setOnPlayer),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AssetSource instance) => instance.toString),
    },
  );

  ///class AudioCache
  static final classAudioCache = VmClass<AudioCache>(
    identifier: 'AudioCache',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => AudioCache.new),
      'fileSystem': VmProxy(identifier: 'fileSystem', externalStaticPropertyReader: () => AudioCache.fileSystem, externalStaticPropertyWriter: (value) => AudioCache.fileSystem = value),
      'instance': VmProxy(identifier: 'instance', externalStaticPropertyReader: () => AudioCache.instance, externalStaticPropertyWriter: (value) => AudioCache.instance = value),
      'clear': VmProxy(identifier: 'clear', externalInstancePropertyReader: (AudioCache instance) => instance.clear),
      'clearAll': VmProxy(identifier: 'clearAll', externalInstancePropertyReader: (AudioCache instance) => instance.clearAll),
      'fetchToMemory': VmProxy(identifier: 'fetchToMemory', externalInstancePropertyReader: (AudioCache instance) => instance.fetchToMemory),
      'getTempDir': VmProxy(identifier: 'getTempDir', externalInstancePropertyReader: (AudioCache instance) => instance.getTempDir),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AudioCache instance) => instance.hashCode),
      'load': VmProxy(identifier: 'load', externalInstancePropertyReader: (AudioCache instance) => instance.load),
      'loadAll': VmProxy(identifier: 'loadAll', externalInstancePropertyReader: (AudioCache instance) => instance.loadAll),
      'loadAsBytes': VmProxy(identifier: 'loadAsBytes', externalInstancePropertyReader: (AudioCache instance) => instance.loadAsBytes),
      'loadAsFile': VmProxy(identifier: 'loadAsFile', externalInstancePropertyReader: (AudioCache instance) => instance.loadAsFile),
      'loadAsset': VmProxy(identifier: 'loadAsset', externalInstancePropertyReader: (AudioCache instance) => instance.loadAsset),
      'loadedFiles': VmProxy(identifier: 'loadedFiles', externalInstancePropertyReader: (AudioCache instance) => instance.loadedFiles),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AudioCache instance) => instance.noSuchMethod),
      'prefix': VmProxy(identifier: 'prefix', externalInstancePropertyReader: (AudioCache instance) => instance.prefix, externalInstancePropertyWriter: (AudioCache instance, value) => instance.prefix = value),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AudioCache instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AudioCache instance) => instance.toString),
    },
  );

  ///class AudioContext
  static final classAudioContext = VmClass<AudioContext>(
    identifier: 'AudioContext',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => AudioContext.new),
      'android': VmProxy(identifier: 'android', externalInstancePropertyReader: (AudioContext instance) => instance.android),
      'copy': VmProxy(identifier: 'copy', externalInstancePropertyReader: (AudioContext instance) => instance.copy),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AudioContext instance) => instance.hashCode),
      'iOS': VmProxy(identifier: 'iOS', externalInstancePropertyReader: (AudioContext instance) => instance.iOS),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AudioContext instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AudioContext instance) => instance.runtimeType),
      'toJson': VmProxy(identifier: 'toJson', externalInstancePropertyReader: (AudioContext instance) => instance.toJson),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AudioContext instance) => instance.toString),
    },
  );

  ///class AudioContextAndroid
  static final classAudioContextAndroid = VmClass<AudioContextAndroid>(
    identifier: 'AudioContextAndroid',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => AudioContextAndroid.new),
      'audioFocus': VmProxy(identifier: 'audioFocus', externalInstancePropertyReader: (AudioContextAndroid instance) => instance.audioFocus),
      'audioMode': VmProxy(identifier: 'audioMode', externalInstancePropertyReader: (AudioContextAndroid instance) => instance.audioMode),
      'contentType': VmProxy(identifier: 'contentType', externalInstancePropertyReader: (AudioContextAndroid instance) => instance.contentType),
      'copy': VmProxy(identifier: 'copy', externalInstancePropertyReader: (AudioContextAndroid instance) => instance.copy),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AudioContextAndroid instance) => instance.hashCode),
      'isSpeakerphoneOn': VmProxy(identifier: 'isSpeakerphoneOn', externalInstancePropertyReader: (AudioContextAndroid instance) => instance.isSpeakerphoneOn),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AudioContextAndroid instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AudioContextAndroid instance) => instance.runtimeType),
      'stayAwake': VmProxy(identifier: 'stayAwake', externalInstancePropertyReader: (AudioContextAndroid instance) => instance.stayAwake),
      'toJson': VmProxy(identifier: 'toJson', externalInstancePropertyReader: (AudioContextAndroid instance) => instance.toJson),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AudioContextAndroid instance) => instance.toString),
      'usageType': VmProxy(identifier: 'usageType', externalInstancePropertyReader: (AudioContextAndroid instance) => instance.usageType),
    },
  );

  ///class AudioContextConfig
  static final classAudioContextConfig = VmClass<AudioContextConfig>(
    identifier: 'AudioContextConfig',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => AudioContextConfig.new),
      'build': VmProxy(identifier: 'build', externalInstancePropertyReader: (AudioContextConfig instance) => instance.build),
      'buildAndroid': VmProxy(identifier: 'buildAndroid', externalInstancePropertyReader: (AudioContextConfig instance) => instance.buildAndroid),
      'buildIOS': VmProxy(identifier: 'buildIOS', externalInstancePropertyReader: (AudioContextConfig instance) => instance.buildIOS),
      'copy': VmProxy(identifier: 'copy', externalInstancePropertyReader: (AudioContextConfig instance) => instance.copy),
      'duckAudio': VmProxy(identifier: 'duckAudio', externalInstancePropertyReader: (AudioContextConfig instance) => instance.duckAudio),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AudioContextConfig instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AudioContextConfig instance) => instance.noSuchMethod),
      'respectSilence': VmProxy(identifier: 'respectSilence', externalInstancePropertyReader: (AudioContextConfig instance) => instance.respectSilence),
      'route': VmProxy(identifier: 'route', externalInstancePropertyReader: (AudioContextConfig instance) => instance.route),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AudioContextConfig instance) => instance.runtimeType),
      'stayAwake': VmProxy(identifier: 'stayAwake', externalInstancePropertyReader: (AudioContextConfig instance) => instance.stayAwake),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AudioContextConfig instance) => instance.toString),
      'validateIOS': VmProxy(identifier: 'validateIOS', externalInstancePropertyReader: (AudioContextConfig instance) => instance.validateIOS),
    },
  );

  ///class AudioContextConfigRoute
  static final classAudioContextConfigRoute = VmClass<AudioContextConfigRoute>(
    identifier: 'AudioContextConfigRoute',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'earpiece': VmProxy(identifier: 'earpiece', externalStaticPropertyReader: () => AudioContextConfigRoute.earpiece),
      'speaker': VmProxy(identifier: 'speaker', externalStaticPropertyReader: () => AudioContextConfigRoute.speaker),
      'system': VmProxy(identifier: 'system', externalStaticPropertyReader: () => AudioContextConfigRoute.system),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AudioContextConfigRoute instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (AudioContextConfigRoute instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (AudioContextConfigRoute instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AudioContextConfigRoute instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AudioContextConfigRoute instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AudioContextConfigRoute instance) => instance.toString),
    },
  );

  ///class AudioContextIOS
  static final classAudioContextIOS = VmClass<AudioContextIOS>(
    identifier: 'AudioContextIOS',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => AudioContextIOS.new),
      'category': VmProxy(identifier: 'category', externalInstancePropertyReader: (AudioContextIOS instance) => instance.category),
      'copy': VmProxy(identifier: 'copy', externalInstancePropertyReader: (AudioContextIOS instance) => instance.copy),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AudioContextIOS instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AudioContextIOS instance) => instance.noSuchMethod),
      'options': VmProxy(identifier: 'options', externalInstancePropertyReader: (AudioContextIOS instance) => instance.options),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AudioContextIOS instance) => instance.runtimeType),
      'toJson': VmProxy(identifier: 'toJson', externalInstancePropertyReader: (AudioContextIOS instance) => instance.toJson),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AudioContextIOS instance) => instance.toString),
    },
  );

  ///class AudioEvent
  static final classAudioEvent = VmClass<AudioEvent>(
    identifier: 'AudioEvent',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => AudioEvent.new),
      'duration': VmProxy(identifier: 'duration', externalInstancePropertyReader: (AudioEvent instance) => instance.duration),
      'eventType': VmProxy(identifier: 'eventType', externalInstancePropertyReader: (AudioEvent instance) => instance.eventType),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AudioEvent instance) => instance.hashCode),
      'isPrepared': VmProxy(identifier: 'isPrepared', externalInstancePropertyReader: (AudioEvent instance) => instance.isPrepared),
      'logMessage': VmProxy(identifier: 'logMessage', externalInstancePropertyReader: (AudioEvent instance) => instance.logMessage),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AudioEvent instance) => instance.noSuchMethod),
      'position': VmProxy(identifier: 'position', externalInstancePropertyReader: (AudioEvent instance) => instance.position),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AudioEvent instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AudioEvent instance) => instance.toString),
    },
  );

  ///class AudioEventType
  static final classAudioEventType = VmClass<AudioEventType>(
    identifier: 'AudioEventType',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'complete': VmProxy(identifier: 'complete', externalStaticPropertyReader: () => AudioEventType.complete),
      'duration': VmProxy(identifier: 'duration', externalStaticPropertyReader: () => AudioEventType.duration),
      'log': VmProxy(identifier: 'log', externalStaticPropertyReader: () => AudioEventType.log),
      'position': VmProxy(identifier: 'position', externalStaticPropertyReader: () => AudioEventType.position),
      'prepared': VmProxy(identifier: 'prepared', externalStaticPropertyReader: () => AudioEventType.prepared),
      'seekComplete': VmProxy(identifier: 'seekComplete', externalStaticPropertyReader: () => AudioEventType.seekComplete),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AudioEventType instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (AudioEventType instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (AudioEventType instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AudioEventType instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AudioEventType instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AudioEventType instance) => instance.toString),
    },
  );

  ///class AudioLogger
  static final classAudioLogger = VmClass<AudioLogger>(
    identifier: 'AudioLogger',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => AudioLogger.new),
      'error': VmProxy(identifier: 'error', externalStaticPropertyReader: () => AudioLogger.error),
      'errorToString': VmProxy(identifier: 'errorToString', externalStaticPropertyReader: () => AudioLogger.errorToString),
      'log': VmProxy(identifier: 'log', externalStaticPropertyReader: () => AudioLogger.log),
      'logLevel': VmProxy(identifier: 'logLevel', externalStaticPropertyReader: () => AudioLogger.logLevel, externalStaticPropertyWriter: (value) => AudioLogger.logLevel = value),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AudioLogger instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AudioLogger instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AudioLogger instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AudioLogger instance) => instance.toString),
    },
  );

  ///class AudioLogLevel
  static final classAudioLogLevel = VmClass<AudioLogLevel>(
    identifier: 'AudioLogLevel',
    superclassNames: ['Object', 'Comparable'],
    externalProxyMap: {
      'error': VmProxy(identifier: 'error', externalStaticPropertyReader: () => AudioLogLevel.error),
      'info': VmProxy(identifier: 'info', externalStaticPropertyReader: () => AudioLogLevel.info),
      'none': VmProxy(identifier: 'none', externalStaticPropertyReader: () => AudioLogLevel.none),
      'compareTo': VmProxy(identifier: 'compareTo', externalInstancePropertyReader: (AudioLogLevel instance) => instance.compareTo),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AudioLogLevel instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AudioLogLevel instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AudioLogLevel instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AudioLogLevel instance) => instance.toString),
    },
  );

  ///class AudioPlayer
  static final classAudioPlayer = VmClass<AudioPlayer>(
    identifier: 'AudioPlayer',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => AudioPlayer.new),
      'global': VmProxy(identifier: 'global', externalStaticPropertyReader: () => AudioPlayer.global),
      'audioCache': VmProxy(identifier: 'audioCache', externalInstancePropertyReader: (AudioPlayer instance) => instance.audioCache, externalInstancePropertyWriter: (AudioPlayer instance, value) => instance.audioCache = value),
      'balance': VmProxy(identifier: 'balance', externalInstancePropertyReader: (AudioPlayer instance) => instance.balance),
      'creatingCompleter': VmProxy(identifier: 'creatingCompleter', externalInstancePropertyReader: (AudioPlayer instance) => instance.creatingCompleter),
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (AudioPlayer instance) => instance.dispose),
      'eventStream': VmProxy(identifier: 'eventStream', externalInstancePropertyReader: (AudioPlayer instance) => instance.eventStream),
      'getCurrentPosition': VmProxy(identifier: 'getCurrentPosition', externalInstancePropertyReader: (AudioPlayer instance) => instance.getCurrentPosition),
      'getDuration': VmProxy(identifier: 'getDuration', externalInstancePropertyReader: (AudioPlayer instance) => instance.getDuration),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AudioPlayer instance) => instance.hashCode),
      'mode': VmProxy(identifier: 'mode', externalInstancePropertyReader: (AudioPlayer instance) => instance.mode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AudioPlayer instance) => instance.noSuchMethod),
      'onDurationChanged': VmProxy(identifier: 'onDurationChanged', externalInstancePropertyReader: (AudioPlayer instance) => instance.onDurationChanged),
      'onLog': VmProxy(identifier: 'onLog', externalInstancePropertyReader: (AudioPlayer instance) => instance.onLog),
      'onPlayerComplete': VmProxy(identifier: 'onPlayerComplete', externalInstancePropertyReader: (AudioPlayer instance) => instance.onPlayerComplete),
      'onPlayerStateChanged': VmProxy(identifier: 'onPlayerStateChanged', externalInstancePropertyReader: (AudioPlayer instance) => instance.onPlayerStateChanged),
      'onPositionChanged': VmProxy(identifier: 'onPositionChanged', externalInstancePropertyReader: (AudioPlayer instance) => instance.onPositionChanged),
      'onSeekComplete': VmProxy(identifier: 'onSeekComplete', externalInstancePropertyReader: (AudioPlayer instance) => instance.onSeekComplete),
      'pause': VmProxy(identifier: 'pause', externalInstancePropertyReader: (AudioPlayer instance) => instance.pause),
      'play': VmProxy(identifier: 'play', externalInstancePropertyReader: (AudioPlayer instance) => instance.play),
      'playbackRate': VmProxy(identifier: 'playbackRate', externalInstancePropertyReader: (AudioPlayer instance) => instance.playbackRate),
      'playerId': VmProxy(identifier: 'playerId', externalInstancePropertyReader: (AudioPlayer instance) => instance.playerId),
      'release': VmProxy(identifier: 'release', externalInstancePropertyReader: (AudioPlayer instance) => instance.release),
      'releaseMode': VmProxy(identifier: 'releaseMode', externalInstancePropertyReader: (AudioPlayer instance) => instance.releaseMode),
      'resume': VmProxy(identifier: 'resume', externalInstancePropertyReader: (AudioPlayer instance) => instance.resume),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AudioPlayer instance) => instance.runtimeType),
      'seek': VmProxy(identifier: 'seek', externalInstancePropertyReader: (AudioPlayer instance) => instance.seek),
      'setAudioContext': VmProxy(identifier: 'setAudioContext', externalInstancePropertyReader: (AudioPlayer instance) => instance.setAudioContext),
      'setBalance': VmProxy(identifier: 'setBalance', externalInstancePropertyReader: (AudioPlayer instance) => instance.setBalance),
      'setPlaybackRate': VmProxy(identifier: 'setPlaybackRate', externalInstancePropertyReader: (AudioPlayer instance) => instance.setPlaybackRate),
      'setPlayerMode': VmProxy(identifier: 'setPlayerMode', externalInstancePropertyReader: (AudioPlayer instance) => instance.setPlayerMode),
      'setReleaseMode': VmProxy(identifier: 'setReleaseMode', externalInstancePropertyReader: (AudioPlayer instance) => instance.setReleaseMode),
      'setSource': VmProxy(identifier: 'setSource', externalInstancePropertyReader: (AudioPlayer instance) => instance.setSource),
      'setSourceAsset': VmProxy(identifier: 'setSourceAsset', externalInstancePropertyReader: (AudioPlayer instance) => instance.setSourceAsset),
      'setSourceBytes': VmProxy(identifier: 'setSourceBytes', externalInstancePropertyReader: (AudioPlayer instance) => instance.setSourceBytes),
      'setSourceDeviceFile': VmProxy(identifier: 'setSourceDeviceFile', externalInstancePropertyReader: (AudioPlayer instance) => instance.setSourceDeviceFile),
      'setSourceUrl': VmProxy(identifier: 'setSourceUrl', externalInstancePropertyReader: (AudioPlayer instance) => instance.setSourceUrl),
      'setVolume': VmProxy(identifier: 'setVolume', externalInstancePropertyReader: (AudioPlayer instance) => instance.setVolume),
      'source': VmProxy(identifier: 'source', externalInstancePropertyReader: (AudioPlayer instance) => instance.source),
      'state': VmProxy(identifier: 'state', externalInstancePropertyWriter: (AudioPlayer instance, value) => instance.state = value, externalInstancePropertyReader: (AudioPlayer instance) => instance.state),
      'stop': VmProxy(identifier: 'stop', externalInstancePropertyReader: (AudioPlayer instance) => instance.stop),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AudioPlayer instance) => instance.toString),
      'volume': VmProxy(identifier: 'volume', externalInstancePropertyReader: (AudioPlayer instance) => instance.volume),
    },
  );

  ///class AudioPlayerException
  static final classAudioPlayerException = VmClass<AudioPlayerException>(
    identifier: 'AudioPlayerException',
    superclassNames: ['Object', 'Exception'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => AudioPlayerException.new),
      'cause': VmProxy(identifier: 'cause', externalInstancePropertyReader: (AudioPlayerException instance) => instance.cause, externalInstancePropertyWriter: (AudioPlayerException instance, value) => instance.cause = value),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AudioPlayerException instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AudioPlayerException instance) => instance.noSuchMethod),
      'player': VmProxy(identifier: 'player', externalInstancePropertyReader: (AudioPlayerException instance) => instance.player, externalInstancePropertyWriter: (AudioPlayerException instance, value) => instance.player = value),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AudioPlayerException instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AudioPlayerException instance) => instance.toString),
    },
  );

  ///class AudioPool
  static final classAudioPool = VmClass<AudioPool>(
    identifier: 'AudioPool',
    superclassNames: ['Object'],
    externalProxyMap: {
      'create': VmProxy(identifier: 'create', externalStaticPropertyReader: () => AudioPool.create),
      'createFromAsset': VmProxy(identifier: 'createFromAsset', externalStaticPropertyReader: () => AudioPool.createFromAsset),
      'audioCache': VmProxy(identifier: 'audioCache', externalInstancePropertyReader: (AudioPool instance) => instance.audioCache),
      'availablePlayers': VmProxy(identifier: 'availablePlayers', externalInstancePropertyReader: (AudioPool instance) => instance.availablePlayers),
      'currentPlayers': VmProxy(identifier: 'currentPlayers', externalInstancePropertyReader: (AudioPool instance) => instance.currentPlayers),
      'dispose': VmProxy(identifier: 'dispose', externalInstancePropertyReader: (AudioPool instance) => instance.dispose),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AudioPool instance) => instance.hashCode),
      'maxPlayers': VmProxy(identifier: 'maxPlayers', externalInstancePropertyReader: (AudioPool instance) => instance.maxPlayers),
      'minPlayers': VmProxy(identifier: 'minPlayers', externalInstancePropertyReader: (AudioPool instance) => instance.minPlayers),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AudioPool instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AudioPool instance) => instance.runtimeType),
      'source': VmProxy(identifier: 'source', externalInstancePropertyReader: (AudioPool instance) => instance.source),
      'start': VmProxy(identifier: 'start', externalInstancePropertyReader: (AudioPool instance) => instance.start),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AudioPool instance) => instance.toString),
    },
  );

  ///class AVAudioSessionCategory
  static final classAVAudioSessionCategory = VmClass<AVAudioSessionCategory>(
    identifier: 'AVAudioSessionCategory',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'ambient': VmProxy(identifier: 'ambient', externalStaticPropertyReader: () => AVAudioSessionCategory.ambient),
      'multiRoute': VmProxy(identifier: 'multiRoute', externalStaticPropertyReader: () => AVAudioSessionCategory.multiRoute),
      'playAndRecord': VmProxy(identifier: 'playAndRecord', externalStaticPropertyReader: () => AVAudioSessionCategory.playAndRecord),
      'playback': VmProxy(identifier: 'playback', externalStaticPropertyReader: () => AVAudioSessionCategory.playback),
      'record': VmProxy(identifier: 'record', externalStaticPropertyReader: () => AVAudioSessionCategory.record),
      'soloAmbient': VmProxy(identifier: 'soloAmbient', externalStaticPropertyReader: () => AVAudioSessionCategory.soloAmbient),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AVAudioSessionCategory instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (AVAudioSessionCategory instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (AVAudioSessionCategory instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AVAudioSessionCategory instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AVAudioSessionCategory instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AVAudioSessionCategory instance) => instance.toString),
    },
  );

  ///class AVAudioSessionOptions
  static final classAVAudioSessionOptions = VmClass<AVAudioSessionOptions>(
    identifier: 'AVAudioSessionOptions',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'allowAirPlay': VmProxy(identifier: 'allowAirPlay', externalStaticPropertyReader: () => AVAudioSessionOptions.allowAirPlay),
      'allowBluetooth': VmProxy(identifier: 'allowBluetooth', externalStaticPropertyReader: () => AVAudioSessionOptions.allowBluetooth),
      'allowBluetoothA2DP': VmProxy(identifier: 'allowBluetoothA2DP', externalStaticPropertyReader: () => AVAudioSessionOptions.allowBluetoothA2DP),
      'defaultToSpeaker': VmProxy(identifier: 'defaultToSpeaker', externalStaticPropertyReader: () => AVAudioSessionOptions.defaultToSpeaker),
      'duckOthers': VmProxy(identifier: 'duckOthers', externalStaticPropertyReader: () => AVAudioSessionOptions.duckOthers),
      'interruptSpokenAudioAndMixWithOthers': VmProxy(identifier: 'interruptSpokenAudioAndMixWithOthers', externalStaticPropertyReader: () => AVAudioSessionOptions.interruptSpokenAudioAndMixWithOthers),
      'mixWithOthers': VmProxy(identifier: 'mixWithOthers', externalStaticPropertyReader: () => AVAudioSessionOptions.mixWithOthers),
      'overrideMutedMicrophoneInterruption': VmProxy(identifier: 'overrideMutedMicrophoneInterruption', externalStaticPropertyReader: () => AVAudioSessionOptions.overrideMutedMicrophoneInterruption),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (AVAudioSessionOptions instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (AVAudioSessionOptions instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (AVAudioSessionOptions instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (AVAudioSessionOptions instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (AVAudioSessionOptions instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (AVAudioSessionOptions instance) => instance.toString),
    },
  );

  ///class BytesSource
  static final classBytesSource = VmClass<BytesSource>(
    identifier: 'BytesSource',
    superclassNames: ['Object', 'Source'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => BytesSource.new),
      'bytes': VmProxy(identifier: 'bytes', externalInstancePropertyReader: (BytesSource instance) => instance.bytes),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (BytesSource instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (BytesSource instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (BytesSource instance) => instance.runtimeType),
      'setOnPlayer': VmProxy(identifier: 'setOnPlayer', externalInstancePropertyReader: (BytesSource instance) => instance.setOnPlayer),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (BytesSource instance) => instance.toString),
    },
  );

  ///class DeviceFileSource
  static final classDeviceFileSource = VmClass<DeviceFileSource>(
    identifier: 'DeviceFileSource',
    superclassNames: ['Object', 'Source'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => DeviceFileSource.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (DeviceFileSource instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (DeviceFileSource instance) => instance.noSuchMethod),
      'path': VmProxy(identifier: 'path', externalInstancePropertyReader: (DeviceFileSource instance) => instance.path),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (DeviceFileSource instance) => instance.runtimeType),
      'setOnPlayer': VmProxy(identifier: 'setOnPlayer', externalInstancePropertyReader: (DeviceFileSource instance) => instance.setOnPlayer),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (DeviceFileSource instance) => instance.toString),
    },
  );

  ///class GlobalAudioEvent
  static final classGlobalAudioEvent = VmClass<GlobalAudioEvent>(
    identifier: 'GlobalAudioEvent',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => GlobalAudioEvent.new),
      'eventType': VmProxy(identifier: 'eventType', externalInstancePropertyReader: (GlobalAudioEvent instance) => instance.eventType),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (GlobalAudioEvent instance) => instance.hashCode),
      'logMessage': VmProxy(identifier: 'logMessage', externalInstancePropertyReader: (GlobalAudioEvent instance) => instance.logMessage),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (GlobalAudioEvent instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (GlobalAudioEvent instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (GlobalAudioEvent instance) => instance.toString),
    },
  );

  ///class GlobalAudioEventType
  static final classGlobalAudioEventType = VmClass<GlobalAudioEventType>(
    identifier: 'GlobalAudioEventType',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'log': VmProxy(identifier: 'log', externalStaticPropertyReader: () => GlobalAudioEventType.log),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (GlobalAudioEventType instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (GlobalAudioEventType instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (GlobalAudioEventType instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (GlobalAudioEventType instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (GlobalAudioEventType instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (GlobalAudioEventType instance) => instance.toString),
    },
  );

  ///class GlobalAudioScope
  static final classGlobalAudioScope = VmClass<GlobalAudioScope>(
    identifier: 'GlobalAudioScope',
    superclassNames: ['Object'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => GlobalAudioScope.new),
      'changeLogLevel': VmProxy(identifier: 'changeLogLevel', externalInstancePropertyReader: (GlobalAudioScope instance) => instance.changeLogLevel),
      'error': VmProxy(identifier: 'error', externalInstancePropertyReader: (GlobalAudioScope instance) => instance.error),
      'eventStream': VmProxy(identifier: 'eventStream', externalInstancePropertyReader: (GlobalAudioScope instance) => instance.eventStream),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (GlobalAudioScope instance) => instance.hashCode),
      'info': VmProxy(identifier: 'info', externalInstancePropertyReader: (GlobalAudioScope instance) => instance.info),
      'log': VmProxy(identifier: 'log', externalInstancePropertyReader: (GlobalAudioScope instance) => instance.log),
      'logLevel': VmProxy(identifier: 'logLevel', externalInstancePropertyReader: (GlobalAudioScope instance) => instance.logLevel),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (GlobalAudioScope instance) => instance.noSuchMethod),
      'onLog': VmProxy(identifier: 'onLog', externalInstancePropertyReader: (GlobalAudioScope instance) => instance.onLog),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (GlobalAudioScope instance) => instance.runtimeType),
      'setAudioContext': VmProxy(identifier: 'setAudioContext', externalInstancePropertyReader: (GlobalAudioScope instance) => instance.setAudioContext),
      'setGlobalAudioContext': VmProxy(identifier: 'setGlobalAudioContext', externalInstancePropertyReader: (GlobalAudioScope instance) => instance.setGlobalAudioContext),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (GlobalAudioScope instance) => instance.toString),
    },
  );

  ///class PlayerMode
  static final classPlayerMode = VmClass<PlayerMode>(
    identifier: 'PlayerMode',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'lowLatency': VmProxy(identifier: 'lowLatency', externalStaticPropertyReader: () => PlayerMode.lowLatency),
      'mediaPlayer': VmProxy(identifier: 'mediaPlayer', externalStaticPropertyReader: () => PlayerMode.mediaPlayer),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PlayerMode instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (PlayerMode instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (PlayerMode instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PlayerMode instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PlayerMode instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PlayerMode instance) => instance.toString),
    },
  );

  ///class PlayerState
  static final classPlayerState = VmClass<PlayerState>(
    identifier: 'PlayerState',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'completed': VmProxy(identifier: 'completed', externalStaticPropertyReader: () => PlayerState.completed),
      'disposed': VmProxy(identifier: 'disposed', externalStaticPropertyReader: () => PlayerState.disposed),
      'paused': VmProxy(identifier: 'paused', externalStaticPropertyReader: () => PlayerState.paused),
      'playing': VmProxy(identifier: 'playing', externalStaticPropertyReader: () => PlayerState.playing),
      'stopped': VmProxy(identifier: 'stopped', externalStaticPropertyReader: () => PlayerState.stopped),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (PlayerState instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (PlayerState instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (PlayerState instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (PlayerState instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (PlayerState instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (PlayerState instance) => instance.toString),
    },
  );

  ///class ReleaseMode
  static final classReleaseMode = VmClass<ReleaseMode>(
    identifier: 'ReleaseMode',
    superclassNames: ['Object', 'Enum'],
    externalProxyMap: {
      'loop': VmProxy(identifier: 'loop', externalStaticPropertyReader: () => ReleaseMode.loop),
      'release': VmProxy(identifier: 'release', externalStaticPropertyReader: () => ReleaseMode.release),
      'stop': VmProxy(identifier: 'stop', externalStaticPropertyReader: () => ReleaseMode.stop),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (ReleaseMode instance) => instance.hashCode),
      'index': VmProxy(identifier: 'index', externalInstancePropertyReader: (ReleaseMode instance) => instance.index),
      'name': VmProxy(identifier: 'name', externalInstancePropertyReader: (ReleaseMode instance) => instance.name),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (ReleaseMode instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (ReleaseMode instance) => instance.runtimeType),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (ReleaseMode instance) => instance.toString),
    },
  );

  ///class Source
  static final classSource = VmClass<Source>(
    identifier: 'Source',
    superclassNames: ['Object'],
    externalProxyMap: {
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (Source instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (Source instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (Source instance) => instance.runtimeType),
      'setOnPlayer': VmProxy(identifier: 'setOnPlayer', externalInstancePropertyReader: (Source instance) => instance.setOnPlayer),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (Source instance) => instance.toString),
    },
  );

  ///class UrlSource
  static final classUrlSource = VmClass<UrlSource>(
    identifier: 'UrlSource',
    superclassNames: ['Object', 'Source'],
    externalProxyMap: {
      'new': VmProxy(identifier: 'new', externalStaticPropertyReader: () => UrlSource.new),
      'hashCode': VmProxy(identifier: 'hashCode', externalInstancePropertyReader: (UrlSource instance) => instance.hashCode),
      'noSuchMethod': VmProxy(identifier: 'noSuchMethod', externalInstancePropertyReader: (UrlSource instance) => instance.noSuchMethod),
      'runtimeType': VmProxy(identifier: 'runtimeType', externalInstancePropertyReader: (UrlSource instance) => instance.runtimeType),
      'setOnPlayer': VmProxy(identifier: 'setOnPlayer', externalInstancePropertyReader: (UrlSource instance) => instance.setOnPlayer),
      'toString': VmProxy(identifier: 'toString', externalInstancePropertyReader: (UrlSource instance) => instance.toString),
      'url': VmProxy(identifier: 'url', externalInstancePropertyReader: (UrlSource instance) => instance.url),
    },
  );

  ///all class list
  static final libraryClassList = <VmClass>[
    classAndroidAudioFocus,
    classAndroidAudioMode,
    classAndroidContentType,
    classAndroidUsageType,
    classAssetSource,
    classAudioCache,
    classAudioContext,
    classAudioContextAndroid,
    classAudioContextConfig,
    classAudioContextConfigRoute,
    classAudioContextIOS,
    classAudioEvent,
    classAudioEventType,
    classAudioLogger,
    classAudioLogLevel,
    classAudioPlayer,
    classAudioPlayerException,
    classAudioPool,
    classAVAudioSessionCategory,
    classAVAudioSessionOptions,
    classBytesSource,
    classDeviceFileSource,
    classGlobalAudioEvent,
    classGlobalAudioEventType,
    classGlobalAudioScope,
    classPlayerMode,
    classPlayerState,
    classReleaseMode,
    classSource,
    classUrlSource,
  ];

  ///all proxy list
  static final libraryProxyList = <VmProxy<void>>[];
}
