import 'package:douban/components/nav_bar.dart';
import 'package:flutter/material.dart';

class MoviePage extends StatelessWidget {
  MoviePage({super.key});

  final tabs = ['电影', '电视', '读书', '连载', '音乐'];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          NavBar(title: '书影音', showBack: false,),
          Expanded(
            flex: 1,
            child: Container()
          )
        ],
      ),
    );
  }
}