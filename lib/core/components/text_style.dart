import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Estiloso {
  static textStyle({
    double size = 14,
    color,
    fontF = 'Mark Pro',
    fontW = FontWeight.normal,
    fontS = FontStyle.normal,
    double h = 1,
  }) {
    return TextStyle(
      fontSize: size,
      color: color ?? ColorConst.midnight,
      fontFamily: fontF,
      fontWeight: fontW,
      fontStyle: fontS,
      height: h,
    );
  }
}
