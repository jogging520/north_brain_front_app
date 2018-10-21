
//类名：颜色样式
import 'package:flutter/material.dart';

class ColorStyle {
  static const String COLOR_PRIMARY_VALUE_STRING             = '#24292E';
  static const int    COLOR_PRIMARY_VALUE             = 0xFF24292E;
  static const String COLOR_PRIMARY_LIGHT_VALUE_STRING             = '#42464b';
  static const int    COLOR_PRIMARY_LIGHT_VALUE             = 0xFF42464b;
  static const String COLOR_PRIMARY_DARK_VALUE_STRING             = '#121917';
  static const int    COLOR_PRIMARY_DARK_VALUE             = 0xFF121917;

  static const int COLOR_PRIMARY_WHITE = 0xFFFFFFFF;


  static const int COLOR_CONTEXT_WHITE = COLOR_PRIMARY_WHITE;



  static const MaterialColor COLOR_PRIMARY_SWATCH = const MaterialColor(
      COLOR_PRIMARY_VALUE,
      const <int, Color>{
        50: const Color(COLOR_PRIMARY_LIGHT_VALUE),
        100: const Color(COLOR_PRIMARY_LIGHT_VALUE),
        200: const Color(COLOR_PRIMARY_LIGHT_VALUE),
        300: const Color(COLOR_PRIMARY_LIGHT_VALUE),
        400: const Color(COLOR_PRIMARY_LIGHT_VALUE),
        500: const Color(COLOR_PRIMARY_VALUE),
        600: const Color(COLOR_PRIMARY_DARK_VALUE),
        700: const Color(COLOR_PRIMARY_DARK_VALUE),
        800: const Color(COLOR_PRIMARY_DARK_VALUE),
        900: const Color(COLOR_PRIMARY_DARK_VALUE)
      });
}


//类名：文本样式
class ContextStyle {
  static const num CONTEXT_LARGE_SIZE       = 30.0;
  static const num CONTEXT_BIG_SIZE       = 23.0;
  static const num CONTEXT_NORMAL_SIZE       = 18.0;
  static const num CONTEXT_MIDDLE_SIZE       = 16.0;
  static const num CONTEXT_SMALL_SIZE       = 14.0;
  static const num CONTEXT_MIN_SIZE       = 12.0;

  static const TextStyle CONTEXT_MIN = TextStyle(
    color: Color(ColorStyle.COLOR_CONTEXT_WHITE),
    fontSize: CONTEXT_MIN_SIZE
  );

}


//类名：字体样式
class FontStyle {
  static const String FONT_FAMILY = 'wxcIconFont';
}

//类名：图标样式
class IconStyle {
  static const String ICON_DEFAULT_USER = 'asset/images/logo.png';
  static const String ICON_DEFAULT_IMAGE = 'asset/images/default_img.png';

  static const IconData ICON_HOME = const IconData(0xe624, fontFamily: FontStyle.FONT_FAMILY);
  static const IconData ICON_MORE = const IconData(0xe62C, fontFamily: FontStyle.FONT_FAMILY);
  static const IconData ICON_SEARCH = const IconData(0xe61c, fontFamily: FontStyle.FONT_FAMILY);


  static const IconData ICON_LOGIN_USER = const IconData(0xe666, fontFamily: FontStyle.FONT_FAMILY);
  static const IconData ICON_LOGIN_PASSWORD = const IconData(0xe610, fontFamily: FontStyle.FONT_FAMILY);

}