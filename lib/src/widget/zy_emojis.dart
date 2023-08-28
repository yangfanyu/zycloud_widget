import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

///
///自定义表情符号输入键盘
///
class ZyEmojis extends StatefulWidget {
  ///内容部位的背景色
  final Color? pageColor;

  ///网格列数量
  final int gridColumn;

  ///网格垂直方向内边距
  final double gridPaddingV;

  ///网格表情字体样式
  final TextStyle gridItemStyle;

  ///分类栏高度
  final double typeBarHeight;

  ///分类栏背景色
  final Color? typeBarColor;

  ///分类栏子项字体大小
  final double typeItemFontSize;

  ///分类栏子项普通颜色
  final Color typeNormalColor;

  ///分类栏子项选中颜色
  final Color typeActiveColor;

  ///分割线颜色
  final Color? dividerColor;

  ///点击表情符号处理
  final void Function(String emoji)? onEmojiSelected;

  ///点击删除按钮处理
  final void Function()? onBackspaceTap;

  const ZyEmojis({
    super.key,
    this.pageColor,
    this.gridColumn = 7,
    this.gridPaddingV = 8,
    this.gridItemStyle = const TextStyle(fontSize: 26),
    this.typeBarHeight = 58,
    this.typeBarColor,
    this.typeItemFontSize = 26,
    required this.typeNormalColor,
    required this.typeActiveColor,
    this.dividerColor,
    this.onEmojiSelected,
    this.onBackspaceTap,
  });

  @override
  State<StatefulWidget> createState() => _ZyEmojisState();
}

class _ZyEmojisState extends State<ZyEmojis> with SingleTickerProviderStateMixin {
  final _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            color: widget.pageColor,
            child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemCount: _widgetEmojisTypesData.length,
              itemBuilder: (context, pageIndex) {
                return GridView.builder(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.symmetric(vertical: widget.gridPaddingV),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: widget.gridColumn),
                  itemCount: _widgetEmojisTypesData[pageIndex].length,
                  itemBuilder: (context, gridIndex) {
                    final emoji = _widgetEmojisTypesData[pageIndex][gridIndex];
                    return IconButton(
                      icon: Text(emoji, style: widget.gridItemStyle),
                      onPressed: () => _onGridItemPressed(emoji),
                    );
                  },
                );
              },
              onPageChanged: _onPageViewChange,
            ),
          ),
        ),
        Divider(color: widget.dividerColor),
        Container(
          height: widget.typeBarHeight,
          color: widget.typeBarColor,
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _widgetEmojisTypesIcon.length,
                  itemExtent: widget.typeBarHeight,
                  itemBuilder: (context, index) {
                    return MaterialButton(
                      padding: EdgeInsets.zero,
                      child: Icon(_widgetEmojisTypesIcon[index], size: widget.typeItemFontSize, color: index == _currentPage ? widget.typeActiveColor : widget.typeNormalColor),
                      onPressed: () => _onTypeItemPressed(index),
                    );
                  },
                ),
              ),
              SizedBox(
                width: widget.typeBarHeight,
                height: widget.typeBarHeight,
                child: MaterialButton(
                  padding: EdgeInsets.zero,
                  onPressed: _onBackspacePressed,
                  child: Icon(MaterialCommunityIcons.backspace, size: widget.typeItemFontSize, color: widget.typeNormalColor),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _onPageViewChange(int index) {
    if (mounted) {
      setState(() {
        _currentPage = index;
      });
    }
  }

  void _onTypeItemPressed(int index) {
    if (_pageController.hasClients) {
      _pageController.jumpToPage(index); //会触发_onPageViewChange刷新，无需再次手动刷新页面
    }
  }

  void _onGridItemPressed(String emoji) {
    if (widget.onEmojiSelected != null) {
      widget.onEmojiSelected!(emoji);
    }
  }

  void _onBackspacePressed() {
    if (widget.onBackspaceTap != null) {
      widget.onBackspaceTap!();
    }
  }
}

const List<String> _widgetEmojisSmileys = [
  '😀',
  '😬',
  '😁',
  '😂',
  '😃',
  '😄',
  '🤣',
  '😅',
  '😆',
  '😇',
  '😉',
  '😊',
  '😋',
  '😌',
  '😍',
  '😘',
  '🤪',
  '😜',
  '😝',
  '🤑',
  '😎',
  '🤓',
  '🧐',
  '🤠',
  '🤗',
  '🤡',
  '😏',
  '😒',
  '🙄',
  '🤨',
  '🤔',
  '🤫',
  '🤭',
  '🤥',
  '😳',
  '😞',
  '😟',
  '😠',
  '😡',
  '🤬',
  '😔',
  '🙁',
  '😣',
  '😖',
  '😫',
  '😩',
  '😤',
  '😮',
  '😱',
  '😯',
  '😥',
  '😪',
  '🤤',
  '😓',
  '😭',
  '🤩',
  '😵',
  '😲',
  '🤯',
  '🤐',
  '😷',
  '🤕',
  '🤒',
  '🤮',
  '🤢',
  '🤧',
  '😴',
  '💤',
  '😈',
  '👿',
  '👹',
  '👺',
  '💩',
  '👻',
  '💀',
  '👽',
  '🤖',
  '🎃'
];

const List<String> _widgetEmojisHands = [
  '👐',
  '🤲',
  '🙌',
  '👏',
  '🙏',
  '🤝',
  '👍',
  '👎',
  '👊',
  '✊',
  '🤛',
  '🤜',
  '🤞',
  '✌',
  '🤘',
  '🤟',
  '👌',
  '👈',
  '👉',
  '👆',
  '👇',
  '☝',
  '✋',
  '🤚',
  '🖐',
  '🖖',
  '👋',
  '🤙',
  '💪',
  '🖕',
  '✍',
  '🤳',
  '💅',
  '👄',
  '👅',
  '👂',
  '👃',
  '👁',
  '👀',
  '🧠',
  '👤',
  '👥',
  '🗣',
  '👶',
];

const List<String> _widgetEmojisAnimals = [
  '🐶',
  '🐱',
  '🐭',
  '🐹',
  '🐰',
  '🐻',
  '🐼',
  '🐨',
  '🐯',
  '🦁',
  '🐮',
  '🐷',
  '🐽',
  '🐸',
  '🐵',
  '🙈',
  '🙉',
  '🙊',
  '🐒',
  '🦍',
  '🐔',
  '🐧',
  '🐦',
  '🐤',
  '🐣',
  '🐥',
  '🐺',
  '🦊',
  '🐗',
  '🐴',
  '🦓',
  '🦒',
  '🦌',
  '🦄',
  '🐝',
  '🐛',
  '🦋',
  '🐌',
  '🐞',
  '🐜',
  '🦗',
  '🕷',
  '🕸',
  '🦂',
  '🐢',
  '🐍',
  '🦎',
  '🦀',
  '🦑',
  '🐙',
  '🦐',
  '🐠',
  '🐟',
  '🐡',
  '🐬',
  '🦈',
  '🐳',
  '🐋',
  '🐊',
  '🐆',
  '🐅',
  '🐃',
  '🐂',
  '🐄',
  '🐪',
  '🐫',
  '🐘',
  '🦏',
  '🐐',
  '🐏',
  '🐑',
  '🐎',
  '🐖',
  '🦇',
  '🐓',
  '🦃',
  '🕊',
  '🦅',
  '🦆',
  '🦉',
  '🐕',
  '🐩',
  '🐈',
  '🐇',
  '🐀',
  '🐁',
  '🐿',
  '🦔',
  '🐾',
  '🐉',
  '🐲',
  '🦕',
  '🦖',
];

const List<String> _widgetEmojisFoods = [
  '🍏',
  '🍎',
  '🍐',
  '🍊',
  '🍋',
  '🍌',
  '🍉',
  '🍇',
  '🍓',
  '🍈',
  '🍒',
  '🍑',
  '🍍',
  '🥥',
  '🥝',
  '🍅',
  '🥑',
  '🍆',
  '🌶',
  '🥒',
  '🥦',
  '🌽',
  '🥕',
  '🥗',
  '🥔',
  '🍠',
  '🥜',
  '🍯',
  '🍞',
  '🥐',
  '🥖',
  '🥨',
  '🥞',
  '🧀',
  '🍗',
  '🍖',
  '🥩',
  '🍤',
  '🥚',
  '🍳',
  '🥓',
  '🍔',
  '🍟',
  '🌭',
  '🍕',
  '🍝',
  '🥪',
  '🥙',
  '🌮',
  '🌯',
  '🍜',
  '🥘',
  '🍲',
  '🥫',
  '🍥',
  '🍣',
  '🍱',
  '🍛',
  '🍙',
  '🍚',
  '🍘',
  '🥟',
  '🍢',
  '🍡',
  '🍧',
  '🍨',
  '🍦',
  '🍰',
  '🎂',
  '🥧',
  '🍮',
  '🍭',
  '🍬',
  '🍫',
  '🍿',
  '🍩',
  '🍪',
  '🥠',
  '☕',
  '🍵',
  '🥣',
  '🍼',
  '🥤',
  '🥛',
  '🍺',
  '🍻',
  '🍷',
  '🥂',
  '🥃',
  '🍸',
  '🍹',
  '🍾',
  '🍶',
  '🥄',
  '🍴',
  '🍽',
  '🥢',
  '🥡'
];

const List<IconData> _widgetEmojisTypesIcon = [MaterialCommunityIcons.face_man, MaterialCommunityIcons.hand_okay, MaterialCommunityIcons.dog, MaterialCommunityIcons.food_apple];

const List<List<String>> _widgetEmojisTypesData = [_widgetEmojisSmileys, _widgetEmojisHands, _widgetEmojisAnimals, _widgetEmojisFoods];
