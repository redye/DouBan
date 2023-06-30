import 'package:douban/components/nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const NavBar(title: '首页', showBack: false,),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}