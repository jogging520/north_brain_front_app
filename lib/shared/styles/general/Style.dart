
//类名：颜色样式
import 'package:flutter/material.dart';

class ColorStyle {

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
  static const Color COLOR_WIDGET_LOGIN_FORM_BUTTON   = Colors.orange;
  //登录组件按钮文字的颜色
  static const Color COLOR_WIDGET_LOGIN_FORM_BUTTON_TEXT   = Colors.white;
  //登录组件按钮闪过的颜色
  static const Color COLOR_WIDGET_LOGIN_FORM_BUTTON_SPLASH = Colors.cyanAccent;

  //加载中组件的颜色
  static const Color COLOR_WIDGET_LOADING_INDICATOR   = Colors.grey;

  //个人设置组件的头部渐变颜色开始
  static const Color COLOR_WIDGET_BOTTOM_TITLE = Colors.teal;
  //个人设置组件的头部渐变颜色结束
  static const Color COLOR_WIDGET_BOTTOM_TITLE_SELECTED = Colors.redAccent;


  static const int COLOR_PRIMARY_WHITE = 0xFFFFFFFF;


  static const int COLOR_CONTEXT_WHITE = COLOR_PRIMARY_WHITE;

  final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.purple,
    brightness: Brightness.light,
    accentColor: Colors.purpleAccent[100],
    primaryColor: Colors.white,
    primaryColorLight: Colors.purple[700],
    textSelectionHandleColor: Colors.purple[700],
    dividerColor: Colors.grey[200],
    bottomAppBarColor: Colors.grey[200],
    buttonColor: Colors.purple[700],
    iconTheme: IconThemeData(color: Colors.white),
    primaryIconTheme: IconThemeData(color: Colors.black),
    accentIconTheme: IconThemeData(color: Colors.purple[700]),
    disabledColor: Colors.grey[500],
    cardColor: Colors.grey[200]
  );

  final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.purple,
    brightness: Brightness.dark,
    accentColor: Colors.deepPurpleAccent[100],
    primaryColor: Color.fromRGBO(50, 50, 57, 1.0),
    primaryColorLight: Colors.deepPurpleAccent[100],
    textSelectionHandleColor: Colors.deepPurpleAccent[100],
    buttonColor: Colors.deepPurpleAccent[100],
    iconTheme: IconThemeData(color: Colors.white),
    accentIconTheme: IconThemeData(color: Colors.deepPurpleAccent[100]),
    cardColor: Color.fromRGBO(55, 55, 55, 1.0),
    dividerColor: Color.fromRGBO(60, 60, 60, 1.0),
    bottomAppBarColor: Colors.black26,
    fontFamily: 'wxcIconFont'
  );
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

  //底部tab的字体样式
  static const TextStyle CONTEXT_WIDGET_BOTTOM = TextStyle(
      color: ColorStyle.COLOR_WIDGET_BOTTOM_TITLE,
      fontSize: CONTEXT_SMALL_SIZE,
      fontWeight: FontWeight.bold,
      letterSpacing: CONTEXT_LETTER_SPACING
  );

  //底部tab选中的字体样式
  static const TextStyle CONTEXT_WIDGET_BOTTOM_SELECTED = TextStyle(
      color: ColorStyle.COLOR_WIDGET_BOTTOM_TITLE_SELECTED,
      fontSize: CONTEXT_SMALL_SIZE,
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
  //登录等待图片
  static const String IMAGE_SPLASH = 'assets/images/splash.jpg';
  //背景图片
  static const String IMAGE_BACKGROUND = 'assets/images/background.png';
  //默认头像图片
  static const String IMAGE_AVATAR = 'assets/images/avatar.png';
  //底部导航栏首页图标
  static const String IMAGE_BOTTOM_NAVIGATOR_HOME = 'assets/images/home.png';
  //底部导航栏首页选中图标
  static const String IMAGE_BOTTOM_NAVIGATOR_HOME_SELECTED = 'assets/images/home_selected.png';
  //底部导航栏交易图标
  static const String IMAGE_BOTTOM_NAVIGATOR_TRADE = 'assets/images/trade.png';
  //底部导航栏交易选中图标
  static const String IMAGE_BOTTOM_NAVIGATOR_TRADE_SELECTED = 'assets/images/trade_selected.png';
  //底部导航栏位置图标
  static const String IMAGE_BOTTOM_NAVIGATOR_STATION = 'assets/images/location.png';
  //底部导航栏位置选中图标
  static const String IMAGE_BOTTOM_NAVIGATOR_STATION_SELECTED = 'assets/images/location_selected.png';
  //底部导航栏设置图标
  static const String IMAGE_BOTTOM_NAVIGATOR_PROFILE = 'assets/images/profile.png';
  //底部导航栏设置选中图标
  static const String IMAGE_BOTTOM_NAVIGATOR_PROFILE_SELECTED = 'assets/images/profile_selected.png';

  //交易图片
  static const String IMAGE_TRADE = 'assets/images/blz.png';
  static const String IMAGE_IMG1 = 'assets/images/img1.jpg';
  static const String IMAGE_IMG2 = 'assets/images/img2.jpg';
  static const String IMAGE_IMG3 = 'assets/images/img3.jpg';
  static const String IMAGE_IMG4 = 'assets/images/img4.jpg';
  static const String IMAGE_IMG5 = 'assets/images/img5.png';
}