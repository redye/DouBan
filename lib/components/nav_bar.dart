import 'package:douban/constant/constant.dart';
import 'package:douban/enums/enums.dart';
import 'package:douban/utils/index.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final BarStyle style;
  final String? title;
  final bool showBack;
  final Widget? titleView;
  final Widget? rightView;

  const NavBar({
    Key? key, 
    this.style = BarStyle.light, 
    this.title, 
    this.showBack = true, 
    this.titleView, 
    this.rightView}): super(key: key);

  Color get backgroundColor {
    if (style == BarStyle.light) {
      return Colors.white;
    } else {
      return Colors.black87;
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: backgroundColor,
      child: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _titleBar(context)
          ],
        )
      ),
    );
  }

  Widget _titleBar(BuildContext context) {
    return Stack( 
      alignment: Alignment.center,
      children: [
        Container(
          width: UI.screenWidth,
          height: 44,
          alignment: Alignment.center,
          child: titleView != null ? titleView! 
          : Text(title ?? "", style: Styles.mediumTextStyle(15)),
        ),
        Positioned(
          left: 0,
          top: 0,
          width: 44,
          height: 44,
          child: Center(
            child: showBack? GestureDetector(
              child: Image.asset('${Common.imageAssets}ic_arrow_back.png', width: UI.ceil(24), height: UI.ceil(24),),
              onTap: () {
                Navigator.of(context).pop();
              },
            ) : null,
          ),
        ),
        Positioned(
          top: 0, 
          bottom: 0, 
          right: UI.ceil(20), 
          child: Center(
            child: rightView,
          ))
      ],
    );
  }
}