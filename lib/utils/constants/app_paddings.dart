import 'package:flutter/material.dart';

class AppPaddings {
  const AppPaddings._();
//all
  static const all4 = EdgeInsets.all(4);
  static const all6 = EdgeInsets.all(6);
  static const all8 = EdgeInsets.all(8);
  static const all10 = EdgeInsets.all(10);
  static const all12 = EdgeInsets.all(12);
  static const all16 = EdgeInsets.all(16);
  static const all20 = EdgeInsets.all(20);
  static const all24 = EdgeInsets.all(24);
  static const all30 = EdgeInsets.all(30);
//left

  static const l16 = EdgeInsets.only(left: 16);
  static const l12 = EdgeInsets.only(left: 12);

//right
  static const r10 = EdgeInsets.only(right: 16);
  static const r20 = EdgeInsets.only(right: 20);

//vertical
  static const v16 = EdgeInsets.symmetric(vertical: 16);
  static const v12 = EdgeInsets.symmetric(vertical: 12);

//horizontal
  static const h16 = EdgeInsets.symmetric(horizontal: 16);
  static const h30 = EdgeInsets.symmetric(horizontal: 30);
  static const h24 = EdgeInsets.symmetric(horizontal: 24);
  static const h12 = EdgeInsets.symmetric(horizontal: 12);

  // top left right bottom
  static const tlr24b16 =
      EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 16);
  static const tlr24 = EdgeInsets.only(top: 24, left: 24, right: 24);
  static const t24lr16b16 =
      EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 16);
  static const tlr16b12 =
      EdgeInsets.only(top: 16, left: 12, right: 12, bottom: 16);
}
