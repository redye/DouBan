import 'package:douban/components/nav_bar.dart';
import 'package:flutter/material.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          NavBar(title: '书影音', showBack: false,),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                TabBar(
                  tabs: [Tab(text: '电影',), Tab(text: '电视',), Tab(text: '读书',), Tab(text: '连载',), Tab(text: '音乐',)],
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}