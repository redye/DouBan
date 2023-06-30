import 'package:douban/constant/constant.dart';
import 'package:douban/utils/ui.dart';
import 'package:flutter/material.dart';

class Styles {
  static textStyle(double fontSize, { 
      Color textColor = AColors.mainTextColor, 
      double kern = 0.1, 
      FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(color: textColor, fontSize: UI.ceil(fontSize), fontWeight: fontWeight);
  }

  static mediumTextStyle(double fontSize, { Color textColor = AColors.mainTextColor }) {
    return textStyle(fontSize, textColor: textColor, fontWeight: FontWeight.w500);
  }

  static semiBoldTextStyle(double fontSize, { Color textColor = AColors.mainTextColor }) {
    return textStyle(fontSize, textColor: textColor, fontWeight: FontWeight.w600);
  }

  static boldTextStyle(double fontSize, { Color textColor = AColors.mainTextColor }) {
    return textStyle(fontSize, textColor: textColor, fontWeight: FontWeight.bold);
  }

  static lightTextStyle(double fontSize, { Color textColor = AColors.mainTextColor }) {
    return textStyle(fontSize, textColor: textColor, fontWeight: FontWeight.w300);
  }

  static thinTextStyle(double fontSize, { Color textColor = AColors.mainTextColor }) {
    return textStyle(fontSize, textColor: textColor, fontWeight: FontWeight.w100);
  }
}