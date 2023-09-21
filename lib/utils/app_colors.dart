import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColors {
  static const color_white = Color(0xFFFFFFFF);
  static const color_black = Color(0xFF000000);
  static const dark_blue = Color(0xFF130F26);
  static const grey_blue = Color(0xFF324A50);
  static const pink = Color(0xFFE41D54);
  static const grey = Color(0xFF666666);
  static const light_black = Color(0xFF222222);
  static const very_lightBlack = Color(0xFF252525);
  static const dark_pink = Color(0xFFD80566);
  static const light_grey = Color(0xFF959595);
  static const divider_color = Color(0xFFE7E7E7);


  static const pinkGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [AppColors.pink, AppColors.dark_pink],
  );

}