import 'package:flutter/material.dart';

Color kPink = Color(0xffFFE1ED);

const kHeadline1 = TextStyle(
    color: Color(0xff030303),
    fontSize: 19,
    height: 1.5,
    fontWeight: FontWeight.w600);

const kCardText = TextStyle(
  color: Color(0xff030303),
  fontSize: 14,
  fontWeight: FontWeight.w300,
);

class ScreenSize {
  static double width;
  static double height;

  void init(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }
}
