import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

import 'zy_border.dart';
import 'zy_image.dart';
import 'zy_picture.dart';

///
///富文本小部件
///
class ZyEditor extends StatefulWidget {
  ///可序列化的数据
  final List<dynamic>? deltaJson;

  ///编辑器的控制器，为null时是只读模式
  final ZyEditorController? controller;

  ///包围框圆角大小
  final BorderRadius? boxRadius;

  ///控件的排列方式
  final VerticalDirection boxDirection;

  ///工具栏底背景色
  final Color? barColor;

  ///工具栏内部边距
  final EdgeInsets? barPadding;

  ///工具栏底分割线
  final Widget? barDivider;

  ///输入框可否滚动
  final bool bodyScrollable;

  ///输入框内部边距
  final EdgeInsets bodyPadding;

  ///输入框自动获焦
  final bool bodyAutoFocus;

  ///输入框只读模式
  final bool bodyReadOnly;

  ///输入框撑满容器
  final bool bodyExpands;

  ///输入框占位信息
  final bool? bodyShowCursor;

  ///输入框占位信息
  final String? bodyPlaceholder;

  ///输入框滚动效果
  final ScrollPhysics? bodyScrollPhysics;

  /* ******** 工具栏按钮配置信息 ******** */

  final Axis axis;
  final double toolbarIconSize;
  final double toolbarSectionSpacing;
  final WrapAlignment toolbarIconAlignment;
  final WrapCrossAlignment toolbarIconCrossAlignment;
  final bool multiRowsDisplay;
  final bool showDividers;
  final bool showFontFamily;
  final bool showFontSize;
  final bool showBoldButton;
  final bool showItalicButton;
  final bool showSmallButton;
  final bool showUnderLineButton;
  final bool showStrikeThrough;
  final bool showInlineCode;
  final bool showColorButton;
  final bool showBackgroundColorButton;
  final bool showClearFormat;
  final bool showAlignmentButtons;
  final bool showLeftAlignment;
  final bool showCenterAlignment;
  final bool showRightAlignment;
  final bool showJustifyAlignment;
  final bool showHeaderStyle;
  final bool showListNumbers;
  final bool showListBullets;
  final bool showListCheck;
  final bool showCodeBlock;
  final bool showQuote;
  final bool showIndent;
  final bool showLink;
  final bool showUndo;
  final bool showRedo;
  final bool showDirection;
  final bool showSearchButton;
  final bool showSubscript;
  final bool showSuperscript;

  /* ******** 自定义按钮配置信息 ******** */

  ///是否有图片按钮
  final bool imageButtonEnable;

  ///图片按钮的提示
  final String imageButtonTooltip;

  ///格式化网络链接
  final String Function(String val)? onImageFormatUrl;

  ///选择图片后回调，用于处理并上传，返回值为 Future<String?>，为兼容虚拟机改成了Future<dynamic>
  final Future<dynamic> Function(Uint8List bytes)? onImagePickCallback;

  const ZyEditor({
    super.key,
    this.deltaJson,
    this.controller,
    this.boxRadius,
    this.boxDirection = VerticalDirection.down,
    this.barColor,
    this.barPadding,
    this.barDivider,
    required this.bodyScrollable,
    required this.bodyPadding,
    required this.bodyAutoFocus,
    required this.bodyReadOnly,
    required this.bodyExpands,
    this.bodyShowCursor,
    this.bodyPlaceholder,
    this.bodyScrollPhysics,

    ///QuillToolbar配置信息
    this.axis = Axis.horizontal,
    this.toolbarIconSize = 18,
    this.toolbarSectionSpacing = 4,
    this.toolbarIconAlignment = WrapAlignment.center,
    this.toolbarIconCrossAlignment = WrapCrossAlignment.center,
    this.multiRowsDisplay = true,
    this.showDividers = true,
    this.showFontFamily = true,
    this.showFontSize = true,
    this.showBoldButton = true,
    this.showItalicButton = true,
    this.showSmallButton = true, //原默认值为false
    this.showUnderLineButton = true,
    this.showStrikeThrough = true,
    this.showInlineCode = true,
    this.showColorButton = true,
    this.showBackgroundColorButton = true,
    this.showClearFormat = true,
    this.showAlignmentButtons = true, //原默认值为false
    this.showLeftAlignment = true,
    this.showCenterAlignment = true,
    this.showRightAlignment = true,
    this.showJustifyAlignment = true,
    this.showHeaderStyle = true,
    this.showListNumbers = true,
    this.showListBullets = true,
    this.showListCheck = true,
    this.showCodeBlock = true,
    this.showQuote = true,
    this.showIndent = true,
    this.showLink = true,
    this.showUndo = true,
    this.showRedo = true,
    this.showDirection = true, //原默认值为false
    this.showSearchButton = true,
    this.showSubscript = true,
    this.showSuperscript = true,

    ///自定义按钮配置信息
    this.imageButtonEnable = true,
    this.imageButtonTooltip = 'Upload image',
    this.onImageFormatUrl,
    this.onImagePickCallback,
  });

  @override
  State<StatefulWidget> createState() => _ZyEditorState();
}

///
///富文本小部件控制器
///
class ZyEditorController {
  ///输入框滚动控制器
  final ScrollController _scrollController;

  ///输入框内容控制器
  final QuillController _quillController;

  ///输入框内容的焦点
  final FocusNode _focusNode;

  ZyEditorController({List<dynamic>? deltaJson})
      : _scrollController = ScrollController(),
        _quillController = deltaJson == null || deltaJson.isEmpty
            ? QuillController.basic()
            : QuillController(
                document: Document.fromJson(deltaJson),
                selection: const TextSelection.collapsed(offset: 0),
              ),
        _focusNode = FocusNode();

  ///设置可被序列化的数据
  void setDeltaJson(List<dynamic>? deltaJson) {
    _quillController.document = deltaJson == null || deltaJson.isEmpty ? Document() : Document.fromJson(deltaJson);
  }

  ///获取可被序列化的数据
  List<dynamic> getDeltaJson() => _quillController.document.toDelta().toJson();

  ///获取全部的图片的路径
  List<String> getImagePaths({int maxLength = 3}) {
    final delta = _quillController.document.toDelta();
    final imagePaths = <String>[];
    for (var i = 0; i < delta.length; i++) {
      final item = delta.elementAt(i);
      if (item.isInsert && item.value is Map) {
        final value = item.value as Map;
        if (value.containsKey('image')) {
          final image = value['image'];
          if (image is String) {
            imagePaths.add(image);
          }
        }
      }
    }
    return imagePaths.length > maxLength ? imagePaths.sublist(0, maxLength) : imagePaths;
  }

  ///获取预览的文本字符串
  String getPreviewText({int maxLength = 300}) {
    final delta = _quillController.document.toDelta();
    final textBuffer = StringBuffer();
    for (int i = 0; i < delta.length; i++) {
      final item = delta.elementAt(i);
      if (item.isInsert && item.value is String) {
        final value = item.value as String;
        textBuffer.write(value.replaceAll('\n', ' '));
      }
    }
    final previewText = textBuffer.toString().trim();
    return previewText.length > maxLength ? previewText.substring(0, maxLength).trim() : previewText;
  }

  ///释放控制器创建的资源
  void dispose() {
    _scrollController.dispose();
    _quillController.dispose();
    _focusNode.dispose();
  }
}

///
///富文本小部件的状态
///
class _ZyEditorState extends State<ZyEditor> {
  ///内部编辑控制器，当[ZyEditor.controller]为null时，将创建新的
  ZyEditorController? _innerController;

  ///真实编辑控制器
  ZyEditorController get _editorController => widget.controller ?? _innerController!;

  @override
  void initState() {
    super.initState();
    if (widget.controller == null) {
      _innerController = ZyEditorController(deltaJson: widget.deltaJson);
    }
    if (!widget.bodyReadOnly) {
      _editorController._focusNode.addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
    }
  }

  @override
  void dispose() {
    _innerController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    if (widget.bodyReadOnly) {
      return QuillProvider(
        configurations: QuillConfigurations(controller: _editorController._quillController),
        child: QuillEditor(
          configurations: QuillEditorConfigurations(
            scrollable: widget.bodyScrollable,
            padding: widget.bodyPadding,
            autoFocus: widget.bodyAutoFocus,
            readOnly: widget.bodyReadOnly,
            expands: widget.bodyExpands,
            showCursor: widget.bodyShowCursor,
            placeholder: widget.bodyPlaceholder,
            scrollPhysics: widget.bodyScrollPhysics,
            embedBuilders: [_ZyEditorImageEmbedBuilder(onImageFormatUrl: widget.onImageFormatUrl)],
          ),
          focusNode: _editorController._focusNode,
          scrollController: _editorController._scrollController,
        ),
      );
    } else {
      return Container(
        clipBehavior: Clip.hardEdge,
        padding: EdgeInsets.all(_editorController._focusNode.hasFocus ? 0 : ZyBorder.getBorderSizeBold(themeData)),
        decoration: ShapeDecoration(
          shape: ZyBorder.getRoundedRectangleBorderBold(
            themeData,
            true,
            borderSize: _editorController._focusNode.hasFocus ? ZyBorder.getBorderSizeBold(themeData) * 2 : ZyBorder.getBorderSizeBold(themeData),
            borderRadius: widget.boxRadius,
            borderColor: _editorController._focusNode.hasFocus ? themeData.colorScheme.primary : ZyBorder.getBorderColorBold(themeData),
          ),
        ),
        child: QuillProvider(
          configurations: QuillConfigurations(controller: _editorController._quillController),
          child: Column(
            verticalDirection: widget.boxDirection,
            children: [
              Container(
                color: widget.barColor,
                margin: widget.barPadding,
                child: QuillToolbar(
                  configurations: QuillToolbarConfigurations(
                    buttonOptions: QuillToolbarButtonOptions(
                      base: QuillToolbarBaseButtonOptions(
                        iconTheme: QuillIconTheme(iconSelectedFillColor: themeData.colorScheme.primary, iconUnselectedFillColor: Colors.transparent),
                        globalIconSize: widget.toolbarIconSize,
                        afterButtonPressed: () => _editorController._focusNode.requestFocus(), //点击工具栏按钮后，非移动平台会失去焦点，这里重新获取
                      ),
                    ),
                    axis: widget.axis,
                    color: Colors.transparent,
                    toolbarSectionSpacing: widget.toolbarSectionSpacing,
                    toolbarIconAlignment: widget.toolbarIconAlignment,
                    toolbarIconCrossAlignment: widget.toolbarIconCrossAlignment,
                    multiRowsDisplay: widget.multiRowsDisplay,
                    showDividers: widget.showDividers,
                    showFontFamily: widget.showFontFamily,
                    showFontSize: widget.showFontSize,
                    showBoldButton: widget.showBoldButton,
                    showItalicButton: widget.showItalicButton,
                    showSmallButton: widget.showSmallButton,
                    showUnderLineButton: widget.showUnderLineButton,
                    showStrikeThrough: widget.showStrikeThrough,
                    showInlineCode: widget.showInlineCode,
                    showColorButton: widget.showColorButton,
                    showBackgroundColorButton: widget.showBackgroundColorButton,
                    showClearFormat: widget.showClearFormat,
                    showAlignmentButtons: widget.showAlignmentButtons,
                    showLeftAlignment: widget.showLeftAlignment,
                    showCenterAlignment: widget.showCenterAlignment,
                    showRightAlignment: widget.showRightAlignment,
                    showJustifyAlignment: widget.showJustifyAlignment,
                    showHeaderStyle: widget.showHeaderStyle,
                    showListNumbers: widget.showListNumbers,
                    showListBullets: widget.showListBullets,
                    showListCheck: widget.showListCheck,
                    showCodeBlock: widget.showCodeBlock,
                    showQuote: widget.showQuote,
                    showIndent: widget.showIndent,
                    showLink: widget.showLink,
                    showUndo: widget.showUndo,
                    showRedo: widget.showRedo,
                    showDirection: widget.showDirection,
                    showSearchButton: widget.showSearchButton,
                    showSubscript: widget.showSubscript,
                    showSuperscript: widget.showSuperscript,
                    embedButtons: _buildCustomEmbedButtons(themeData),
                  ),
                ),
              ),
              widget.barDivider ?? const SizedBox(),
              Expanded(
                child: QuillEditor(
                  configurations: QuillEditorConfigurations(
                    scrollable: widget.bodyScrollable,
                    padding: widget.bodyPadding,
                    autoFocus: widget.bodyAutoFocus,
                    readOnly: widget.bodyReadOnly,
                    expands: widget.bodyExpands,
                    showCursor: widget.bodyShowCursor,
                    placeholder: widget.bodyPlaceholder,
                    scrollPhysics: widget.bodyScrollPhysics,
                    keyboardAppearance: themeData.brightness,
                    onImagePaste: widget.onImagePickCallback == null ? null : (imageBytes) async => await widget.onImagePickCallback!(imageBytes), //兼容虚拟机的写法
                    embedBuilders: [_ZyEditorImageEmbedBuilder(onImageFormatUrl: widget.onImageFormatUrl)],
                  ),
                  focusNode: _editorController._focusNode,
                  scrollController: _editorController._scrollController,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  List<EmbedButtonBuilder> _buildCustomEmbedButtons(ThemeData themeData) {
    final result = <EmbedButtonBuilder>[];
    if (widget.imageButtonEnable) {
      result.add(
        _getCustomButtonBuilder(
          themeData,
          icon: Icons.image,
          tooltip: widget.imageButtonTooltip,
          onPressed: _onImageButtonPressed,
        ),
      );
    }
    return result;
  }

  EmbedButtonBuilder _getCustomButtonBuilder(ThemeData themeData, {required IconData icon, required String? tooltip, required Future<void> Function() onPressed}) {
    return (controller, iconSize, iconTheme, dialogTheme) => QuillToolbarIconButton(
          icon: Icon(icon, size: iconSize, color: iconTheme?.iconUnselectedColor ?? themeData.iconTheme.color),
          tooltip: tooltip,
          highlightElevation: 0,
          hoverElevation: 0,
          size: iconSize * 1.77,
          fillColor: iconTheme?.iconUnselectedFillColor ?? themeData.canvasColor,
          borderRadius: iconTheme?.borderRadius ?? 2,
          onPressed: onPressed,
        );
  }

  Future<void> _onImageButtonPressed() async {
    //读取图片数据
    final imageBytes = await ZyPicture.pickFromGallery();
    if (imageBytes == null) return;
    //定位插入位置
    final controller = _editorController._quillController;
    final index = controller.selection.baseOffset;
    final length = controller.selection.extentOffset - index;
    //回调上传接口
    final imageUrl = widget.onImagePickCallback == null ? null : await widget.onImagePickCallback!(imageBytes);
    if (imageUrl is String) controller.replaceText(index, length, BlockEmbed.image(imageUrl), null);
  }
}

class _ZyEditorImageEmbedBuilder extends EmbedBuilder {
  final String Function(String val)? onImageFormatUrl;

  _ZyEditorImageEmbedBuilder({required this.onImageFormatUrl});

  @override
  Widget build(BuildContext context, QuillController controller, Embed node, bool readOnly, bool inline, TextStyle textStyle) {
    return Center(child: ZyImage(url: node.value.data, onFormatUrl: onImageFormatUrl ?? _defaultImageFormatUrl));
  }

  @override
  String get key => BlockEmbed.imageType;

  @override
  bool get expanded => false;

  static String _defaultImageFormatUrl(String url) => url;
}
