
//类名：颜色样式
import 'package:flutter/material.dart';

class ColorStyle {
  static const String COLOR_PRIMARY_VALUE_STRING             = '#24292E';
  static const int    COLOR_PRIMARY_VALUE             = 0xFF24292E;
  static const String COLOR_PRIMARY_LIGHT_VALUE_STRING             = '#42464b';
  static const int    COLOR_PRIMARY_LIGHT_VALUE             = 0xFF42464b;
  static const String COLOR_PRIMARY_DARK_VALUE_STRING             = '#121917';
  static const int    COLOR_PRIMARY_DARK_VALUE             = 0xFF121917;

  //提示框的颜色
  static const Color COLOR_COMMON_PROMPT_FLUSH_BAR_BACKGROUND = Colors.lightGreen;
  //提示框的阴影颜色
  static const Color COLOR_COMMON_PROMPT_FLUSH_BAR_SHADOW = Colors.red;
  //提示框的停留时长
  static const Duration COLOR_COMMON_PROMPT_FLUSH_BAR_DURATION = Duration(seconds: 3);

  //登录页面背景色
  static const Color COLOR_WIDGET_LOGIN_BACKGROUND = Colors.black26;
  //登录的text输入框填出颜色
  static const Color COLOR_WIDGET_LOGIN_FORM   = Colors.teal;
  //登录的text输入框填出颜色
  static const Color COLOR_WIDGET_LOGIN_FORM_TEXT_FILL   = Colors.black12;
  //登录组件按钮阴影的颜色
  static const Color COLOR_WIDGET_LOGIN_FORM_BUTTON_SHADOW   = Colors.green;
  //登录组件按钮的颜色
  static const Color COLOR_WIDGET_LOGIN_FORM_BUTTON   = COLOR_WIDGET_LOGIN_FORM;
  //登录组件按钮文字的颜色
  static const Color COLOR_WIDGET_LOGIN_FORM_BUTTON_TEXT   = Colors.white;
  //登录组件按钮闪过的颜色
  static const Color COLOR_WIDGET_LOGIN_FORM_BUTTON_SPLASH = Colors.cyanAccent;

  //加载中组件的颜色
  static const Color COLOR_WIDGET_LOADING_INDICATOR   = Colors.grey;
  //个人设置组件的头部渐变颜色开始
  static const Color COLOR_WIDGET_PROFILE_HEADER_GRADIENT_BEGIN = Colors.redAccent;
  //个人设置组件的头部渐变颜色结束
  static const Color COLOR_WIDGET_PROFILE_HEADER_GRADIENT_END = Colors.yellow;




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

  static const num CONTEXT_LETTER_SPACING = 0.3;

  static const TextStyle CONTEXT_MIN = TextStyle(
    color: Color(ColorStyle.COLOR_CONTEXT_WHITE),
    fontSize: CONTEXT_MIN_SIZE
  );

  //登录页面的字体样式
  static const TextStyle CONTEXT_WIDGET_LOGIN = TextStyle(
      color: ColorStyle.COLOR_WIDGET_LOGIN_FORM_BUTTON_TEXT,
      fontSize: CONTEXT_NORMAL_SIZE,
      fontWeight: FontWeight.bold,
      letterSpacing: CONTEXT_LETTER_SPACING
  );
}


//类名：字体样式
class FontStyle {
  static const String FONT_FAMILY = 'wxcIconFont';
}

//类名：图标样式
class IconStyle {
  static const IconData ICON_HOME = const IconData(0xe624, fontFamily: FontStyle.FONT_FAMILY);
  static const IconData ICON_MORE = const IconData(0xe62C, fontFamily: FontStyle.FONT_FAMILY);
  static const IconData ICON_SEARCH = const IconData(0xe61c, fontFamily: FontStyle.FONT_FAMILY);


  //登录的用户名图标
  static const IconData ICON_LOGIN_USER = Icons.account_box;
  //登录的密码图标
  static const IconData ICON_LOGIN_PASSWORD = Icons.lock;

}

//类名：图像样式
class ImageStyle {
  //logo图片
  static const String IMAGE_LOGO = 'assets/images/logo.png';
  //默认图片
  static const String IMAGE_DEFAULT = 'assets/images/bg.jpg';
  //背景图片
  static const String IMAGE_BACKGROUND = 'assets/images/background.png';
  //默认头像图片
  static const String IMAGE_AVATAR = 'assets/images/avatar.png';
}