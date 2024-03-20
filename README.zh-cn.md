语言:  [English](https://github.com/yangfanyu/zycloud_widget/blob/main/README.md) | 中文 

ZyCloud服务的Flutter小部件库。该库包含基于shelf_easy虚拟机的动态Flutter小部件模块、部分三方库桥接类型的生成模块。

ZyCloud服务的基础功能永久免费。服务目的是为AOT环境下的Dart代码更新提供支持、在开发APP时可专注于客户端开发而无需再编写服务端代码。

# 1、快速接入

相关文档正在完善中...

# 2、注意事项

内置的桥接库受限于第三方库的版本，如编译报错时可添加以下版本约束：

```yaml

dependencies:
  app_links: 3.5.1
  audioplayers: 5.2.1
  audioplayers_platform_interface: 6.1.0
  bson: 5.0.4
  flutter_linkify: 6.0.0
  flutter_slidable: 3.1.0
  flutter_vector_icons: 2.0.0
  flutter_webrtc: 0.9.48+hotfix.1
  http: 1.2.0
  http_parser: 4.0.2
  linkify: 5.0.0
  loading_indicator: 3.1.1
  permission_handler: 11.3.0
  permission_handler_platform_interface: 4.2.0
  plugin_platform_interface: 2.1.8
  scrollable_positioned_list: 0.3.8
  shelf_easy: 3.5.1
  url_launcher: 6.2.5
  webrtc_interface: 1.1.2
  webview_flutter: 4.7.0
  webview_flutter_platform_interface: 2.10.0
  zycloud_client: 1.2.0

```