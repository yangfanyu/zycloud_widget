Language: English | [中文](https://github.com/yangfanyu/zycloud_widget/blob/main/README.zh-cn.md)

Flutter widget library for ZyCloud service. This library contains a dynamic Flutter widget module based on the shelf_easy virtual machine, and some third-party library bridge generation modules.

The basic functions of ZyCloud service are free forever. The purpose of the service is to provide support for Dart code updates in the AOT environment, so that you can focus on client-side development without writing server-side code when developing APP.

# 1. Quick Access

Related documents are being improved...

# 2. Precautions

The built-in bridging library is limited by the version of the third-party library. If an error is reported during compilation, the following version constraints can be added:

```yaml

environment:
  sdk: 3.2.0
  flutter: 3.16.0

dependencies:
  app_links: 3.4.5
  audioplayers: 5.2.1
  audioplayers_platform_interface: 6.1.0
  bson: 4.0.0
  flutter_linkify: 6.0.0
  flutter_slidable: 3.0.1
  flutter_vector_icons: 2.0.0
  flutter_webrtc: 0.9.47
  http: 1.1.2
  http_parser: 4.0.2
  linkify: 5.0.0
  loading_indicator: 3.1.1
  permission_handler: 11.1.0
  permission_handler_platform_interface: 4.0.2
  plugin_platform_interface: 2.1.7
  scrollable_positioned_list: 0.3.8
  shelf_easy: 3.2.2
  url_launcher: 6.2.1
  webrtc_interface: 1.1.2
  webview_flutter: 4.4.2
  webview_flutter_platform_interface: 2.8.0
  zycloud_client: 1.1.1

```