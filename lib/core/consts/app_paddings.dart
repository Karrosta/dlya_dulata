import 'package:flutter/cupertino.dart';

abstract class AppPaddings {
  // all
  static const EdgeInsets all18 = EdgeInsets.all(18);
  // vertical
  static const EdgeInsets v16 = EdgeInsets.symmetric(vertical: 16);
  static const EdgeInsets v18 = EdgeInsets.symmetric(vertical: 18);

  static const EdgeInsets h16v8 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 8);

  static const EdgeInsets r15 = EdgeInsets.only(right: 15);
  static const EdgeInsets l16 = EdgeInsets.only(left: 16);
}
