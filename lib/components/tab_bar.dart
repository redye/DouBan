import 'package:douban/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:douban/constant/colors.dart';

class TabBarItemModel {
  String name, icon, activeIcon;
  TabBarItemModel(this.name, this.icon, this.activeIcon);
}

class DBTabBar extends StatefulWidget {
  const DBTabBar( {Key? key, required this.items, this.onTap}): super(key: key);

  final List<TabBarItemModel> items;
  final ValueChanged<int>? onTap;

  @override
  State<DBTabBar> createState() {
    return _DBTabBarState();
  }
}

class _DBTabBarState extends State<DBTabBar> {
  int _activeIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  List<Widget> _createTabs() {
    final List<Widget> tabs = <Widget>[];
    for (int i = 0; i < widget.items.length; i++) {
      TabBarItemModel item = widget.items[i];
      tabs.add(TabBarItem(Key('$i'), item, i == _activeIndex, onTap: () {
        widget.onTap?.call(i);
        setState(() {
          _activeIndex = i;
        });
      },));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(
          color: AColors.borderColor,
          width: 0.5
        )),
      ),
      child: SafeArea(
        top: false,
        child: SizedBox(
          width: UI.screenWidth,
          height: 49,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _createTabs(),
          ),
        ),
      ),
    );
  }
}

class TabBarItem extends StatelessWidget {
  final TabBarItemModel item;
  final bool isActive;
  final GestureTapCallback? onTap;

  const TabBarItem(Key? key, this.item, this.isActive, { this.onTap }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(isActive ? item.activeIcon : item.icon, width: UI.ceil(24), height: UI.ceil(24),),
          Text(item.name, style: isActive ? Styles.textStyle(14, textColor: AColors.themeColor) : Styles.textStyle(14),),
        ],
      ),
    );
  }
}