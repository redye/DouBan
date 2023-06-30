import 'package:douban/components/tab_bar.dart';
import 'package:flutter/material.dart';

class TabContainer extends StatefulWidget {
  const TabContainer({Key? key, required this.items, required this.pages}): super(key: key);

  final List<TabBarItemModel> items;
  final List<Widget> pages;

  @override
  State<TabContainer> createState() {
    return _TabContainerState();
  }
}

class _TabContainerState extends State<TabContainer> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    if (widget.items.length != widget.pages.length) {
      return const Scaffold(
        body: Center(
          child: Text('出错啦~'),
        ),
      );
    }
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: widget.pages[_activeIndex],
            ),
          ),
          DBTabBar(items: widget.items, onTap: (value) {
            setState(() {
              _activeIndex = value;
            });
          },)
        ],
      ),
    );
  }
}