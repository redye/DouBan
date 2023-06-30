import 'dart:io';

import 'package:douban/components/nav_bar.dart';
import 'package:douban/components/tab_bar.dart';
import 'package:douban/components/tab_container.dart';
import 'package:douban/constant/constant.dart';
import 'package:douban/pages/group/group_page.dart';
import 'package:douban/pages/home/home_page.dart';
import 'package:douban/pages/market/market_page.dart';
import 'package:douban/pages/mine/mine_page.dart';
import 'package:douban/pages/movie/movie_page.dart';
import 'package:flutter/material.dart';
import 'package:douban/utils/index.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
  if (Platform.isAndroid) {
    // 设置Android头部的导航栏透明
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  

  

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    UI.screenWidth = screenSize.width;
    UI.screenHeight = screenSize.height;

    final tabs = [
      TabBarItemModel('首页', '${Common.imageAssets}ic_tab_home_normal.png', '${Common.imageAssets}ic_tab_home_active.png'),
      TabBarItemModel('书影音', '${Common.imageAssets}ic_tab_subject_normal.png', '${Common.imageAssets}ic_tab_subject_active.png',),
      TabBarItemModel('小组', '${Common.imageAssets}ic_tab_group_normal.png', '${Common.imageAssets}ic_tab_group_active.png'),
      TabBarItemModel('市集', '${Common.imageAssets}ic_tab_shiji_normal.png', '${Common.imageAssets}ic_tab_shiji_active.png'),
      TabBarItemModel('我的', '${Common.imageAssets}ic_tab_profile_normal.png', '${Common.imageAssets}ic_tab_profile_active.png')
    ];

    final pages = [
      const HomePage(),
      const MoviePage(),
      const GroupPage(),
      const MarketPage(),
      const MinePage()
    ];

    return MaterialApp(
      home: Scaffold(
        body: TabContainer(items: tabs, pages: pages,),
      ),
    );
  }
}